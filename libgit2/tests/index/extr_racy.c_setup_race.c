
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct stat {scalar_t__ st_mtime_nsec; scalar_t__ st_mtime; } ;
typedef void* int32_t ;
struct TYPE_8__ {void* nanoseconds; void* seconds; } ;
struct TYPE_9__ {TYPE_1__ mtime; } ;
typedef TYPE_2__ git_index_entry ;
typedef int git_index ;
struct TYPE_10__ {int ptr; } ;
typedef TYPE_3__ git_buf ;


 TYPE_3__ GIT_BUF_INIT ;
 int cl_assert (TYPE_2__*) ;
 int cl_git_mkfile (int ,char*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_dispose (TYPE_3__*) ;
 int git_buf_joinpath (TYPE_3__*,int ,char*) ;
 int git_index_add_bypath (int *,char*) ;
 scalar_t__ git_index_get_bypath (int *,char*,int ) ;
 int git_index_write (int *) ;
 int git_repository_index__weakptr (int **,int ) ;
 int git_repository_workdir (int ) ;
 int p_stat (int ,struct stat*) ;

__attribute__((used)) static void setup_race(void)
{
 git_buf path = GIT_BUF_INIT;
 git_index *index;
 git_index_entry *entry;
 struct stat st;


 cl_git_pass(git_repository_index__weakptr(&index, g_repo));
 cl_git_pass(git_index_write(index));

 cl_git_pass(git_buf_joinpath(&path, git_repository_workdir(g_repo), "A"));

 cl_git_mkfile(path.ptr, "A");
 cl_git_pass(git_index_add_bypath(index, "A"));

 cl_git_mkfile(path.ptr, "B");
 cl_git_pass(git_index_write(index));

 cl_git_mkfile(path.ptr, "");

 cl_git_pass(p_stat(path.ptr, &st));
 cl_assert(entry = (git_index_entry *)git_index_get_bypath(index, "A", 0));


 entry->mtime.seconds = (int32_t)st.st_mtime;
 entry->mtime.nanoseconds = (int32_t)st.st_mtime_nsec;

 git_buf_dispose(&path);
}
