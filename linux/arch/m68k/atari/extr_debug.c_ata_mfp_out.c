
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int trn_stat; char usart_dta; } ;


 int barrier () ;
 TYPE_1__ st_mfp ;

__attribute__((used)) static inline void ata_mfp_out(char c)
{
 while (!(st_mfp.trn_stat & 0x80))
  barrier();
 st_mfp.usart_dta = c;
}
