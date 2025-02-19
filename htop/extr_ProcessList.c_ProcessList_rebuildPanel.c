
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
typedef scalar_t__ pid_t ;
struct TYPE_13__ {int scrollV; } ;
struct TYPE_12__ {scalar_t__ st_uid; scalar_t__ pid; int tgid; int comm; int show; } ;
struct TYPE_11__ {char* incFilter; int following; scalar_t__ userId; TYPE_7__* panel; scalar_t__ pidWhiteList; } ;
typedef TYPE_1__ ProcessList ;
typedef TYPE_2__ Process ;
typedef int Object ;


 int Hashtable_get (scalar_t__,int ) ;
 int Panel_getSelectedIndex (TYPE_7__*) ;
 int Panel_prune (TYPE_7__*) ;
 int Panel_set (TYPE_7__*,int,int *) ;
 int Panel_setSelected (TYPE_7__*,int) ;
 TYPE_2__* ProcessList_get (TYPE_1__*,int) ;
 int ProcessList_size (TYPE_1__*) ;
 int String_contains_i (int ,char const*) ;

void ProcessList_rebuildPanel(ProcessList* this) {
   const char* incFilter = this->incFilter;

   int currPos = Panel_getSelectedIndex(this->panel);
   pid_t currPid = this->following != -1 ? this->following : 0;
   int currScrollV = this->panel->scrollV;

   Panel_prune(this->panel);
   int size = ProcessList_size(this);
   int idx = 0;
   for (int i = 0; i < size; i++) {
      bool hidden = 0;
      Process* p = ProcessList_get(this, i);

      if ( (!p->show)
         || (this->userId != (uid_t) -1 && (p->st_uid != this->userId))
         || (incFilter && !(String_contains_i(p->comm, incFilter)))
         || (this->pidWhiteList && !Hashtable_get(this->pidWhiteList, p->tgid)) )
         hidden = 1;

      if (!hidden) {
         Panel_set(this->panel, idx, (Object*)p);
         if ((this->following == -1 && idx == currPos) || (this->following != -1 && p->pid == currPid)) {
            Panel_setSelected(this->panel, idx);
            this->panel->scrollV = currScrollV;
         }
         idx++;
      }
   }
}
