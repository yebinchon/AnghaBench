
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int count; TYPE_1__* item; } ;
typedef TYPE_2__ gentity_t ;
struct TYPE_6__ {int quantity; int giTag; } ;


 int Add_Ammo (TYPE_2__*,int ,int) ;
 int RESPAWN_AMMO ;

int Pickup_Ammo (gentity_t *ent, gentity_t *other)
{
 int quantity;

 if ( ent->count ) {
  quantity = ent->count;
 } else {
  quantity = ent->item->quantity;
 }

 Add_Ammo (other, ent->item->giTag, quantity);

 return RESPAWN_AMMO;
}
