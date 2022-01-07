
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hv_irq_version ;

__attribute__((used)) static bool sun4v_cookie_only_virqs(void)
{
 if (hv_irq_version >= 3)
  return 1;
 return 0;
}
