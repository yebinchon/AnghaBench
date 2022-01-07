
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CSR_SIP ;
 int SIE_SSIE ;
 int csr_clear (int ,int ) ;

__attribute__((used)) static inline void clear_ipi(void)
{
 csr_clear(CSR_SIP, SIE_SSIE);
}
