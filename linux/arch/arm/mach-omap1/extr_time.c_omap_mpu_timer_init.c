
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_err (char*) ;

__attribute__((used)) static inline void omap_mpu_timer_init(void)
{
 pr_err("Bogus timer, should not happen\n");
}
