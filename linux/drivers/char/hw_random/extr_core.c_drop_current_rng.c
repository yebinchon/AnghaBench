
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ref; } ;


 int BUG_ON (int) ;
 int cleanup_rng ;
 TYPE_1__* current_rng ;
 int kref_put (int *,int ) ;
 int mutex_is_locked (int *) ;
 int rng_mutex ;

__attribute__((used)) static void drop_current_rng(void)
{
 BUG_ON(!mutex_is_locked(&rng_mutex));
 if (!current_rng)
  return;


 kref_put(&current_rng->ref, cleanup_rng);
 current_rng = ((void*)0);
}
