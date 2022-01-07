
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uniphier_cache_data {int dummy; } ;


 int UNIPHIER_SSCOQM_S_ALL ;
 int __uniphier_cache_maint_common (struct uniphier_cache_data*,int ,int ,int) ;
 int __uniphier_cache_sync (struct uniphier_cache_data*) ;

__attribute__((used)) static void __uniphier_cache_maint_all(struct uniphier_cache_data *data,
           u32 operation)
{
 __uniphier_cache_maint_common(data, 0, 0,
          UNIPHIER_SSCOQM_S_ALL | operation);

 __uniphier_cache_sync(data);
}
