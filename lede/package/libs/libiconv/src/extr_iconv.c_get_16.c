
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char const wchar_t ;



__attribute__((used)) static inline wchar_t get_16(const unsigned char *s, int endian)
{
 endian &= 1;
 return s[endian]<<8 | s[endian^1];
}
