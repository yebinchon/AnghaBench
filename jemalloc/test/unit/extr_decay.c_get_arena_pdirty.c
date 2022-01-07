
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdirty ;
typedef int mib ;


 int assert_d_eq (int ,int ,char*) ;
 int do_epoch () ;
 int mallctlbymib (size_t*,size_t,void*,size_t*,int *,int ) ;
 int mallctlnametomib (char*,size_t*,size_t*) ;

__attribute__((used)) static size_t
get_arena_pdirty(unsigned arena_ind) {
 do_epoch();
 size_t mib[4];
 size_t miblen = sizeof(mib)/sizeof(size_t);
 assert_d_eq(mallctlnametomib("stats.arenas.0.pdirty", mib, &miblen), 0,
     "Unexpected mallctlnametomib() failure");
 mib[2] = (size_t)arena_ind;
 size_t pdirty;
 size_t sz = sizeof(pdirty);
 assert_d_eq(mallctlbymib(mib, miblen, (void *)&pdirty, &sz, ((void*)0), 0), 0,
     "Unexpected mallctlbymib() failure");
 return pdirty;
}
