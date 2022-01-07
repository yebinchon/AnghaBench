
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct utmp {scalar_t__ ut_type; scalar_t__ ut_time; scalar_t__* ut_user; } ;


 scalar_t__ BOOT_TIME ;
 scalar_t__ USER_PROCESS ;
 int UTMP_FILE ;
 int UV_ENOSYS ;
 int endutent () ;
 struct utmp* getutent () ;
 int setutent () ;
 scalar_t__ time (int *) ;
 int utmpname (int ) ;

int uv_uptime(double* uptime) {
  struct utmp *utmp_buf;
  size_t entries = 0;
  time_t boot_time;

  boot_time = 0;
  utmpname(UTMP_FILE);

  setutent();

  while ((utmp_buf = getutent()) != ((void*)0)) {
    if (utmp_buf->ut_user[0] && utmp_buf->ut_type == USER_PROCESS)
      ++entries;
    if (utmp_buf->ut_type == BOOT_TIME)
      boot_time = utmp_buf->ut_time;
  }

  endutent();

  if (boot_time == 0)
    return UV_ENOSYS;

  *uptime = time(((void*)0)) - boot_time;
  return 0;
}
