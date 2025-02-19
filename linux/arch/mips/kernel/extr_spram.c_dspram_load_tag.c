
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CKSEG0 ;
 int ERRCTL_SPRAM ;
 int Index_Load_Tag_D ;
 unsigned int bis_c0_errctl (int ) ;
 int cache_op (int ,unsigned int) ;
 int ehb () ;
 unsigned int read_c0_dtaglo () ;
 int write_c0_errctl (unsigned int) ;

__attribute__((used)) static unsigned int dspram_load_tag(unsigned int offset)
{
 unsigned int data;
 unsigned int errctl;

 errctl = bis_c0_errctl(ERRCTL_SPRAM);
 ehb();
 cache_op(Index_Load_Tag_D, CKSEG0 | offset);
 ehb();
 data = read_c0_dtaglo();
 ehb();
 write_c0_errctl(errctl);
 ehb();

 return data;
}
