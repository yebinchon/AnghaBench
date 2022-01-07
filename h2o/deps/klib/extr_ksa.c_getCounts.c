
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t saint_t ;


 size_t chr (size_t) ;

__attribute__((used)) static void getCounts(const unsigned char *T, saint_t *C, saint_t n, saint_t k, int cs)
{
 saint_t i;
 for (i = 0; i < k; ++i) C[i] = 0;
 for (i = 0; i < n; ++i) {
  saint_t c = chr(i);
  ++C[c > 0? c : 0];
 }
}
