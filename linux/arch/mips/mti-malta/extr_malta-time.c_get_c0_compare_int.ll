; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mti-malta/extr_malta-time.c_get_c0_compare_int.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mti-malta/extr_malta-time.c_get_c0_compare_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_has_veic = common dso_local global i64 0, align 8
@MSC01E_INT_CPUCTR = common dso_local global i32 0, align 4
@mips_timer_dispatch = common dso_local global i32 0, align 4
@MSC01E_INT_BASE = common dso_local global i32 0, align 4
@mips_cpu_timer_irq = common dso_local global i32 0, align 4
@MIPS_CPU_IRQ_BASE = common dso_local global i32 0, align 4
@cp0_compare_irq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_c0_compare_int() #0 {
  %1 = load i64, i64* @cpu_has_veic, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %10

3:                                                ; preds = %0
  %4 = load i32, i32* @MSC01E_INT_CPUCTR, align 4
  %5 = load i32, i32* @mips_timer_dispatch, align 4
  %6 = call i32 @set_vi_handler(i32 %4, i32 %5)
  %7 = load i32, i32* @MSC01E_INT_BASE, align 4
  %8 = load i32, i32* @MSC01E_INT_CPUCTR, align 4
  %9 = add i32 %7, %8
  store i32 %9, i32* @mips_cpu_timer_irq, align 4
  br label %20

10:                                               ; preds = %0
  %11 = call i64 (...) @mips_gic_present()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 (...) @gic_get_c0_compare_int()
  store i32 %14, i32* @mips_cpu_timer_irq, align 4
  br label %19

15:                                               ; preds = %10
  %16 = load i32, i32* @MIPS_CPU_IRQ_BASE, align 4
  %17 = load i32, i32* @cp0_compare_irq, align 4
  %18 = add i32 %16, %17
  store i32 %18, i32* @mips_cpu_timer_irq, align 4
  br label %19

19:                                               ; preds = %15, %13
  br label %20

20:                                               ; preds = %19, %3
  %21 = load i32, i32* @mips_cpu_timer_irq, align 4
  ret i32 %21
}

declare dso_local i32 @set_vi_handler(i32, i32) #1

declare dso_local i64 @mips_gic_present(...) #1

declare dso_local i32 @gic_get_c0_compare_int(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
