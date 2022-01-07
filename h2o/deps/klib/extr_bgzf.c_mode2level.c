
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strchr (char const*,unsigned char) ;

__attribute__((used)) static int mode2level(const char *__restrict mode)
{
 int i, compress_level = -1;
 for (i = 0; mode[i]; ++i)
  if (mode[i] >= '0' && mode[i] <= '9') break;
 if (mode[i]) compress_level = (int)mode[i] - '0';
 if (strchr(mode, 'u')) compress_level = 0;
 return compress_level;
}
