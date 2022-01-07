
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_4__ {int maxs; int mins; int currentAngles; int currentOrigin; } ;
struct TYPE_5__ {TYPE_1__ r; } ;
typedef TYPE_2__ gentity_t ;


 int BoxRelative (int ,int ,int ,int ) ;
 int InverseRotation (int ,int ,int ) ;
 int VectorSubtract (int const,int ,int ) ;
 int qtrue ;

__attribute__((used)) static void MoveToEntitySpace(const gentity_t* entity, const vec3_t world_point,
               vec3_t result) {
 vec3_t local_point;


 VectorSubtract(world_point, entity->r.currentOrigin, local_point);


 InverseRotation(entity->r.currentAngles, local_point, qtrue);
 BoxRelative(local_point, entity->r.mins, entity->r.maxs, result);
}
