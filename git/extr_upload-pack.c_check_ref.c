
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int mark_our_ref (char const*,char const*,struct object_id const*) ;
 char* strip_namespace (char const*) ;

__attribute__((used)) static int check_ref(const char *refname_full, const struct object_id *oid,
       int flag, void *cb_data)
{
 const char *refname = strip_namespace(refname_full);

 mark_our_ref(refname, refname_full, oid);
 return 0;
}
