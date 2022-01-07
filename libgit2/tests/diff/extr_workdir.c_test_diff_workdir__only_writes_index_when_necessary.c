
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stat {scalar_t__ st_mtime; } ;
struct p_timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_object ;
typedef int git_index ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ git_diff_options ;
typedef int git_diff ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_DIFF_INCLUDE_UNTRACKED ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int GIT_DIFF_UPDATE_INDEX ;
 int GIT_OBJECT_COMMIT ;
 int GIT_RESET_HARD ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int cl_must_pass (int ) ;
 int g_repo ;
 int git_buf_dispose (int *) ;
 int git_buf_sets (int *,char*) ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int ,int *,TYPE_1__*) ;
 int git_index_checksum (int *) ;
 int git_index_free (int *) ;
 int git_object_free (int *) ;
 int git_oid_cpy (int *,int ) ;
 int git_oid_equal (int *,int *) ;
 int git_path_direach (int *,int ,int ,int *) ;
 int git_reference_free (int *) ;
 int git_reference_peel (int **,int *,int ) ;
 int git_repository_head (int **,int ) ;
 int git_repository_index (int **,int ) ;
 int git_reset (int ,int *,int ,int *) ;
 int p_stat (char*,struct stat*) ;
 int p_utimes (char*,struct p_timeval*) ;
 int touch_file ;

void test_diff_workdir__only_writes_index_when_necessary(void)
{
 git_index *index;
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_diff *diff = ((void*)0);
 git_reference *head;
 git_object *head_object;
 git_oid initial, first, second;
 git_buf path = GIT_BUF_INIT;
 struct stat st;
 struct p_timeval times[2];

 opts.flags |= GIT_DIFF_INCLUDE_UNTRACKED | GIT_DIFF_UPDATE_INDEX;

 g_repo = cl_git_sandbox_init("status");

 cl_git_pass(git_repository_index(&index, g_repo));
 cl_git_pass(git_repository_head(&head, g_repo));
 cl_git_pass(git_reference_peel(&head_object, head, GIT_OBJECT_COMMIT));

 cl_git_pass(git_reset(g_repo, head_object, GIT_RESET_HARD, ((void*)0)));

 git_oid_cpy(&initial, git_index_checksum(index));


 cl_must_pass(p_stat("status/.git/index", &st));

 times[0].tv_sec = st.st_mtime + 5;
 times[0].tv_usec = 0;
 times[1].tv_sec = st.st_mtime + 5;
 times[1].tv_usec = 0;

 cl_must_pass(p_utimes("status/.git/index", times));


 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));
 git_diff_free(diff);

 git_oid_cpy(&first, git_index_checksum(index));
 cl_assert(!git_oid_equal(&initial, &first));


 cl_git_pass(git_buf_sets(&path, "status"));
 cl_git_pass(git_path_direach(&path, 0, touch_file, ((void*)0)));

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));
 git_diff_free(diff);


 git_oid_cpy(&second, git_index_checksum(index));
 cl_assert(!git_oid_equal(&first, &second));

 git_buf_dispose(&path);
 git_object_free(head_object);
 git_reference_free(head);
 git_index_free(index);
}
