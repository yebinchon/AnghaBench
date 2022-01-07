
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* filename; scalar_t__ fp; } ;


 int MAX_LOGFILENAMESIZE ;
 scalar_t__ fopen (char*,char*) ;
 TYPE_1__ logfile ;
 int printf (char*,...) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int ) ;

void Log_Open(char *filename)
{
 if (!filename || !strlen(filename))
 {
  printf("openlog <filename>\n");
  return;
 }
 if (logfile.fp)
 {
  printf("log file %s is already opened\n", logfile.filename);
  return;
 }
 logfile.fp = fopen(filename, "wb");
 if (!logfile.fp)
 {
  printf("can't open the log file %s\n", filename);
  return;
 }
 strncpy(logfile.filename, filename, MAX_LOGFILENAMESIZE);
 printf("Opened log %s\n", logfile.filename);
}
