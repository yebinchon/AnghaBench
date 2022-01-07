
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; int use; } ;
typedef TYPE_1__ gentity_t ;


 int Use_Target_Score ;

void SP_target_score( gentity_t *ent ) {
 if ( !ent->count ) {
  ent->count = 1;
 }
 ent->use = Use_Target_Score;
}
