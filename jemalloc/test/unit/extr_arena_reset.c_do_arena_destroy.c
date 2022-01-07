
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_arena_reset_destroy (char*,unsigned int) ;

__attribute__((used)) static void
do_arena_destroy(unsigned arena_ind) {
 do_arena_reset_destroy("arena.0.destroy", arena_ind);
}
