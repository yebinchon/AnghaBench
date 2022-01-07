
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float z; } ;


 int GRIDH ;
 int GRIDW ;
 double** p ;
 TYPE_1__* vertex ;

void adjust_grid(void)
{
    int pos;
    int x, y;

    for (y = 0; y < GRIDH; y++)
    {
        for (x = 0; x < GRIDW; x++)
        {
            pos = y * GRIDW + x;
            vertex[pos].z = (float) (p[x][y] * (1.0 / 50.0));
        }
    }
}
