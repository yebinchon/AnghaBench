
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int armada_370_xp_mbus_win_cfg_offset(int win)
{
 if (win < 8)
  return win << 4;
 else
  return 0x90 + ((win - 8) << 3);
}
