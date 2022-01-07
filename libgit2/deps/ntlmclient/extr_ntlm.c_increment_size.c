
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t SIZE_MAX ;

__attribute__((used)) static inline bool increment_size(size_t *out, size_t incr)
{
 if (SIZE_MAX - *out < incr) {
  *out = (size_t)-1;
  return 0;
 }

 *out = *out + incr;
 return 1;
}
