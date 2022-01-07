
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct TYPE_3__ {int cs_len; } ;
typedef TYPE_1__ cs_t ;


 int overflow_check_u64_mul (int,int) ;

__attribute__((used)) static int sp_get_sum (u32 start, u32 stop, cs_t *root_css_buf, u64 *result)
{
  u64 sum = 1;

  u32 i;

  for (i = start; i < stop; i++)
  {
    if (overflow_check_u64_mul (sum, root_css_buf[i].cs_len) == 0) return -1;

    sum *= root_css_buf[i].cs_len;
  }

  *result = sum;

  return 0;
}
