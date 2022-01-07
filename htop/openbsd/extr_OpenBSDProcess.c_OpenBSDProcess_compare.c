
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* settings; } ;
struct TYPE_3__ {int direction; int sortKey; } ;
typedef TYPE_1__ Settings ;
typedef TYPE_2__ Process ;
typedef int OpenBSDProcess ;


 long Process_compare (void const*,void const*) ;

long OpenBSDProcess_compare(const void* v1, const void* v2) {
   OpenBSDProcess *p1, *p2;
   Settings *settings = ((Process*)v1)->settings;
   if (settings->direction == 1) {
      p1 = (OpenBSDProcess*)v1;
      p2 = (OpenBSDProcess*)v2;
   } else {
      p2 = (OpenBSDProcess*)v1;
      p1 = (OpenBSDProcess*)v2;
   }
   switch (settings->sortKey) {

   default:
      return Process_compare(v1, v2);
   }
}
