
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct p_timeval {scalar_t__ tv_usec; int tv_sec; } ;


 int errno ;
 int git_path_set_error (int ,char const*,char*) ;
 int p_utimes (char const*,struct p_timeval*) ;
 int time (int *) ;

int git_futils_touch(const char *path, time_t *when)
{
 struct p_timeval times[2];
 int ret;

 times[0].tv_sec = times[1].tv_sec = when ? *when : time(((void*)0));
 times[0].tv_usec = times[1].tv_usec = 0;

 ret = p_utimes(path, times);

 return (ret < 0) ? git_path_set_error(errno, path, "touch") : 0;
}
