
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GJSON ;


 int DATE_TIME ;
 int OVERALL_DATETIME ;
 int generate_time () ;
 int now_tm ;
 int pskeysval (int *,int ,char*,int,int ) ;
 int strftime (char*,int,char*,int ) ;

__attribute__((used)) static void
poverall_datetime (GJSON * json, int sp)
{
  char now[DATE_TIME];

  generate_time ();
  strftime (now, DATE_TIME, "%Y-%m-%d %H:%M:%S %z", now_tm);

  pskeysval (json, OVERALL_DATETIME, now, sp, 0);
}
