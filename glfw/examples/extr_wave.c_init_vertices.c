
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float x; float y; double r; float g; float b; scalar_t__ z; } ;
typedef float GLfloat ;


 int GRIDH ;
 int GRIDW ;
 int QUADH ;
 int QUADW ;
 int* quad ;
 TYPE_1__* vertex ;

void init_vertices(void)
{
    int x, y, p;


    for (y = 0; y < GRIDH; y++)
    {
        for (x = 0; x < GRIDW; x++)
        {
            p = y * GRIDW + x;

            vertex[p].x = (GLfloat) (x - GRIDW / 2) / (GLfloat) (GRIDW / 2);
            vertex[p].y = (GLfloat) (y - GRIDH / 2) / (GLfloat) (GRIDH / 2);
            vertex[p].z = 0;

            if ((x % 4 < 2) ^ (y % 4 < 2))
                vertex[p].r = 0.0;
            else
                vertex[p].r = 1.0;

            vertex[p].g = (GLfloat) y / (GLfloat) GRIDH;
            vertex[p].b = 1.f - ((GLfloat) x / (GLfloat) GRIDW + (GLfloat) y / (GLfloat) GRIDH) / 2.f;
        }
    }

    for (y = 0; y < QUADH; y++)
    {
        for (x = 0; x < QUADW; x++)
        {
            p = 4 * (y * QUADW + x);

            quad[p + 0] = y * GRIDW + x;
            quad[p + 1] = y * GRIDW + x + 1;
            quad[p + 2] = (y + 1) * GRIDW + x + 1;
            quad[p + 3] = (y + 1) * GRIDW + x;
        }
    }
}
