
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numpoints; float** p; } ;
typedef TYPE_1__ winding_t ;
typedef int byte ;


 int draw_socket ;
 int send (int ,int *,int,int ) ;

void GLS_Winding (winding_t *w, int code)
{
 byte buf[1024];
 int i, j;

 if (!draw_socket)
  return;

 ((int *)buf)[0] = w->numpoints;
 ((int *)buf)[1] = code;
 for (i=0 ; i<w->numpoints ; i++)
  for (j=0 ; j<3 ; j++)
   ((float *)buf)[2+i*3+j] = w->p[i][j];

 send (draw_socket, buf, w->numpoints*12+8, 0);
}
