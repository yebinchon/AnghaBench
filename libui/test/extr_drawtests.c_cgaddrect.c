
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uiDrawPath ;
struct TYPE_3__ {double AreaHeight; } ;
typedef TYPE_1__ uiAreaDrawParams ;


 int uiDrawPathAddRectangle (int *,double,double,double,double) ;

__attribute__((used)) static void cgaddrect(uiDrawPath *path, uiAreaDrawParams *p, double x, double y, double width, double height)
{
 uiDrawPathAddRectangle(path,
  x, p->AreaHeight - y - height,
  width, height);
}
