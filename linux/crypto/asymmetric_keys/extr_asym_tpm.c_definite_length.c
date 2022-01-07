
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t definite_length(uint32_t len)
{
 if (len <= 127)
  return 1;
 if (len <= 255)
  return 2;
 return 3;
}
