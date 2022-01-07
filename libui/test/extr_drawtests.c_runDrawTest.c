
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uiAreaDrawParams ;
struct TYPE_2__ {int (* draw ) (int *) ;} ;


 int stub1 (int *) ;
 TYPE_1__* tests ;

void runDrawTest(int n, uiAreaDrawParams *p)
{
 (*(tests[n].draw))(p);
}
