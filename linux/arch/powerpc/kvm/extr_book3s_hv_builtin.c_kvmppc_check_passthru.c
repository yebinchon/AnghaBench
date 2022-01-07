
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __be32 ;



__attribute__((used)) static inline int kvmppc_check_passthru(u32 xisr, __be32 xirr, bool *again)
{
 return 1;
}
