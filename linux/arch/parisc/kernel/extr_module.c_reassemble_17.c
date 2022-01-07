
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int reassemble_17(int as17)
{
 return (((as17 & 0x10000) >> 16) |
  ((as17 & 0x0f800) << 5) |
  ((as17 & 0x00400) >> 8) |
  ((as17 & 0x003ff) << 3));
}
