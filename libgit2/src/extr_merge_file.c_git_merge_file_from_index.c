
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_odb_object ;
typedef int git_odb ;
typedef int git_merge_file_result ;
typedef int git_merge_file_options ;
struct TYPE_6__ {int member_0; } ;
typedef TYPE_1__ git_merge_file_input ;
typedef int git_index_entry ;


 int assert (int ) ;
 int git_merge_file__input_from_index (TYPE_1__*,int **,int *,int const*) ;
 int git_odb_free (int *) ;
 int git_odb_object_free (int *) ;
 int git_repository_odb (int **,int *) ;
 int memset (int *,int,int) ;
 int merge_file__from_inputs (int *,TYPE_1__*,TYPE_1__*,TYPE_1__*,int const*) ;

int git_merge_file_from_index(
 git_merge_file_result *out,
 git_repository *repo,
 const git_index_entry *ancestor,
 const git_index_entry *ours,
 const git_index_entry *theirs,
 const git_merge_file_options *options)
{
 git_merge_file_input *ancestor_ptr = ((void*)0),
  ancestor_input = {0}, our_input = {0}, their_input = {0};
 git_odb *odb = ((void*)0);
 git_odb_object *odb_object[3] = { 0 };
 int error = 0;

 assert(out && repo && ours && theirs);

 memset(out, 0x0, sizeof(git_merge_file_result));

 if ((error = git_repository_odb(&odb, repo)) < 0)
  goto done;

 if (ancestor) {
  if ((error = git_merge_file__input_from_index(
   &ancestor_input, &odb_object[0], odb, ancestor)) < 0)
   goto done;

  ancestor_ptr = &ancestor_input;
 }

 if ((error = git_merge_file__input_from_index(
   &our_input, &odb_object[1], odb, ours)) < 0 ||
  (error = git_merge_file__input_from_index(
   &their_input, &odb_object[2], odb, theirs)) < 0)
  goto done;

 error = merge_file__from_inputs(out,
  ancestor_ptr, &our_input, &their_input, options);

done:
 git_odb_object_free(odb_object[0]);
 git_odb_object_free(odb_object[1]);
 git_odb_object_free(odb_object[2]);
 git_odb_free(odb);

 return error;
}
