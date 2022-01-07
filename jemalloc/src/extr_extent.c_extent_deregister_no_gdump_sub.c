
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int extent_t ;


 int extent_deregister_impl (int *,int *,int) ;

__attribute__((used)) static void
extent_deregister_no_gdump_sub(tsdn_t *tsdn, extent_t *extent) {
 extent_deregister_impl(tsdn, extent, 0);
}
