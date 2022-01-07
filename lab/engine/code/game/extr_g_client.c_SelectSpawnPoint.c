
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
typedef int qboolean ;
typedef int gentity_t ;


 int * SelectRandomSpawnPoint (int ,int ,int ) ;

gentity_t *SelectSpawnPoint ( vec3_t avoidPoint, vec3_t origin, vec3_t angles, qboolean isbot ) {
 return SelectRandomSpawnPoint(origin, angles, isbot);
}
