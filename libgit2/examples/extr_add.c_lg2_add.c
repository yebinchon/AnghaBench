
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct print_payload {int options; int * repo; int member_0; } ;
struct TYPE_5__ {int member_0; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_repository ;
typedef int * git_index_matched_path_cb ;
typedef int git_index ;


 int SKIP ;
 int UPDATE ;
 int VERBOSE ;
 int check_lg2 (int ,char*,int *) ;
 int git_index_add_all (int *,TYPE_1__*,int ,int *,struct print_payload*) ;
 int git_index_free (int *) ;
 int git_index_update_all (int *,TYPE_1__*,int *,struct print_payload*) ;
 int git_index_write (int *) ;
 int git_repository_index (int **,int *) ;
 int init_array (TYPE_1__*,int,char**) ;
 int parse_opts (int*,int*,int,char**) ;
 int print_matched_cb ;

int lg2_add(git_repository *repo, int argc, char** argv)
{
 git_index_matched_path_cb matched_cb = ((void*)0);
 git_index *index;
 git_strarray array = {0};
 int options = 0, count = 0;
 struct print_payload payload = {0};

 parse_opts(&options, &count, argc, argv);
 init_array(&array, argc-count, argv+count);

 check_lg2(git_repository_index(&index, repo), "Could not open repository index", ((void*)0));


 if ((options & VERBOSE) || (options & SKIP)) {
  matched_cb = &print_matched_cb;
 }


 payload.options = options;
 payload.repo = repo;

 if (options & UPDATE) {
  git_index_update_all(index, &array, matched_cb, &payload);
 } else {
  git_index_add_all(index, &array, 0, matched_cb, &payload);
 }


 git_index_write(index);
 git_index_free(index);

 return 0;
}
