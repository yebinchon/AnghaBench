
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct p_timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int cl_must_pass (int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_joinpath (int *,char*,char const*) ;
 int p_lstat (int ,struct stat*) ;
 int p_utimes (int ,struct p_timeval*) ;

__attribute__((used)) static void set_time_wayback(struct stat *out, const char *fn)
{
 git_buf fullpath = GIT_BUF_INIT;
 struct p_timeval old[2];

 old[0].tv_sec = 1234567890;
 old[0].tv_usec = 0;
 old[1].tv_sec = 1234567890;
 old[1].tv_usec = 0;

 git_buf_joinpath(&fullpath, "testrepo.git/objects", fn);

 cl_must_pass(p_utimes(git_buf_cstr(&fullpath), old));
 cl_must_pass(p_lstat(git_buf_cstr(&fullpath), out));
 git_buf_dispose(&fullpath);
}
