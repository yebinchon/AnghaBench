
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct diff_filespec {int oid; int size; int data; int oid_valid; } ;


 scalar_t__ diff_populate_filespec (struct repository*,struct diff_filespec*,int ) ;
 int hash_object_file (int ,int ,char*,int *) ;
 unsigned int oidhash (int *) ;

__attribute__((used)) static unsigned int hash_filespec(struct repository *r,
      struct diff_filespec *filespec)
{
 if (!filespec->oid_valid) {
  if (diff_populate_filespec(r, filespec, 0))
   return 0;
  hash_object_file(filespec->data, filespec->size, "blob",
     &filespec->oid);
 }
 return oidhash(&filespec->oid);
}
