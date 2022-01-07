
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t heads_count; char** heads; size_t annotated_count; int ** annotated; } ;
typedef TYPE_1__ merge_options ;
typedef int git_repository ;
typedef int git_annotated_commit ;
struct TYPE_5__ {char* message; } ;


 int ** calloc (size_t,int) ;
 int fprintf (int ,char*,...) ;
 int free (int **) ;
 TYPE_3__* git_error_last () ;
 int resolve_refish (int **,int *,char*) ;
 int stderr ;

__attribute__((used)) static int resolve_heads(git_repository *repo, merge_options *opts)
{
 git_annotated_commit **annotated = calloc(opts->heads_count, sizeof(git_annotated_commit *));
 size_t annotated_count = 0, i;
 int err = 0;

 for (i = 0; i < opts->heads_count; i++) {
  err = resolve_refish(&annotated[annotated_count++], repo, opts->heads[i]);
  if (err != 0) {
   fprintf(stderr, "failed to resolve refish %s: %s\n", opts->heads[i], git_error_last()->message);
   annotated_count--;
   continue;
  }
 }

 if (annotated_count != opts->heads_count) {
  fprintf(stderr, "unable to parse some refish\n");
  free(annotated);
  return -1;
 }

 opts->annotated = annotated;
 opts->annotated_count = annotated_count;
 return 0;
}
