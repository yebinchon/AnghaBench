
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int rtree_t ;
typedef int rtree_leaf_elm_t ;


 int not_reached () ;

__attribute__((used)) static void
rtree_leaf_dalloc_impl(tsdn_t *tsdn, rtree_t *rtree, rtree_leaf_elm_t *leaf) {

 not_reached();
}
