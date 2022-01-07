
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* comm; } ;
typedef TYPE_1__ Process ;
typedef int Panel ;
typedef int MainPanel ;


 scalar_t__ Panel_get (int *,int) ;

const char* MainPanel_getValue(MainPanel* this, int i) {
   Process* p = (Process*) Panel_get((Panel*)this, i);
   if (p)
      return p->comm;
   return "";
}
