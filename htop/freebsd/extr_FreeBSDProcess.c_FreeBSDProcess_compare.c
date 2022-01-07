
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {long jid; char* jname; } ;
struct TYPE_5__ {TYPE_1__* settings; } ;
struct TYPE_4__ {int direction; scalar_t__ sortKey; } ;
typedef TYPE_1__ Settings ;
typedef TYPE_2__ Process ;
typedef TYPE_3__ FreeBSDProcess ;




 long Process_compare (void const*,void const*) ;
 long strcmp (char*,char*) ;

long FreeBSDProcess_compare(const void* v1, const void* v2) {
   FreeBSDProcess *p1, *p2;
   Settings *settings = ((Process*)v1)->settings;
   if (settings->direction == 1) {
      p1 = (FreeBSDProcess*)v1;
      p2 = (FreeBSDProcess*)v2;
   } else {
      p2 = (FreeBSDProcess*)v1;
      p1 = (FreeBSDProcess*)v2;
   }
   switch ((int) settings->sortKey) {

   case 128:
      return (p1->jid - p2->jid);
   case 129:
      return strcmp(p1->jname ? p1->jname : "", p2->jname ? p2->jname : "");
   default:
      return Process_compare(v1, v2);
   }
}
