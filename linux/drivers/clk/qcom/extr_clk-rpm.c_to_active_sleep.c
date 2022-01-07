
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_rpm {scalar_t__ active_only; } ;



__attribute__((used)) static void to_active_sleep(struct clk_rpm *r, unsigned long rate,
       unsigned long *active, unsigned long *sleep)
{
 *active = rate;





 if (r->active_only)
  *sleep = 0;
 else
  *sleep = *active;
}
