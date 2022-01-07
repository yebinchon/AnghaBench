
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ memcmp (char*,char*,int) ;

__attribute__((used)) static inline int OK_id(char *s)
{
 return memcmp (s, "GEM", 3) == 0 || memcmp (s, "BGM", 3) == 0 ||
  memcmp (s, "LNX", 3) == 0 || memcmp (s, "SWP", 3) == 0 ||
  memcmp (s, "RAW", 3) == 0 ;
}
