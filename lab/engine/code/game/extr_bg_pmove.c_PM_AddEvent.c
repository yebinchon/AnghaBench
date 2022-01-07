
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ps; } ;


 int BG_AddPredictableEventToPlayerstate (int,int ,int ) ;
 TYPE_1__* pm ;

void PM_AddEvent( int newEvent ) {
 BG_AddPredictableEventToPlayerstate( newEvent, 0, pm->ps );
}
