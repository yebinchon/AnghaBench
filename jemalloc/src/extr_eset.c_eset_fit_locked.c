
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int extent_t ;
struct TYPE_5__ {int mtx; } ;
typedef TYPE_1__ eset_t ;


 size_t PAGE ;
 size_t PAGE_CEILING (size_t) ;
 int * eset_first_fit_locked (int *,TYPE_1__*,size_t) ;
 int * eset_fit_alignment (TYPE_1__*,size_t,size_t,size_t) ;
 int malloc_mutex_assert_owner (int *,int *) ;

extent_t *
eset_fit_locked(tsdn_t *tsdn, eset_t *eset, size_t esize, size_t alignment) {
 malloc_mutex_assert_owner(tsdn, &eset->mtx);

 size_t max_size = esize + PAGE_CEILING(alignment) - PAGE;

 if (max_size < esize) {
  return ((void*)0);
 }

 extent_t *extent = eset_first_fit_locked(tsdn, eset, max_size);

 if (alignment > PAGE && extent == ((void*)0)) {





  extent = eset_fit_alignment(eset, esize, max_size, alignment);
 }

 return extent;
}
