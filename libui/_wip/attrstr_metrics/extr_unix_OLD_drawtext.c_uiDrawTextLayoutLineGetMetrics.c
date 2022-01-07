
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uiDrawTextLayoutLineMetrics ;
struct TYPE_3__ {int * lineMetrics; } ;
typedef TYPE_1__ uiDrawTextLayout ;



void uiDrawTextLayoutLineGetMetrics(uiDrawTextLayout *tl, int line, uiDrawTextLayoutLineMetrics *m)
{
 *m = tl->lineMetrics[line];
}
