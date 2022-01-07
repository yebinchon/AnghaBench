
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cha_b_ctrl; char cha_b_data; } ;


 int MFPDELAY () ;
 TYPE_1__ atari_scc ;

__attribute__((used)) static inline void ata_scc_out(char c)
{
 do {
  MFPDELAY();
 } while (!(atari_scc.cha_b_ctrl & 0x04));
 MFPDELAY();
 atari_scc.cha_b_data = c;
}
