
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_cache_data {scalar_t__ op_base; } ;


 scalar_t__ UNIPHIER_SSCOPE ;
 int UNIPHIER_SSCOPE_CM_SYNC ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void __uniphier_cache_sync(struct uniphier_cache_data *data)
{

 writel_relaxed(UNIPHIER_SSCOPE_CM_SYNC,
         data->op_base + UNIPHIER_SSCOPE);

 readl_relaxed(data->op_base + UNIPHIER_SSCOPE);
}
