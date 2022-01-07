
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list_item {struct ref* util; } ;
struct string_list {int nr; } ;
struct refspec_item {int force; scalar_t__ matching; } ;
struct refspec {int nr; } ;
struct ref {scalar_t__ peer_ref; struct ref* next; int force; int name; int new_oid; } ;
struct TYPE_2__ {struct ref* util; } ;


 int FROM_DST ;
 int FROM_SRC ;
 int MATCH_REFS_ALL ;
 int MATCH_REFS_FOLLOW_TAGS ;
 int MATCH_REFS_MIRROR ;
 int MATCH_REFS_PRUNE ;
 struct string_list STRING_LIST_INIT_NODUP ;
 int add_missing_tags (struct ref*,struct ref**,struct ref***) ;
 scalar_t__ alloc_delete_ref () ;
 scalar_t__ copy_ref (struct ref*) ;
 int free (char*) ;
 char* get_ref_match (struct refspec*,struct ref*,int,int ,struct refspec_item const**) ;
 struct ref* make_linked_ref (char*,struct ref***) ;
 int match_explicit_refs (struct ref*,struct ref*,struct ref***,struct refspec*) ;
 int oidcpy (int *,int *) ;
 int prepare_ref_index (struct string_list*,struct ref*) ;
 int refspec_append (struct refspec*,char*) ;
 int string_list_clear (struct string_list*,int ) ;
 int string_list_has_string (struct string_list*,char*) ;
 TYPE_1__* string_list_insert (struct string_list*,int ) ;
 struct string_list_item* string_list_lookup (struct string_list*,char*) ;
 struct ref** tail_ref (struct ref**) ;

int match_push_refs(struct ref *src, struct ref **dst,
      struct refspec *rs, int flags)
{
 int send_all = flags & MATCH_REFS_ALL;
 int send_mirror = flags & MATCH_REFS_MIRROR;
 int send_prune = flags & MATCH_REFS_PRUNE;
 int errs;
 struct ref *ref, **dst_tail = tail_ref(dst);
 struct string_list dst_ref_index = STRING_LIST_INIT_NODUP;


 if (!rs->nr)
  refspec_append(rs, ":");

 errs = match_explicit_refs(src, *dst, &dst_tail, rs);


 for (ref = src; ref; ref = ref->next) {
  struct string_list_item *dst_item;
  struct ref *dst_peer;
  const struct refspec_item *pat = ((void*)0);
  char *dst_name;

  dst_name = get_ref_match(rs, ref, send_mirror, FROM_SRC, &pat);
  if (!dst_name)
   continue;

  if (!dst_ref_index.nr)
   prepare_ref_index(&dst_ref_index, *dst);

  dst_item = string_list_lookup(&dst_ref_index, dst_name);
  dst_peer = dst_item ? dst_item->util : ((void*)0);
  if (dst_peer) {
   if (dst_peer->peer_ref)

    goto free_name;
  } else {
   if (pat->matching && !(send_all || send_mirror))





    goto free_name;


   dst_peer = make_linked_ref(dst_name, &dst_tail);
   oidcpy(&dst_peer->new_oid, &ref->new_oid);
   string_list_insert(&dst_ref_index,
    dst_peer->name)->util = dst_peer;
  }
  dst_peer->peer_ref = copy_ref(ref);
  dst_peer->force = pat->force;
 free_name:
  free(dst_name);
 }

 string_list_clear(&dst_ref_index, 0);

 if (flags & MATCH_REFS_FOLLOW_TAGS)
  add_missing_tags(src, dst, &dst_tail);

 if (send_prune) {
  struct string_list src_ref_index = STRING_LIST_INIT_NODUP;

  for (ref = *dst; ref; ref = ref->next) {
   char *src_name;

   if (ref->peer_ref)

    continue;

   src_name = get_ref_match(rs, ref, send_mirror, FROM_DST, ((void*)0));
   if (src_name) {
    if (!src_ref_index.nr)
     prepare_ref_index(&src_ref_index, src);
    if (!string_list_has_string(&src_ref_index,
         src_name))
     ref->peer_ref = alloc_delete_ref();
    free(src_name);
   }
  }
  string_list_clear(&src_ref_index, 0);
 }

 if (errs)
  return -1;
 return 0;
}
