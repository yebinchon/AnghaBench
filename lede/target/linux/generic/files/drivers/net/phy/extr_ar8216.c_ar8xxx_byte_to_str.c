
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int snprintf (char*,int,char*,unsigned long,...) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void
ar8xxx_byte_to_str(char *buf, int len, u64 byte)
{
 unsigned long b;
 const char *unit;

 if (byte >= 0x40000000) {
  b = byte * 10 / 0x40000000;
  unit = "GiB";
 } else if (byte >= 0x100000) {
  b = byte * 10 / 0x100000;
  unit = "MiB";
 } else if (byte >= 0x400) {
  b = byte * 10 / 0x400;
  unit = "KiB";
 } else {
  b = byte;
  unit = "Byte";
 }
 if (strcmp(unit, "Byte"))
  snprintf(buf, len, "%lu.%lu %s", b / 10, b % 10, unit);
 else
  snprintf(buf, len, "%lu %s", b, unit);
}
