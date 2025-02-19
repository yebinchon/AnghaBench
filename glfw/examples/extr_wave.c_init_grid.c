
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GRIDH ;
 int GRIDW ;
 double M_PI ;
 double cos (double) ;
 double** p ;
 double sqrt (double) ;
 double** vx ;
 double** vy ;

void init_grid(void)
{
    int x, y;
    double dx, dy, d;

    for (y = 0; y < GRIDH; y++)
    {
        for (x = 0; x < GRIDW; x++)
        {
            dx = (double) (x - GRIDW / 2);
            dy = (double) (y - GRIDH / 2);
            d = sqrt(dx * dx + dy * dy);
            if (d < 0.1 * (double) (GRIDW / 2))
            {
                d = d * 10.0;
                p[x][y] = -cos(d * (M_PI / (double)(GRIDW * 4))) * 100.0;
            }
            else
                p[x][y] = 0.0;

            vx[x][y] = 0.0;
            vy[x][y] = 0.0;
        }
    }
}
