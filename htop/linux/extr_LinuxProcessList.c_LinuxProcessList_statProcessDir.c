
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int st_uid; } ;
struct TYPE_3__ {int st_uid; } ;
typedef TYPE_1__ Process ;


 int MAX_NAME ;
 int stat (char*,struct stat*) ;
 int xSnprintf (char*,int,char*,char const*,char*) ;

__attribute__((used)) static bool LinuxProcessList_statProcessDir(Process* process, const char* dirname, char* name) {
   char filename[MAX_NAME+1];
   filename[MAX_NAME] = '\0';

   xSnprintf(filename, MAX_NAME, "%s/%s", dirname, name);
   struct stat sstat;
   int statok = stat(filename, &sstat);
   if (statok == -1)
      return 0;
   process->st_uid = sstat.st_uid;
   return 1;
}
