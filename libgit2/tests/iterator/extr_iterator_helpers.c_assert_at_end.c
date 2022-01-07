
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_iterator ;
struct TYPE_3__ {char* path; } ;
typedef TYPE_1__ git_index_entry ;


 int GIT_ITEROVER ;
 int cl_git_fail_with (int,int) ;
 int fprintf (int ,char*,char*) ;
 int git_iterator_advance (TYPE_1__ const**,int *) ;
 int stderr ;

__attribute__((used)) static void assert_at_end(git_iterator *i, bool verbose)
{
 const git_index_entry *end;
 int error = git_iterator_advance(&end, i);

 if (verbose && error != GIT_ITEROVER)
  fprintf(stderr, "Expected end of iterator, got '%s'\n", end->path);

 cl_git_fail_with(GIT_ITEROVER, error);
}
