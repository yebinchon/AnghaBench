
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UTF8_CONTINUATION_BYTE ;
 int assert (int) ;
 int* utf8_coding_length ;

const char* jvp_utf8_backtrack(const char* start, const char* min, int *missing_bytes) {
  assert(min <= start);
  if (min == start) {
    return min;
  }
  int length = 0;
  int seen = 1;
  while (start >= min && (length = utf8_coding_length[(unsigned char)*start]) == UTF8_CONTINUATION_BYTE) {
    start--;
    seen++;
  }
  if (length == 0 || length == UTF8_CONTINUATION_BYTE || length - seen < 0) {
    return ((void*)0);
  }
  if (missing_bytes) *missing_bytes = length - seen;
  return start;
}
