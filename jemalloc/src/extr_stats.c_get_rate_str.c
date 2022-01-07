
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int UINT64_MAX ;
 int assert (int) ;
 int malloc_snprintf (char*,int,char*,...) ;

__attribute__((used)) static bool
get_rate_str(uint64_t dividend, uint64_t divisor, char str[6]) {
 if (divisor == 0 || dividend > divisor) {

  return 1;
 }
 if (dividend > 0) {
  assert(UINT64_MAX / dividend >= 1000);
 }

 unsigned n = (unsigned)((dividend * 1000) / divisor);
 if (n < 10) {
  malloc_snprintf(str, 6, "0.00%u", n);
 } else if (n < 100) {
  malloc_snprintf(str, 6, "0.0%u", n);
 } else if (n < 1000) {
  malloc_snprintf(str, 6, "0.%u", n);
 } else {
  malloc_snprintf(str, 6, "1");
 }

 return 0;
}
