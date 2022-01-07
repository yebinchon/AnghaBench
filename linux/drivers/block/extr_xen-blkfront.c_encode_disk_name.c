
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *encode_disk_name(char *ptr, unsigned int n)
{
 if (n >= 26)
  ptr = encode_disk_name(ptr, n / 26 - 1);
 *ptr = 'a' + n % 26;
 return ptr + 1;
}
