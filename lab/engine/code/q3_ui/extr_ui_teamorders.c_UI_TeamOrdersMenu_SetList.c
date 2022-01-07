
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; scalar_t__ top; scalar_t__ bottom; } ;
struct TYPE_5__ {int numitems; char const** itemnames; TYPE_1__ generic; } ;
struct TYPE_6__ {int numBots; TYPE_2__ list; scalar_t__ bots; } ;





 int NUM_CTF_ORDERS ;
 int NUM_TEAM_ORDERS ;
 int PROP_HEIGHT ;
 char const** ctfOrders ;
 char const** teamOrders ;
 TYPE_3__ teamOrdersMenuInfo ;

__attribute__((used)) static void UI_TeamOrdersMenu_SetList( int id ) {
 switch( id ) {
 default:
 case 130:
  teamOrdersMenuInfo.list.generic.id = id;
  teamOrdersMenuInfo.list.numitems = teamOrdersMenuInfo.numBots;
  teamOrdersMenuInfo.list.itemnames = (const char **)teamOrdersMenuInfo.bots;
   break;

 case 129:
  teamOrdersMenuInfo.list.generic.id = id;
  teamOrdersMenuInfo.list.numitems = NUM_CTF_ORDERS;
  teamOrdersMenuInfo.list.itemnames = ctfOrders;
  break;

 case 128:
  teamOrdersMenuInfo.list.generic.id = id;
  teamOrdersMenuInfo.list.numitems = NUM_TEAM_ORDERS;
  teamOrdersMenuInfo.list.itemnames = teamOrders;
  break;
 }

 teamOrdersMenuInfo.list.generic.bottom = teamOrdersMenuInfo.list.generic.top + teamOrdersMenuInfo.list.numitems * PROP_HEIGHT;
}
