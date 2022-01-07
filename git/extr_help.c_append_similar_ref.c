
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct similar_ref_cb {int similar_refs; int base_ref; } ;
struct object_id {int dummy; } ;


 int shorten_unambiguous_ref (char const*,int) ;
 scalar_t__ starts_with (char const*,char*) ;
 int strcmp (char*,int ) ;
 int string_list_append_nodup (int ,int ) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static int append_similar_ref(const char *refname, const struct object_id *oid,
         int flags, void *cb_data)
{
 struct similar_ref_cb *cb = (struct similar_ref_cb *)(cb_data);
 char *branch = strrchr(refname, '/') + 1;


 if (starts_with(refname, "refs/remotes/") &&
     !strcmp(branch, cb->base_ref))
  string_list_append_nodup(cb->similar_refs,
      shorten_unambiguous_ref(refname, 1));
 return 0;
}
