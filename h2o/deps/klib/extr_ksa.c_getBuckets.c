
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t saint_t ;



__attribute__((used)) static inline void getBuckets(const saint_t *C, saint_t *B, saint_t k, saint_t end)
{
 saint_t i, sum = 0;
 if (end) for (i = 0; i < k; ++i) sum += C[i], B[i] = sum;
 else for (i = 0; i < k; ++i) sum += C[i], B[i] = sum - C[i];
}
