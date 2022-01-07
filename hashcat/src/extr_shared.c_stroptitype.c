
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 char const* OPTI_STR_APPENDED_SALT ;
 char const* OPTI_STR_BRUTE_FORCE ;
 char const* OPTI_STR_EARLY_SKIP ;
 char const* OPTI_STR_MEET_IN_MIDDLE ;
 char const* OPTI_STR_NOT_ITERATED ;
 char const* OPTI_STR_NOT_SALTED ;
 char const* OPTI_STR_OPTIMIZED_KERNEL ;
 char const* OPTI_STR_PRECOMPUTE_INIT ;
 char const* OPTI_STR_PREPENDED_SALT ;
 char const* OPTI_STR_RAW_HASH ;
 char const* OPTI_STR_SINGLE_HASH ;
 char const* OPTI_STR_SINGLE_SALT ;
 char const* OPTI_STR_SLOW_HASH_SIMD_COMP ;
 char const* OPTI_STR_SLOW_HASH_SIMD_INIT ;
 char const* OPTI_STR_SLOW_HASH_SIMD_LOOP ;
 char const* OPTI_STR_USES_BITS_16 ;
 char const* OPTI_STR_USES_BITS_32 ;
 char const* OPTI_STR_USES_BITS_64 ;
 char const* OPTI_STR_USES_BITS_8 ;
 char const* OPTI_STR_ZERO_BYTE ;
const char *stroptitype (const u32 opti_type)
{
  switch (opti_type)
  {
    case 141: return OPTI_STR_OPTIMIZED_KERNEL;
    case 128: return OPTI_STR_ZERO_BYTE;
    case 140: return OPTI_STR_PRECOMPUTE_INIT;
    case 144: return OPTI_STR_MEET_IN_MIDDLE;
    case 145: return OPTI_STR_EARLY_SKIP;
    case 142: return OPTI_STR_NOT_SALTED;
    case 143: return OPTI_STR_NOT_ITERATED;
    case 139: return OPTI_STR_PREPENDED_SALT;
    case 147: return OPTI_STR_APPENDED_SALT;
    case 137: return OPTI_STR_SINGLE_HASH;
    case 136: return OPTI_STR_SINGLE_SALT;
    case 146: return OPTI_STR_BRUTE_FORCE;
    case 138: return OPTI_STR_RAW_HASH;
    case 134: return OPTI_STR_SLOW_HASH_SIMD_INIT;
    case 133: return OPTI_STR_SLOW_HASH_SIMD_LOOP;
    case 135: return OPTI_STR_SLOW_HASH_SIMD_COMP;
    case 129: return OPTI_STR_USES_BITS_8;
    case 132: return OPTI_STR_USES_BITS_16;
    case 131: return OPTI_STR_USES_BITS_32;
    case 130: return OPTI_STR_USES_BITS_64;
  }

  return ((void*)0);
}
