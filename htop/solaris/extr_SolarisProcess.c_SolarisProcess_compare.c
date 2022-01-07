
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* settings; } ;
struct TYPE_5__ {int direction; scalar_t__ sortKey; } ;
struct TYPE_4__ {long zoneid; long projid; long taskid; long poolid; long contid; char* zname; long realpid; long realppid; long lwpid; } ;
typedef TYPE_1__ SolarisProcess ;
typedef TYPE_2__ Settings ;
typedef TYPE_3__ Process ;
 long Process_compare (void const*,void const*) ;



 long strcmp (char*,char*) ;

long SolarisProcess_compare(const void* v1, const void* v2) {
   SolarisProcess *p1, *p2;
   Settings* settings = ((Process*)v1)->settings;
   if (settings->direction == 1) {
      p1 = (SolarisProcess*)v1;
      p2 = (SolarisProcess*)v2;
   } else {
      p2 = (SolarisProcess*)v1;
      p1 = (SolarisProcess*)v2;
   }
   switch ((int) settings->sortKey) {
   case 128:
      return (p1->zoneid - p2->zoneid);
   case 131:
      return (p1->projid - p2->projid);
   case 130:
      return (p1->taskid - p2->taskid);
   case 133:
      return (p1->poolid - p2->poolid);
   case 136:
      return (p1->contid - p2->contid);
   case 129:
      return strcmp(p1->zname ? p1->zname : "global", p2->zname ? p2->zname : "global");
   case 134:
      return (p1->realpid - p2->realpid);
   case 132:
      return (p1->realppid - p2->realppid);
   case 135:
      return (p1->lwpid - p2->lwpid);
   default:
      return Process_compare(v1, v2);
   }
}
