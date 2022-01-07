
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int udelay (int) ;

__attribute__((used)) static inline void
wait_for_page_switch(void)
{
 udelay(5);
}
