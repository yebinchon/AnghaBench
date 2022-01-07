
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int optimalStageIteratorFunc; scalar_t__ isSky; } ;


 int RB_StageIteratorGeneric ;
 int RB_StageIteratorSky ;
 TYPE_1__ shader ;

__attribute__((used)) static void ComputeStageIteratorFunc( void )
{
 shader.optimalStageIteratorFunc = RB_StageIteratorGeneric;




 if ( shader.isSky )
 {
  shader.optimalStageIteratorFunc = RB_StageIteratorSky;
  return;
 }
}
