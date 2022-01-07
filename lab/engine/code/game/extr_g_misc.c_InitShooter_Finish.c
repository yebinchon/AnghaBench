
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nextthink; scalar_t__ think; int target; int enemy; } ;
typedef TYPE_1__ gentity_t ;


 int G_PickTarget (int ) ;

__attribute__((used)) static void InitShooter_Finish( gentity_t *ent ) {
 ent->enemy = G_PickTarget( ent->target );
 ent->think = 0;
 ent->nextthink = 0;
}
