
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int command ;
struct TYPE_6__ {int isKernelThread; } ;
struct TYPE_5__ {int basenameOffset; } ;
typedef TYPE_1__ Process ;
typedef TYPE_2__ LinuxProcess ;


 int MAX_NAME ;
 int O_RDONLY ;
 int close (int) ;
 int open (char*,int ) ;
 int setCommand (TYPE_1__*,char*,int) ;
 int xSnprintf (char*,int ,char*,char const*,char const*) ;
 int xread (int,char*,int) ;

__attribute__((used)) static bool LinuxProcessList_readCmdlineFile(Process* process, const char* dirname, const char* name) {
   char filename[MAX_NAME+1];
   xSnprintf(filename, MAX_NAME, "%s/%s/cmdline", dirname, name);
   int fd = open(filename, O_RDONLY);
   if (fd == -1)
      return 0;

   char command[4096+1];
   int amtRead = xread(fd, command, sizeof(command) - 1);
   close(fd);
   int tokenEnd = 0;
   int lastChar = 0;
   if (amtRead == 0) {
      ((LinuxProcess*)process)->isKernelThread = 1;
      return 1;
   } else if (amtRead < 0) {
      return 0;
   }
   for (int i = 0; i < amtRead; i++) {
      if (command[i] == '\0' || command[i] == '\n') {
         if (tokenEnd == 0) {
            tokenEnd = i;
         }
         command[i] = ' ';
      } else {
         lastChar = i;
      }
   }
   if (tokenEnd == 0) {
      tokenEnd = amtRead;
   }
   command[lastChar + 1] = '\0';
   process->basenameOffset = tokenEnd;
   setCommand(process, command, lastChar + 1);

   return 1;
}
