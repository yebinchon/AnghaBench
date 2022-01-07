
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int text_mutex ;
 int text_poke_bp_batch (int ,scalar_t__) ;
 int tp_vec ;
 scalar_t__ tp_vec_nr ;

void arch_jump_label_transform_apply(void)
{
 if (!tp_vec_nr)
  return;

 mutex_lock(&text_mutex);
 text_poke_bp_batch(tp_vec, tp_vec_nr);
 mutex_unlock(&text_mutex);

 tp_vec_nr = 0;
}
