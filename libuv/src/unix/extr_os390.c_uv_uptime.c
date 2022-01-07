
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time64_t ;
struct TYPE_2__ {int tv_sec; } ;
struct utmpx {TYPE_1__ ut_tv; int ut_type; } ;


 int BOOT_TIME ;
 double difftime64 (int ,int ) ;
 struct utmpx* getutxid (struct utmpx*) ;
 int time64 (int *) ;

int uv_uptime(double* uptime) {
  struct utmpx u ;
  struct utmpx *v;
  time64_t t;

  u.ut_type = BOOT_TIME;
  v = getutxid(&u);
  if (v == ((void*)0))
    return -1;
  *uptime = difftime64(time64(&t), v->ut_tv.tv_sec);
  return 0;
}
