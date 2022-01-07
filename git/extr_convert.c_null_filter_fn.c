
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_filter {int dummy; } ;


 int memmove (char*,char const*,size_t) ;

__attribute__((used)) static int null_filter_fn(struct stream_filter *filter,
     const char *input, size_t *isize_p,
     char *output, size_t *osize_p)
{
 size_t count;

 if (!input)
  return 0;
 count = *isize_p;
 if (*osize_p < count)
  count = *osize_p;
 if (count) {
  memmove(output, input, count);
  *isize_p -= count;
  *osize_p -= count;
 }
 return 0;
}
