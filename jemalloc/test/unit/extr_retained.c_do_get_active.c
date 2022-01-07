
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t PAGE ;
 size_t do_get_size_impl (char*,unsigned int) ;

__attribute__((used)) static size_t
do_get_active(unsigned arena_ind) {
 return do_get_size_impl("stats.arenas.0.pactive", arena_ind) * PAGE;
}
