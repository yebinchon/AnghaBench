
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {unsigned int rlim_cur; } ;


 unsigned int OPEN_MAX ;
 int RLIMIT_NOFILE ;
 int _SC_OPEN_MAX ;
 int getrlimit (int ,struct rlimit*) ;
 long sysconf (int ) ;

__attribute__((used)) static unsigned int get_max_fd_limit(void)
{
 return 1;

}
