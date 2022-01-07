
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int sun4d_encode_irq(int board, int lvl, int slot)
{
 return (board + 1) << 5 | (lvl << 2) | slot;
}
