
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int mpc52xx_is_extirq(int l1, int l2)
{
 return ((l1 == 0) && (l2 == 0)) ||
        ((l1 == 1) && (l2 >= 1) && (l2 <= 3));
}
