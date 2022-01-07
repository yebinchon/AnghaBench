
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ldm_error (char*,...) ;

__attribute__((used)) static int ldm_relative(const u8 *buffer, int buflen, int base, int offset)
{

 base += offset;
 if (!buffer || offset < 0 || base > buflen) {
  if (!buffer)
   ldm_error("!buffer");
  if (offset < 0)
   ldm_error("offset (%d) < 0", offset);
  if (base > buflen)
   ldm_error("base (%d) > buflen (%d)", base, buflen);
  return -1;
 }
 if (base + buffer[base] >= buflen) {
  ldm_error("base (%d) + buffer[base] (%d) >= buflen (%d)", base,
    buffer[base], buflen);
  return -1;
 }
 return buffer[base] + offset + 1;
}
