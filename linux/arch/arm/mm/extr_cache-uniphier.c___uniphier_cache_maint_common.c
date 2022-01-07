
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct uniphier_cache_data {scalar_t__ op_base; } ;


 scalar_t__ UNIPHIER_SSCOLPQS ;
 unsigned long UNIPHIER_SSCOLPQS_EF ;
 scalar_t__ UNIPHIER_SSCOPPQSEF ;
 unsigned long UNIPHIER_SSCOPPQSEF_FE ;
 unsigned long UNIPHIER_SSCOPPQSEF_OE ;
 scalar_t__ UNIPHIER_SSCOQAD ;
 scalar_t__ UNIPHIER_SSCOQM ;
 unsigned long UNIPHIER_SSCOQM_CE ;
 int UNIPHIER_SSCOQM_S_IS_RANGE (unsigned long) ;
 scalar_t__ UNIPHIER_SSCOQSZ ;
 int cpu_relax () ;
 scalar_t__ likely (int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 unsigned long readl_relaxed (scalar_t__) ;
 scalar_t__ unlikely (unsigned long) ;
 int writel_relaxed (unsigned long,scalar_t__) ;

__attribute__((used)) static void __uniphier_cache_maint_common(struct uniphier_cache_data *data,
       unsigned long start,
       unsigned long size,
       u32 operation)
{
 unsigned long flags;
 local_irq_save(flags);


 writel_relaxed(UNIPHIER_SSCOLPQS_EF, data->op_base + UNIPHIER_SSCOLPQS);

 do {

  writel_relaxed(UNIPHIER_SSCOQM_CE | operation,
          data->op_base + UNIPHIER_SSCOQM);


  if (likely(UNIPHIER_SSCOQM_S_IS_RANGE(operation))) {
   writel_relaxed(start, data->op_base + UNIPHIER_SSCOQAD);
   writel_relaxed(size, data->op_base + UNIPHIER_SSCOQSZ);
  }
 } while (unlikely(readl_relaxed(data->op_base + UNIPHIER_SSCOPPQSEF) &
     (UNIPHIER_SSCOPPQSEF_FE | UNIPHIER_SSCOPPQSEF_OE)));


 while (likely(readl_relaxed(data->op_base + UNIPHIER_SSCOLPQS) !=
        UNIPHIER_SSCOLPQS_EF))
  cpu_relax();

 local_irq_restore(flags);
}
