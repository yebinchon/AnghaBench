
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int commLen; scalar_t__ comm; } ;
typedef TYPE_1__ Process ;


 int free (scalar_t__) ;
 int strncpy (scalar_t__,char const*,int) ;
 scalar_t__ xStrdup (char const*) ;

__attribute__((used)) static void setCommand(Process* process, const char* command, int len) {
   if (process->comm && process->commLen >= len) {
      strncpy(process->comm, command, len + 1);
   } else {
      free(process->comm);
      process->comm = xStrdup(command);
   }
   process->commLen = len;
}
