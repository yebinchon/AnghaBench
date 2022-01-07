
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mc_cmd_status { ____Placeholder_mc_cmd_status } mc_cmd_status ;


 unsigned int ARRAY_SIZE (char const* const*) ;
__attribute__((used)) static const char *mc_status_to_string(enum mc_cmd_status status)
{
 static const char *const status_strings[] = {
  [131] = "Command completed successfully",
  [130] = "Command ready to be processed",
  [139] = "Authentication error",
  [133] = "No privilege",
  [136] = "DMA or I/O error",
  [137] = "Configuration error",
  [129] = "Operation timed out",
  [132] = "No resources",
  [134] = "No memory available",
  [138] = "Device is busy",
  [128] = "Unsupported operation",
  [135] = "Invalid state"
 };

 if ((unsigned int)status >= ARRAY_SIZE(status_strings))
  return "Unknown MC error";

 return status_strings[status];
}
