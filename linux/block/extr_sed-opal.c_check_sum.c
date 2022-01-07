
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct d0_single_user_mode {int num_locking_objects; } ;


 scalar_t__ be32_to_cpu (int ) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static bool check_sum(const void *data)
{
 const struct d0_single_user_mode *sum = data;
 u32 nlo = be32_to_cpu(sum->num_locking_objects);

 if (nlo == 0) {
  pr_debug("Need at least one locking object.\n");
  return 0;
 }

 pr_debug("Number of locking objects: %d\n", nlo);

 return 1;
}
