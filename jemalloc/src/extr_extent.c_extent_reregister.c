
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int extent_t ;


 int assert (int) ;
 int extent_register (int *,int *) ;

__attribute__((used)) static void
extent_reregister(tsdn_t *tsdn, extent_t *extent) {
 bool err = extent_register(tsdn, extent);
 assert(!err);
}
