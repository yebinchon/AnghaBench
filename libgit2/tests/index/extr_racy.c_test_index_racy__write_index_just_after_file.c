
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct p_timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_15__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_16__ {TYPE_1__ mtime; } ;
struct TYPE_17__ {TYPE_2__ stamp; } ;
typedef TYPE_3__ git_index ;
typedef int git_diff ;
struct TYPE_18__ {int ptr; } ;
typedef TYPE_4__ git_buf ;


 TYPE_4__ GIT_BUF_INIT ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_mkfile (int ,char*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_dispose (TYPE_4__*) ;
 int git_buf_joinpath (TYPE_4__*,int ,char*) ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int ,TYPE_3__*,int *) ;
 int git_diff_num_deltas (int *) ;
 int git_index_add_bypath (TYPE_3__*,char*) ;
 int git_index_free (TYPE_3__*) ;
 int git_index_path (TYPE_3__*) ;
 int git_index_read (TYPE_3__*,int) ;
 int git_index_write (TYPE_3__*) ;
 int git_repository_index (TYPE_3__**,int ) ;
 int git_repository_workdir (int ) ;
 int p_utimes (int ,struct p_timeval*) ;

void test_index_racy__write_index_just_after_file(void)
{
 git_index *index;
 git_diff *diff;
 git_buf path = GIT_BUF_INIT;
 struct p_timeval times[2];


 cl_git_pass(git_repository_index(&index, g_repo));
 cl_git_pass(git_index_write(index));

 cl_git_pass(git_buf_joinpath(&path, git_repository_workdir(g_repo), "A"));
 cl_git_mkfile(path.ptr, "A");

 times[0].tv_sec = index->stamp.mtime.tv_sec + 1;
 times[0].tv_usec = index->stamp.mtime.tv_nsec / 1000;
 times[1].tv_sec = index->stamp.mtime.tv_sec + 1;
 times[1].tv_usec = index->stamp.mtime.tv_nsec / 1000;
 cl_git_pass(p_utimes(path.ptr, times));






 cl_git_pass(git_index_add_bypath(index, "A"));
 cl_git_pass(git_index_write(index));

 cl_git_mkfile(path.ptr, "B");




 times[0].tv_sec = index->stamp.mtime.tv_sec + 2;
 times[0].tv_usec = index->stamp.mtime.tv_nsec / 1000;
 times[1].tv_sec = index->stamp.mtime.tv_sec + 2;
 times[0].tv_usec = index->stamp.mtime.tv_nsec / 1000;

 cl_git_pass(p_utimes(git_index_path(index), times));
 cl_git_pass(p_utimes(path.ptr, times));

 cl_git_pass(git_index_read(index, 1));

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, index, ((void*)0)));
 cl_assert_equal_i(1, git_diff_num_deltas(diff));

 git_buf_dispose(&path);
 git_diff_free(diff);
 git_index_free(index);
}
