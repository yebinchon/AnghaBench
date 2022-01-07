
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char const*,char) ;

__attribute__((used)) static inline int directory_size(const char *filename)
{
 const char *s = strrchr(filename, '/');
 if (!s)
  return 0;
 return s - filename + 1;
}
