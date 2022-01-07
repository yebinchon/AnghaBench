
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int ATOMIC_RELAXED ;
 int atomic_load_zd (int *,int ) ;
 int dirty_decay_ms_default ;

ssize_t
arena_dirty_decay_ms_default_get(void) {
 return atomic_load_zd(&dirty_decay_ms_default, ATOMIC_RELAXED);
}
