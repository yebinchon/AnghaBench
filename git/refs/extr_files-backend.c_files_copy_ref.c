
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;


 int files_copy_or_rename_ref (struct ref_store*,char const*,char const*,char const*,int) ;

__attribute__((used)) static int files_copy_ref(struct ref_store *ref_store,
       const char *oldrefname, const char *newrefname,
       const char *logmsg)
{
 return files_copy_or_rename_ref(ref_store, oldrefname,
     newrefname, logmsg, 1);
}
