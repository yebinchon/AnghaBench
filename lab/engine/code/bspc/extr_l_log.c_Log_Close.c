
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* filename; int * fp; } ;


 scalar_t__ fclose (int *) ;
 TYPE_1__ logfile ;
 int printf (char*,...) ;

void Log_Close(void)
{
 if (!logfile.fp)
 {
  printf("no log file to close\n");
  return;
 }
 if (fclose(logfile.fp))
 {
  printf("can't close log file %s\n", logfile.filename);
  return;
 }
 logfile.fp = ((void*)0);
 printf("Closed log %s\n", logfile.filename);
}
