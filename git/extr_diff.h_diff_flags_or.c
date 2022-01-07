
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_flags {int dummy; } ;



__attribute__((used)) static inline void diff_flags_or(struct diff_flags *a,
     const struct diff_flags *b)
{
 char *tmp_a = (char *)a;
 const char *tmp_b = (const char *)b;
 int i;

 for (i = 0; i < sizeof(struct diff_flags); i++)
  tmp_a[i] |= tmp_b[i];
}
