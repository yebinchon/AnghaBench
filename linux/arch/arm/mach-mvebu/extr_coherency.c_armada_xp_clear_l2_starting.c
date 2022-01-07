
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int armada_xp_clear_shared_l2 () ;

__attribute__((used)) static int armada_xp_clear_l2_starting(unsigned int cpu)
{
 armada_xp_clear_shared_l2();
 return 0;
}
