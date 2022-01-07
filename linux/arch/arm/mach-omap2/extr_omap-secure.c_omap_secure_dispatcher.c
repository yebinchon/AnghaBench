
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __pa (int *) ;
 int flush_cache_all () ;
 int omap_smc2 (int ,int ,int ) ;
 int outer_clean_range (int ,int ) ;

u32 omap_secure_dispatcher(u32 idx, u32 flag, u32 nargs, u32 arg1, u32 arg2,
        u32 arg3, u32 arg4)
{
 u32 ret;
 u32 param[5];

 param[0] = nargs;
 param[1] = arg1;
 param[2] = arg2;
 param[3] = arg3;
 param[4] = arg4;





 flush_cache_all();
 outer_clean_range(__pa(param), __pa(param + 5));
 ret = omap_smc2(idx, flag, __pa(param));

 return ret;
}
