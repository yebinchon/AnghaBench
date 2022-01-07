
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_5__ {int pidSearch; } ;
struct TYPE_4__ {scalar_t__ pid; } ;
typedef TYPE_1__ Process ;
typedef int Panel ;
typedef TYPE_2__ MainPanel ;


 scalar_t__ Panel_get (int *,int) ;
 int Panel_setSelected (int *,int) ;
 int Panel_size (int *) ;

void MainPanel_pidSearch(MainPanel* this, int ch) {
   Panel* super = (Panel*) this;
   pid_t pid = ch-48 + this->pidSearch;
   for (int i = 0; i < Panel_size(super); i++) {
      Process* p = (Process*) Panel_get(super, i);
      if (p && p->pid == pid) {
         Panel_setSelected(super, i);
         break;
      }
   }
   this->pidSearch = pid * 10;
   if (this->pidSearch > 10000000) {
      this->pidSearch = 0;
   }
}
