
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cnt; } ;
struct TYPE_4__ {TYPE_1__ even; } ;
struct loss_cond_t {TYPE_2__ data; } ;



__attribute__((used)) static int cond_even_(struct loss_cond_t *cond)
{
    return cond->data.even.cnt++ % 2 == 0;
}
