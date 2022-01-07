
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_isdst; } ;
typedef int git_signature ;


 scalar_t__ difftime (int,int ) ;
 scalar_t__ git_signature_new (int **,char const*,char const*,int,int) ;
 int mktime (struct tm*) ;
 struct tm* p_gmtime_r (int*,struct tm*) ;
 int time (int*) ;

int git_signature_now(git_signature **sig_out, const char *name, const char *email)
{
 time_t now;
 time_t offset;
 struct tm *utc_tm;
 git_signature *sig;
 struct tm _utc;

 *sig_out = ((void*)0);
 time(&now);
 utc_tm = p_gmtime_r(&now, &_utc);
 utc_tm->tm_isdst = -1;
 offset = (time_t)difftime(now, mktime(utc_tm));
 offset /= 60;

 if (git_signature_new(&sig, name, email, now, (int)offset) < 0)
  return -1;

 *sig_out = sig;

 return 0;
}
