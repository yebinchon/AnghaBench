
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {char* string; struct rerere_id* util; } ;
struct string_list {int dummy; } ;
struct rerere_id {int variant; struct rerere_dir* collection; } ;
struct rerere_dir {int* status; int status_nr; } ;
struct index_state {int dummy; } ;


 int RR_HAS_POSTIMAGE ;
 int RR_HAS_PREIMAGE ;
 int _ (char*) ;
 int assign_variant (struct rerere_id*) ;
 int copy_file (char*,char const*,int) ;
 int die_errno (int ,char const*) ;
 int fprintf_ln (int ,int ,char const*) ;
 int free_rerere_id (struct string_list_item*) ;
 int handle_file (struct index_state*,char const*,int *,char*) ;
 scalar_t__ merge (struct index_state*,struct rerere_id*,char const*) ;
 int remove_variant (struct rerere_id*) ;
 scalar_t__ rerere_autoupdate ;
 char* rerere_path (struct rerere_id*,char*) ;
 int stderr ;
 int string_list_insert (struct string_list*,char const*) ;
 scalar_t__ unlink (char const*) ;

__attribute__((used)) static void do_rerere_one_path(struct index_state *istate,
          struct string_list_item *rr_item,
          struct string_list *update)
{
 const char *path = rr_item->string;
 struct rerere_id *id = rr_item->util;
 struct rerere_dir *rr_dir = id->collection;
 int variant;

 variant = id->variant;


 if (variant >= 0) {
  if (!handle_file(istate, path, ((void*)0), ((void*)0))) {
   copy_file(rerere_path(id, "postimage"), path, 0666);
   id->collection->status[variant] |= RR_HAS_POSTIMAGE;
   fprintf_ln(stderr, _("Recorded resolution for '%s'."), path);
   free_rerere_id(rr_item);
   rr_item->util = ((void*)0);
   return;
  }





 }


 for (variant = 0; variant < rr_dir->status_nr; variant++) {
  const int both = RR_HAS_PREIMAGE | RR_HAS_POSTIMAGE;
  struct rerere_id vid = *id;

  if ((rr_dir->status[variant] & both) != both)
   continue;

  vid.variant = variant;
  if (merge(istate, &vid, path))
   continue;





  if (0 <= id->variant && id->variant != variant)
   remove_variant(id);

  if (rerere_autoupdate)
   string_list_insert(update, path);
  else
   fprintf_ln(stderr,
       _("Resolved '%s' using previous resolution."),
       path);
  free_rerere_id(rr_item);
  rr_item->util = ((void*)0);
  return;
 }


 assign_variant(id);

 variant = id->variant;
 handle_file(istate, path, ((void*)0), rerere_path(id, "preimage"));
 if (id->collection->status[variant] & RR_HAS_POSTIMAGE) {
  const char *path = rerere_path(id, "postimage");
  if (unlink(path))
   die_errno(_("cannot unlink stray '%s'"), path);
  id->collection->status[variant] &= ~RR_HAS_POSTIMAGE;
 }
 id->collection->status[variant] |= RR_HAS_PREIMAGE;
 fprintf_ln(stderr, _("Recorded preimage for '%s'"), path);
}
