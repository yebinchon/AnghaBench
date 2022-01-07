
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float distance; int hit; int origin; int direction; int displacement; int end; } ;
typedef TYPE_1__ trace_t ;


 int VectorCopy (int ,int ) ;
 float VectorNormalize (int ,int ) ;
 int VectorSubtract (int ,int ,int ) ;

float SetupTrace( trace_t *trace ){
 VectorSubtract( trace->end, trace->origin, trace->displacement );
 trace->distance = VectorNormalize( trace->displacement, trace->direction );
 VectorCopy( trace->origin, trace->hit );
 return trace->distance;
}
