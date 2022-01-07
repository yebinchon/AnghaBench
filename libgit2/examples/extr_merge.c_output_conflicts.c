
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* path; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index_conflict_iterator ;
typedef int git_index ;


 int GIT_ITEROVER ;
 int check_lg2 (int ,char*,int *) ;
 int fprintf (int ,char*,...) ;
 int git_index_conflict_iterator_free (int *) ;
 int git_index_conflict_iterator_new (int **,int *) ;
 int git_index_conflict_next (TYPE_1__ const**,TYPE_1__ const**,TYPE_1__ const**,int *) ;
 int stderr ;

__attribute__((used)) static void output_conflicts(git_index *index)
{
 git_index_conflict_iterator *conflicts;
 const git_index_entry *ancestor;
 const git_index_entry *our;
 const git_index_entry *their;
 int err = 0;

 check_lg2(git_index_conflict_iterator_new(&conflicts, index), "failed to create conflict iterator", ((void*)0));

 while ((err = git_index_conflict_next(&ancestor, &our, &their, conflicts)) == 0) {
  fprintf(stderr, "conflict: a:%s o:%s t:%s\n",
          ancestor ? ancestor->path : "NULL",
          our->path ? our->path : "NULL",
          their->path ? their->path : "NULL");
 }

 if (err != GIT_ITEROVER) {
  fprintf(stderr, "error iterating conflicts\n");
 }

 git_index_conflict_iterator_free(conflicts);
}
