
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ctl_arena_t ;


 int * arenas_i_impl (int ,size_t,int,int) ;
 int assert (int ) ;
 int tsd_fetch () ;

__attribute__((used)) static ctl_arena_t *
arenas_i(size_t i) {
 ctl_arena_t *ret = arenas_i_impl(tsd_fetch(), i, 1, 0);
 assert(ret != ((void*)0));
 return ret;
}
