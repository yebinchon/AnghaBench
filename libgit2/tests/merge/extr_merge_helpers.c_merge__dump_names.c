
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ancestor; char* ours; char* theirs; } ;
typedef TYPE_1__ git_index_name_entry ;
typedef int git_index ;


 size_t git_index_name_entrycount (int *) ;
 TYPE_1__* git_index_name_get_byindex (int *,size_t) ;
 int printf (char*,...) ;

void merge__dump_names(git_index *index)
{
 size_t i;
 const git_index_name_entry *conflict_name;

 for (i = 0; i < git_index_name_entrycount(index); i++) {
  conflict_name = git_index_name_get_byindex(index, i);

  printf("%s %s %s\n", conflict_name->ancestor, conflict_name->ours, conflict_name->theirs);
 }
 printf("\n");
}
