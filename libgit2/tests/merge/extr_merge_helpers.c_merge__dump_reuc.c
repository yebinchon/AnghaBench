
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* path; int* mode; int * oid; } ;
typedef TYPE_1__ git_index_reuc_entry ;
typedef int git_index ;


 size_t git_index_reuc_entrycount (int *) ;
 TYPE_1__* git_index_reuc_get_byindex (int *,size_t) ;
 char* git_oid_allocfmt (int *) ;
 int printf (char*,...) ;

void merge__dump_reuc(git_index *index)
{
 size_t i;
 const git_index_reuc_entry *reuc;

 printf ("\nREUC:\n");
 for (i = 0; i < git_index_reuc_entrycount(index); i++) {
  reuc = git_index_reuc_get_byindex(index, i);

  printf("%s ", reuc->path);
  printf("%o ", reuc->mode[0]);
  printf("%s\n", git_oid_allocfmt(&reuc->oid[0]));
  printf("          %o ", reuc->mode[1]);
  printf("          %s\n", git_oid_allocfmt(&reuc->oid[1]));
  printf("          %o ", reuc->mode[2]);
  printf("          %s ", git_oid_allocfmt(&reuc->oid[2]));
  printf("\n");
 }
 printf("\n");
}
