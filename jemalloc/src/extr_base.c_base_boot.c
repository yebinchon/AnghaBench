
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int extent_hooks_t ;


 int * b0 ;
 int * base_new (int *,int ,int *) ;
 int extent_hooks_default ;

bool
base_boot(tsdn_t *tsdn) {
 b0 = base_new(tsdn, 0, (extent_hooks_t *)&extent_hooks_default);
 return (b0 == ((void*)0));
}
