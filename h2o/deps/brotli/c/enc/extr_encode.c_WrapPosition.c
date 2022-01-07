
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef unsigned int uint32_t ;



__attribute__((used)) static uint32_t WrapPosition(uint64_t position) {
  uint32_t result = (uint32_t)position;
  uint64_t gb = position >> 30;
  if (gb > 2) {

    result = (result & ((1u << 30) - 1)) | ((uint32_t)((gb - 1) & 1) + 1) << 30;
  }
  return result;
}
