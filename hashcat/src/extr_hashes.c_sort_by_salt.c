
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* salt_buf; scalar_t__* salt_buf_pc; scalar_t__ salt_iter; scalar_t__ salt_len; } ;
typedef TYPE_1__ salt_t ;



int sort_by_salt (const void *v1, const void *v2)
{
  const salt_t *s1 = (const salt_t *) v1;
  const salt_t *s2 = (const salt_t *) v2;

  const int res1 = (int) s1->salt_len - (int) s2->salt_len;

  if (res1 != 0) return (res1);

  const int res2 = (int) s1->salt_iter - (int) s2->salt_iter;

  if (res2 != 0) return (res2);

  for (int n = 0; n < 64; n++)
  {
    if (s1->salt_buf[n] > s2->salt_buf[n]) return 1;
    if (s1->salt_buf[n] < s2->salt_buf[n]) return -1;
  }

  for (int n = 0; n < 64; n++)
  {
    if (s1->salt_buf_pc[n] > s2->salt_buf_pc[n]) return 1;
    if (s1->salt_buf_pc[n] < s2->salt_buf_pc[n]) return -1;
  }

  return 0;
}
