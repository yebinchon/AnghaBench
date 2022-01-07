
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgprotval_t ;
typedef int pgprot_t ;


 int pgprot_val (int ) ;

__attribute__((used)) static inline bool conflicts(pgprot_t prot, pgprotval_t val)
{
 return (pgprot_val(prot) & ~val) != pgprot_val(prot);
}
