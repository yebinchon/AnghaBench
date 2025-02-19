
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NALLOCS_PER_THREAD ;
 void* btalloc (int,unsigned int) ;

__attribute__((used)) static void *
alloc_from_permuted_backtrace(unsigned thd_ind, unsigned iteration) {
 return btalloc(1, thd_ind*NALLOCS_PER_THREAD + iteration);
}
