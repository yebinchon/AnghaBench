
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int prof_tdata_tree_t ;
typedef int prof_tdata_t ;


 scalar_t__ prof_tdata_expire (int *,int *) ;

__attribute__((used)) static prof_tdata_t *
prof_tdata_reset_iter(prof_tdata_tree_t *tdatas, prof_tdata_t *tdata,
    void *arg) {
 tsdn_t *tsdn = (tsdn_t *)arg;

 return (prof_tdata_expire(tsdn, tdata) ? tdata : ((void*)0));
}
