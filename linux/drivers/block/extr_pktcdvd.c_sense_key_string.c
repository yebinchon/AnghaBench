
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t __u8 ;


 size_t ARRAY_SIZE (char const* const*) ;

__attribute__((used)) static const char *sense_key_string(__u8 index)
{
 static const char * const info[] = {
  "No sense", "Recovered error", "Not ready",
  "Medium error", "Hardware error", "Illegal request",
  "Unit attention", "Data protect", "Blank check",
 };

 return index < ARRAY_SIZE(info) ? info[index] : "INVALID";
}
