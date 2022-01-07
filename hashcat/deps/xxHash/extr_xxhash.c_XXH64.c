
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ XXH_endianess ;
typedef int XXH64_state_t ;


 unsigned long long XXH64_digest (int *) ;
 unsigned long long XXH64_endian_align (void const*,size_t,unsigned long long,scalar_t__,int ) ;
 int XXH64_reset (int *,unsigned long long) ;
 int XXH64_update (int *,void const*,size_t) ;
 int XXH_CPU_LITTLE_ENDIAN ;
 scalar_t__ XXH_FORCE_ALIGN_CHECK ;
 scalar_t__ XXH_FORCE_NATIVE_FORMAT ;
 int XXH_aligned ;
 scalar_t__ XXH_bigEndian ;
 scalar_t__ XXH_littleEndian ;
 int XXH_unaligned ;

unsigned long long XXH64 (const void* input, size_t len, unsigned long long seed)
{







    XXH_endianess endian_detected = (XXH_endianess)XXH_CPU_LITTLE_ENDIAN;

    if (XXH_FORCE_ALIGN_CHECK) {
        if ((((size_t)input) & 7)==0) {
            if ((endian_detected==XXH_littleEndian) || XXH_FORCE_NATIVE_FORMAT)
                return XXH64_endian_align(input, len, seed, XXH_littleEndian, XXH_aligned);
            else
                return XXH64_endian_align(input, len, seed, XXH_bigEndian, XXH_aligned);
    } }

    if ((endian_detected==XXH_littleEndian) || XXH_FORCE_NATIVE_FORMAT)
        return XXH64_endian_align(input, len, seed, XXH_littleEndian, XXH_unaligned);
    else
        return XXH64_endian_align(input, len, seed, XXH_bigEndian, XXH_unaligned);

}
