
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct arch_hibernate_hdr_invariants {int uts_version; } ;
struct TYPE_2__ {int version; } ;


 TYPE_1__* init_utsname () ;
 int memcpy (int ,int ,int) ;
 int memset (struct arch_hibernate_hdr_invariants*,int ,int) ;

__attribute__((used)) static inline void arch_hdr_invariants(struct arch_hibernate_hdr_invariants *i)
{
 memset(i, 0, sizeof(*i));
 memcpy(i->uts_version, init_utsname()->version, sizeof(i->uts_version));
}
