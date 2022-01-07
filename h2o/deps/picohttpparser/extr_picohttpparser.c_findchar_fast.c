
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __m128i ;


 int _SIDD_CMP_RANGES ;
 int _SIDD_LEAST_SIGNIFICANT ;
 int _SIDD_UBYTE_OPS ;
 int _mm_cmpestri (int ,size_t,int ,int,int) ;
 int _mm_loadu_si128 (int const*) ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static const char *findchar_fast(const char *buf, const char *buf_end, const char *ranges, size_t ranges_size, int *found)
{
    *found = 0;
    (void)buf_end;
    (void)ranges;
    (void)ranges_size;

    return buf;
}
