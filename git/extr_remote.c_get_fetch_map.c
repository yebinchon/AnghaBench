
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct refspec_item {char* src; scalar_t__ force; int dst; scalar_t__ exact_sha1; scalar_t__ pattern; } ;
struct ref {int exact_oid; int force; struct ref* next; struct ref* peer_ref; int name; int old_oid; } ;


 int _ (char*) ;
 struct ref* alloc_ref (char const*) ;
 scalar_t__ check_refname_format (int ,int ) ;
 int die (int ,char const*) ;
 int error (int ,int ) ;
 int free (struct ref*) ;
 struct ref* get_expanded_map (struct ref const*,struct refspec_item const*) ;
 struct ref* get_local_ref (int ) ;
 int get_oid_hex (char const*,int *) ;
 struct ref* get_remote_ref (struct ref const*,char const*) ;
 int starts_with (int ,char*) ;
 int tail_link_ref (struct ref*,struct ref***) ;

int get_fetch_map(const struct ref *remote_refs,
    const struct refspec_item *refspec,
    struct ref ***tail,
    int missing_ok)
{
 struct ref *ref_map, **rmp;

 if (refspec->pattern) {
  ref_map = get_expanded_map(remote_refs, refspec);
 } else {
  const char *name = refspec->src[0] ? refspec->src : "HEAD";

  if (refspec->exact_sha1) {
   ref_map = alloc_ref(name);
   get_oid_hex(name, &ref_map->old_oid);
   ref_map->exact_oid = 1;
  } else {
   ref_map = get_remote_ref(remote_refs, name);
  }
  if (!missing_ok && !ref_map)
   die(_("couldn't find remote ref %s"), name);
  if (ref_map) {
   ref_map->peer_ref = get_local_ref(refspec->dst);
   if (ref_map->peer_ref && refspec->force)
    ref_map->peer_ref->force = 1;
  }
 }

 for (rmp = &ref_map; *rmp; ) {
  if ((*rmp)->peer_ref) {
   if (!starts_with((*rmp)->peer_ref->name, "refs/") ||
       check_refname_format((*rmp)->peer_ref->name, 0)) {
    struct ref *ignore = *rmp;
    error(_("* Ignoring funny ref '%s' locally"),
          (*rmp)->peer_ref->name);
    *rmp = (*rmp)->next;
    free(ignore->peer_ref);
    free(ignore);
    continue;
   }
  }
  rmp = &((*rmp)->next);
 }

 if (ref_map)
  tail_link_ref(ref_map, tail);

 return 0;
}
