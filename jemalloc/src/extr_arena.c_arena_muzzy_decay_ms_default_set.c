
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int ATOMIC_RELAXED ;
 int arena_decay_ms_valid (int ) ;
 int atomic_store_zd (int *,int ,int ) ;
 int muzzy_decay_ms_default ;

bool
arena_muzzy_decay_ms_default_set(ssize_t decay_ms) {
 if (!arena_decay_ms_valid(decay_ms)) {
  return 1;
 }
 atomic_store_zd(&muzzy_decay_ms_default, decay_ms, ATOMIC_RELAXED);
 return 0;
}
