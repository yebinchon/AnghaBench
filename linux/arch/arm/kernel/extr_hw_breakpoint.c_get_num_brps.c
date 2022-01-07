
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ core_has_mismatch_brps () ;
 int get_num_brp_resources () ;

__attribute__((used)) static int get_num_brps(void)
{
 int brps = get_num_brp_resources();
 return core_has_mismatch_brps() ? brps - 1 : brps;
}
