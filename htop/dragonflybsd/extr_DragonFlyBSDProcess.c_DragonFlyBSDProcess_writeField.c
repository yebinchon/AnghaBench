
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int buffer ;
struct TYPE_6__ {int jid; int jname; int kernel; } ;
struct TYPE_5__ {int pid; } ;
typedef int RichString ;
typedef scalar_t__ ProcessField ;
typedef TYPE_1__ Process ;
typedef TYPE_2__ DragonFlyBSDProcess ;


 int* CRT_colors ;
 size_t DEFAULT_COLOR ;



 char* Process_pidFormat ;
 int Process_writeField (TYPE_1__*,int *,scalar_t__) ;
 int RichString_append (int *,int,char*) ;
 int xSnprintf (char*,int,char*,int) ;

void DragonFlyBSDProcess_writeField(Process* this, RichString* str, ProcessField field) {
   DragonFlyBSDProcess* fp = (DragonFlyBSDProcess*) this;
   char buffer[256]; buffer[255] = '\0';
   int attr = CRT_colors[DEFAULT_COLOR];
   int n = sizeof(buffer) - 1;
   switch ((int) field) {

   case 128: xSnprintf(buffer, n, Process_pidFormat, (fp->kernel ? -1 : this->pid)); break;
   case 129: xSnprintf(buffer, n, Process_pidFormat, fp->jid); break;
   case 130:{
      xSnprintf(buffer, n, "%-11s ", fp->jname); break;
      if (buffer[11] != '\0') {
         buffer[11] = ' ';
         buffer[12] = '\0';
      }
      break;
   }
   default:
      Process_writeField(this, str, field);
      return;
   }
   RichString_append(str, attr, buffer);
}
