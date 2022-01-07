
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_5__ {scalar_t__ target_identifier; } ;
struct TYPE_6__ {scalar_t__ target_identifier; TYPE_1__ valid; int check_info; } ;
typedef TYPE_2__ sal_log_mod_error_info_t ;
typedef int peidx_table_t ;
struct TYPE_7__ {int level; } ;
typedef TYPE_3__ pal_cache_check_info_t ;


 TYPE_2__* peidx_bus_check (int *,int ) ;
 scalar_t__ peidx_cache_check (int *,int) ;
 int peidx_cache_check_num (int *) ;

__attribute__((used)) static u64
get_target_identifier(peidx_table_t *peidx)
{
 u64 target_address = 0;
 sal_log_mod_error_info_t *smei;
 pal_cache_check_info_t *pcci;
 int i, level = 9;






 for (i = 0; i < peidx_cache_check_num(peidx); i++) {
  smei = (sal_log_mod_error_info_t *)peidx_cache_check(peidx, i);
  if (smei->valid.target_identifier && smei->target_identifier) {
   pcci = (pal_cache_check_info_t *)&(smei->check_info);
   if (!target_address || (pcci->level < level)) {
    target_address = smei->target_identifier;
    level = pcci->level;
    continue;
   }
  }
 }
 if (target_address)
  return target_address;




 smei = peidx_bus_check(peidx, 0);
 if (smei && smei->valid.target_identifier)
  return smei->target_identifier;

 return 0;
}
