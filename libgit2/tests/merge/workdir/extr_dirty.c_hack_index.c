
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef void* time_t ;
struct stat {scalar_t__ st_size; int st_gid; int st_uid; int st_ino; int st_dev; scalar_t__ st_mtime_nsec; scalar_t__ st_ctime_nsec; scalar_t__ st_mtime; scalar_t__ st_ctime; } ;
struct p_timeval {scalar_t__ tv_usec; void* tv_sec; } ;
typedef void* int32_t ;
struct TYPE_11__ {scalar_t__ nanoseconds; void* seconds; } ;
struct TYPE_10__ {scalar_t__ nanoseconds; void* seconds; } ;
struct TYPE_12__ {scalar_t__ file_size; int gid; int uid; int ino; int dev; TYPE_2__ mtime; TYPE_1__ ctime; } ;
typedef TYPE_3__ git_index_entry ;
struct TYPE_13__ {int ptr; } ;
typedef TYPE_4__ git_buf ;


 TYPE_4__ GIT_BUF_INIT ;
 int TEST_REPO_PATH ;
 int cl_assert (TYPE_3__*) ;
 int cl_git_pass (int ) ;
 int git_buf_clear (TYPE_4__*) ;
 int git_buf_dispose (TYPE_4__*) ;
 int git_buf_printf (TYPE_4__*,char*,int ,char*) ;
 scalar_t__ git_index_get_bypath (int ,char*,int ) ;
 int p_stat (int ,struct stat*) ;
 int p_utimes (int ,struct p_timeval*) ;
 int repo_index ;
 void* time (int *) ;

__attribute__((used)) static void hack_index(char *files[])
{
 char *filename;
 struct stat statbuf;
 git_buf path = GIT_BUF_INIT;
 git_index_entry *entry;
 struct p_timeval times[2];
 time_t now;
 size_t i;
 now = time(((void*)0));
 times[0].tv_sec = now - 5;
 times[0].tv_usec = 0;
 times[1].tv_sec = now - 5;
 times[1].tv_usec = 0;

 for (i = 0, filename = files[i]; filename; filename = files[++i]) {
  git_buf_clear(&path);

  cl_assert(entry = (git_index_entry *)
   git_index_get_bypath(repo_index, filename, 0));

  cl_git_pass(git_buf_printf(&path, "%s/%s", TEST_REPO_PATH, filename));
  cl_git_pass(p_utimes(path.ptr, times));
  cl_git_pass(p_stat(path.ptr, &statbuf));

  entry->ctime.seconds = (int32_t)statbuf.st_ctime;
  entry->mtime.seconds = (int32_t)statbuf.st_mtime;




  entry->ctime.nanoseconds = 0;
  entry->mtime.nanoseconds = 0;

  entry->dev = statbuf.st_dev;
  entry->ino = statbuf.st_ino;
  entry->uid = statbuf.st_uid;
  entry->gid = statbuf.st_gid;
  entry->file_size = (uint32_t)statbuf.st_size;
 }

 git_buf_dispose(&path);
}
