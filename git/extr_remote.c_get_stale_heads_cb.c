
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct stale_heads_info {int stale_refs_tail; int ref_names; int rs; } ;
struct refspec_item {char* dst; } ;
struct ref {int new_oid; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int string; } ;


 int REF_ISSYMREF ;
 struct string_list STRING_LIST_INIT_DUP ;
 struct ref* make_linked_ref (char const*,int *) ;
 int memset (struct refspec_item*,int ,int) ;
 int oidcpy (int *,struct object_id const*) ;
 int query_refspecs_multiple (int ,struct refspec_item*,struct string_list*) ;
 int string_list_clear (struct string_list*,int ) ;
 scalar_t__ string_list_has_string (int ,int ) ;

__attribute__((used)) static int get_stale_heads_cb(const char *refname, const struct object_id *oid,
         int flags, void *cb_data)
{
 struct stale_heads_info *info = cb_data;
 struct string_list matches = STRING_LIST_INIT_DUP;
 struct refspec_item query;
 int i, stale = 1;
 memset(&query, 0, sizeof(struct refspec_item));
 query.dst = (char *)refname;

 query_refspecs_multiple(info->rs, &query, &matches);
 if (matches.nr == 0)
  goto clean_exit;
 if (flags & REF_ISSYMREF)
  goto clean_exit;

 for (i = 0; stale && i < matches.nr; i++)
  if (string_list_has_string(info->ref_names, matches.items[i].string))
   stale = 0;

 if (stale) {
  struct ref *ref = make_linked_ref(refname, &info->stale_refs_tail);
  oidcpy(&ref->new_oid, oid);
 }

clean_exit:
 string_list_clear(&matches, 0);
 return 0;
}
