
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (char const* const*) ;






__attribute__((used)) static const char *op_name(int op)
{
 static const char *const names[] = {
  [130] = "read",
  [129] = "write",
  [128] = "barrier",
  [131] = "flush",
  [132] = "discard" };

 if (op < 0 || op >= ARRAY_SIZE(names))
  return "unknown";

 if (!names[op])
  return "reserved";

 return names[op];
}
