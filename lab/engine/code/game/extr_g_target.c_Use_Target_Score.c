
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int currentOrigin; } ;
struct TYPE_9__ {int count; TYPE_1__ r; } ;
typedef TYPE_2__ gentity_t ;


 int AddScore (TYPE_2__*,int ,int ,char*,TYPE_2__*) ;

void Use_Target_Score (gentity_t *ent, gentity_t *other, gentity_t *activator) {
 AddScore( activator, ent->r.currentOrigin, ent->count, "TARGET_SCORE", ent );
}
