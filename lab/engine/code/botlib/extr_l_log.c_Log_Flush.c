
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fp; } ;


 int fflush (scalar_t__) ;
 TYPE_1__ logfile ;

void Log_Flush(void)
{
 if (logfile.fp) fflush(logfile.fp);
}
