
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_7__ {int * pl; } ;
struct TYPE_6__ {TYPE_4__* header; TYPE_1__* settings; } ;
struct TYPE_5__ {double delay; scalar_t__ treeView; } ;
typedef TYPE_2__ ScreenManager ;
typedef int ProcessList ;


 int Header_draw (TYPE_4__*) ;
 int ProcessList_rebuildPanel (int *) ;
 int ProcessList_scan (int *) ;
 int ProcessList_sort (int *) ;
 int gettimeofday (struct timeval*,int *) ;

__attribute__((used)) static void checkRecalculation(ScreenManager* this, double* oldTime, int* sortTimeout, bool* redraw, bool *rescan, bool *timedOut) {
   ProcessList* pl = this->header->pl;

   struct timeval tv;
   gettimeofday(&tv, ((void*)0));
   double newTime = ((double)tv.tv_sec * 10) + ((double)tv.tv_usec / 100000);
   *timedOut = (newTime - *oldTime > this->settings->delay);
   *rescan = *rescan || *timedOut;
   if (newTime < *oldTime) *rescan = 1;
   if (*rescan) {
      *oldTime = newTime;
      ProcessList_scan(pl);
      if (*sortTimeout == 0 || this->settings->treeView) {
         ProcessList_sort(pl);
         *sortTimeout = 1;
      }
      *redraw = 1;
   }
   if (*redraw) {
      ProcessList_rebuildPanel(pl);
      Header_draw(this->header);
   }
   *rescan = 0;
}
