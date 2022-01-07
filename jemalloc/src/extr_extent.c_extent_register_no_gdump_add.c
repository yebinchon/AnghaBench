
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int extent_t ;


 int extent_register_impl (int *,int *,int) ;

__attribute__((used)) static bool
extent_register_no_gdump_add(tsdn_t *tsdn, extent_t *extent) {
 return extent_register_impl(tsdn, extent, 0);
}
