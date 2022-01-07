
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sscanf (char const*,char*,int*,int*,int*,int*) ;

__attribute__((used)) static inline bool is_ipv4_addr(const char *s)
{
 int u[4];
 if (sscanf(s, "%d.%d.%d.%d", &u[0], &u[1], &u[2], &u[3]) == 4)
  return 1;
 else
  return 0;
}
