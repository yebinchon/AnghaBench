
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef enum mc_cmd_status { ____Placeholder_mc_cmd_status } mc_cmd_status ;


 scalar_t__ ARRAY_SIZE (int const*) ;


 int EINVAL ;
__attribute__((used)) static int mc_status_to_error(enum mc_cmd_status status)
{
 static const int mc_status_to_error_map[] = {
  [130] = 0,
  [138] = -148,
  [132] = -140,
  [135] = -146,
  [136] = -141,
  [129] = -139,
  [131] = -145,
  [133] = -143,
  [137] = -147,
  [128] = -142,
  [134] = -144,
 };

 if ((u32)status >= ARRAY_SIZE(mc_status_to_error_map))
  return -EINVAL;

 return mc_status_to_error_map[status];
}
