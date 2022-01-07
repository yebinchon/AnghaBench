
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cond_var; } ;
typedef TYPE_1__ uv_cond_t ;


 int WakeConditionVariable (int *) ;

void uv_cond_signal(uv_cond_t* cond) {
  WakeConditionVariable(&cond->cond_var);
}
