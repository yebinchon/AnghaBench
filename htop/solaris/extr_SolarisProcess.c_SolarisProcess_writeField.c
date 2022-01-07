
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buffer ;
struct TYPE_2__ {int lwpid; int realppid; int realpid; int zname; int contid; int poolid; int taskid; int projid; int zoneid; } ;
typedef TYPE_1__ SolarisProcess ;
typedef int RichString ;
typedef scalar_t__ ProcessField ;
typedef int Process ;



 int* CRT_colors ;
 size_t DEFAULT_COLOR ;





 int Process_pidFormat ;
 int Process_writeField (int *,int *,scalar_t__) ;
 int RichString_append (int *,int,char*) ;



 int ZONENAME_MAX ;
 int xSnprintf (char*,int,char*,int,...) ;

void SolarisProcess_writeField(Process* this, RichString* str, ProcessField field) {
   SolarisProcess* sp = (SolarisProcess*) this;
   char buffer[256]; buffer[255] = '\0';
   int attr = CRT_colors[DEFAULT_COLOR];
   int n = sizeof(buffer) - 1;
   switch ((int) field) {

   case 128: xSnprintf(buffer, n, Process_pidFormat, sp->zoneid); break;
   case 131: xSnprintf(buffer, n, Process_pidFormat, sp->projid); break;
   case 130: xSnprintf(buffer, n, Process_pidFormat, sp->taskid); break;
   case 133: xSnprintf(buffer, n, Process_pidFormat, sp->poolid); break;
   case 136: xSnprintf(buffer, n, Process_pidFormat, sp->contid); break;
   case 129:{
      xSnprintf(buffer, n, "%-*s ", ZONENAME_MAX/4, sp->zname); break;
      if (buffer[ZONENAME_MAX/4] != '\0') {
         buffer[ZONENAME_MAX/4] = ' ';
         buffer[(ZONENAME_MAX/4)+1] = '\0';
      }
      break;
   }
   case 134: xSnprintf(buffer, n, Process_pidFormat, sp->realpid); break;
   case 132: xSnprintf(buffer, n, Process_pidFormat, sp->realppid); break;
   case 135: xSnprintf(buffer, n, Process_pidFormat, sp->lwpid); break;
   default:
      Process_writeField(this, str, field);
      return;
   }
   RichString_append(str, attr, buffer);
}
