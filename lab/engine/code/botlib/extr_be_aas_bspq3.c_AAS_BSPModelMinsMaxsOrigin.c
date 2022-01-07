
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_2__ {int (* BSPModelMinsMaxsOrigin ) (int,int ,int ,int ,int ) ;} ;


 TYPE_1__ botimport ;
 int stub1 (int,int ,int ,int ,int ) ;

void AAS_BSPModelMinsMaxsOrigin(int modelnum, vec3_t angles, vec3_t mins, vec3_t maxs, vec3_t origin)
{
 botimport.BSPModelMinsMaxsOrigin(modelnum, angles, mins, maxs, origin);
}
