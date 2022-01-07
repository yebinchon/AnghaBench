
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int oom; } ;
typedef TYPE_1__ LinuxProcess ;
typedef int FILE ;


 int MAX_NAME ;
 int PROC_LINE_LENGTH ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int ,int *) ;
 int * fopen (char*,char*) ;
 int sscanf (char*,char*,unsigned int*) ;
 int xSnprintf (char*,int ,char*,char const*,char const*) ;

__attribute__((used)) static void LinuxProcessList_readOomData(LinuxProcess* process, const char* dirname, const char* name) {
   char filename[MAX_NAME+1];
   xSnprintf(filename, MAX_NAME, "%s/%s/oom_score", dirname, name);
   FILE* file = fopen(filename, "r");
   if (!file) {
      return;
   }
   char buffer[PROC_LINE_LENGTH + 1];
   if (fgets(buffer, PROC_LINE_LENGTH, file)) {
      unsigned int oom;
      int ok = sscanf(buffer, "%32u", &oom);
      if (ok >= 1) {
         process->oom = oom;
      }
   }
   fclose(file);
}
