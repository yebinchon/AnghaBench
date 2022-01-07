
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* item; scalar_t__ count; } ;
typedef TYPE_2__ gentity_t ;
struct TYPE_7__ {scalar_t__ quantity; } ;


 int AddScore (TYPE_2__*,int *,scalar_t__,char*,TYPE_2__*) ;
 int dmlab_set_map_finished (int ) ;
 int qtrue ;

int Pickup_Goal( gentity_t *ent, gentity_t *other ) {
 AddScore( other, ((void*)0), ent->count ? ent->count : ent->item->quantity, "PICKUP_GOAL", ent );
 dmlab_set_map_finished( qtrue );
 return -1;
}
