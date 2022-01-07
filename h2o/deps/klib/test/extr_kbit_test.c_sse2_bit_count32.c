
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int __m128i ;


 int _mm_add_epi32 (int ,int ) ;
 int _mm_and_si128 (int ,int ) ;
 int _mm_load_si128 (int const*) ;
 int _mm_set_epi32 (unsigned int const,unsigned int const,unsigned int const,unsigned int const) ;
 int _mm_srli_epi32 (int ,int) ;
 int _mm_store_si128 (int *,int ) ;
 int _mm_xor_si128 (int ,int ) ;

__attribute__((used)) static uint32_t sse2_bit_count32(const __m128i* block, const __m128i* block_end)
{
    const unsigned mu1 = 0x55555555;
    const unsigned mu2 = 0x33333333;
    const unsigned mu3 = 0x0F0F0F0F;
    const unsigned mu4 = 0x0000003F;

 uint32_t tcnt[4];


    __m128i m1 = _mm_set_epi32 (mu1, mu1, mu1, mu1);
    __m128i m2 = _mm_set_epi32 (mu2, mu2, mu2, mu2);
    __m128i m3 = _mm_set_epi32 (mu3, mu3, mu3, mu3);
    __m128i m4 = _mm_set_epi32 (mu4, mu4, mu4, mu4);
    __m128i mcnt;
    mcnt = _mm_xor_si128(m1, m1);

    __m128i tmp1, tmp2;
    do
    {
        __m128i b = _mm_load_si128(block);
        ++block;


        tmp1 = _mm_srli_epi32(b, 1);
        tmp1 = _mm_and_si128(tmp1, m1);
        tmp2 = _mm_and_si128(b, m1);
        b = _mm_add_epi32(tmp1, tmp2);


        tmp1 = _mm_srli_epi32(b, 2);
        tmp1 = _mm_and_si128(tmp1, m2);
        tmp2 = _mm_and_si128(b, m2);
        b = _mm_add_epi32(tmp1, tmp2);


        tmp1 = _mm_srli_epi32(b, 4);
        b = _mm_add_epi32(b, tmp1);
        b = _mm_and_si128(b, m3);


        tmp1 = _mm_srli_epi32 (b, 8);
        b = _mm_add_epi32(b, tmp1);


        tmp1 = _mm_srli_epi32 (b, 16);
        b = _mm_add_epi32(b, tmp1);
        b = _mm_and_si128(b, m4);

        mcnt = _mm_add_epi32(mcnt, b);

    } while (block < block_end);

    _mm_store_si128((__m128i*)tcnt, mcnt);

    return tcnt[0] + tcnt[1] + tcnt[2] + tcnt[3];
}
