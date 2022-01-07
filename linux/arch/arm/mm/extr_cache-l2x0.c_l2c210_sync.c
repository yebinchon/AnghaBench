
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __l2c210_cache_sync (int ) ;
 int l2x0_base ;

__attribute__((used)) static void l2c210_sync(void)
{
 __l2c210_cache_sync(l2x0_base);
}
