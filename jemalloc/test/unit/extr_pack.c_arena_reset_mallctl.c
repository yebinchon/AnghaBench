
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mib ;


 int assert_d_eq (int ,int ,char*) ;
 int mallctlbymib (size_t*,size_t,int *,int *,int *,int ) ;
 int mallctlnametomib (char*,size_t*,size_t*) ;

__attribute__((used)) static void
arena_reset_mallctl(unsigned arena_ind) {
 size_t mib[3];
 size_t miblen = sizeof(mib)/sizeof(size_t);

 assert_d_eq(mallctlnametomib("arena.0.reset", mib, &miblen), 0,
     "Unexpected mallctlnametomib() failure");
 mib[1] = (size_t)arena_ind;
 assert_d_eq(mallctlbymib(mib, miblen, ((void*)0), ((void*)0), ((void*)0), 0), 0,
     "Unexpected mallctlbymib() failure");
}
