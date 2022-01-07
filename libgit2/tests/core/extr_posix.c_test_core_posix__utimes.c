
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct stat {int st_atime; int st_mtime; } ;
struct p_timeval {int tv_sec; scalar_t__ tv_usec; } ;


 int O_RDWR ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_must_pass (int) ;
 int p_close (int) ;
 int p_futimes (int,struct p_timeval*) ;
 int p_open (char*,int ) ;
 int p_stat (char*,struct stat*) ;
 int p_unlink (char*) ;
 int p_utimes (char*,struct p_timeval*) ;
 int time (int *) ;

void test_core_posix__utimes(void)
{
 struct p_timeval times[2];
 struct stat st;
 time_t curtime;
 int fd;


 times[0].tv_sec = 1234567890;
 times[0].tv_usec = 0;
 times[1].tv_sec = 1234567890;
 times[1].tv_usec = 0;

 cl_git_mkfile("foo", "Dummy file.");
 cl_must_pass(p_utimes("foo", times));

 cl_must_pass(p_stat("foo", &st));
 cl_assert_equal_i(1234567890, st.st_atime);
 cl_assert_equal_i(1234567890, st.st_mtime);



 times[0].tv_sec = 1414141414;
 times[0].tv_usec = 0;
 times[1].tv_sec = 1414141414;
 times[1].tv_usec = 0;

 cl_must_pass(fd = p_open("foo", O_RDWR));
 cl_must_pass(p_futimes(fd, times));
 cl_must_pass(p_close(fd));

 cl_must_pass(p_stat("foo", &st));
 cl_assert_equal_i(1414141414, st.st_atime);
 cl_assert_equal_i(1414141414, st.st_mtime);





 cl_must_pass(p_utimes("foo", ((void*)0)));

 curtime = time(((void*)0));
 cl_must_pass(p_stat("foo", &st));
 cl_assert((st.st_atime - curtime) < 5);
 cl_assert((st.st_mtime - curtime) < 5);

 cl_must_pass(p_unlink("foo"));
}
