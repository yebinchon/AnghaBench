
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;



__attribute__((used)) static s32 s32_gte(s32 a, s32 b) {
  a -= b;

  return ~(a >> 31);
}
