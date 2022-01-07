
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xdf1; int xdf2; } ;
typedef TYPE_1__ xdfenv_t ;


 int xdl_free_ctx (int *) ;

void xdl_free_env(xdfenv_t *xe) {

 xdl_free_ctx(&xe->xdf2);
 xdl_free_ctx(&xe->xdf1);
}
