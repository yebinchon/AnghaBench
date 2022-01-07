
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int arena_decay_t ;


 int arena_decay_ms_read (int *) ;

__attribute__((used)) static ssize_t
arena_decay_ms_get(arena_decay_t *decay) {
 return arena_decay_ms_read(decay);
}
