
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CKSEG0 ;
 int ERRCTL_SPRAM ;
 int Index_Store_Tag_D ;
 unsigned int bis_c0_errctl (int ) ;
 int cache_op (int ,unsigned int) ;
 int ehb () ;
 int write_c0_dtaglo (unsigned int) ;
 int write_c0_errctl (unsigned int) ;

__attribute__((used)) static void dspram_store_tag(unsigned int offset, unsigned int data)
{
 unsigned int errctl;


 errctl = bis_c0_errctl(ERRCTL_SPRAM);
 ehb();
 write_c0_dtaglo(data);
 ehb();
 cache_op(Index_Store_Tag_D, CKSEG0 | offset);
 ehb();
 write_c0_errctl(errctl);
 ehb();
}
