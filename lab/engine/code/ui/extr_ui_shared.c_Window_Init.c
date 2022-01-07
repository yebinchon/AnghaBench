
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int windowDef_t ;
struct TYPE_4__ {int borderSize; double* foreColor; int cinematic; } ;
typedef TYPE_1__ Window ;


 int memset (TYPE_1__*,int ,int) ;

void Window_Init(Window *w) {
 memset(w, 0, sizeof(windowDef_t));
 w->borderSize = 1;
 w->foreColor[0] = w->foreColor[1] = w->foreColor[2] = w->foreColor[3] = 1.0;
 w->cinematic = -1;
}
