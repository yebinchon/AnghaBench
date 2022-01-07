
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gs_cb {int dummy; } ;
struct TYPE_3__ {struct gs_cb* gs_bc_cb; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 TYPE_2__* current ;
 int kfree (struct gs_cb*) ;

__attribute__((used)) static int gs_clear_bc_cb(void)
{
 struct gs_cb *gs_cb;

 gs_cb = current->thread.gs_bc_cb;
 current->thread.gs_bc_cb = ((void*)0);
 kfree(gs_cb);
 return 0;
}
