; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-mvebu/extr_pmsu.c_armada_38x_do_cpu_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-mvebu/extr_pmsu.c_armada_38x_do_cpu_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PMSU_PREPARE_DEEP_IDLE = common dso_local global i64 0, align 8
@louis = common dso_local global i32 0, align 4
@SCU_PM_POWEROFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @armada_38x_do_cpu_suspend(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i64, i64* @PMSU_PREPARE_DEEP_IDLE, align 8
  %8 = load i64, i64* %3, align 8
  %9 = or i64 %8, %7
  store i64 %9, i64* %3, align 8
  br label %10

10:                                               ; preds = %6, %1
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @mvebu_v7_pmsu_idle_prepare(i64 %11)
  %13 = load i32, i32* @louis, align 4
  %14 = call i32 @v7_exit_coherency_flush(i32 %13)
  %15 = call i32 (...) @mvebu_get_scu_base()
  %16 = load i32, i32* @SCU_PM_POWEROFF, align 4
  %17 = call i32 @scu_power_mode(i32 %15, i32 %16)
  %18 = call i32 (...) @cpu_do_idle()
  ret i32 1
}

declare dso_local i32 @mvebu_v7_pmsu_idle_prepare(i64) #1

declare dso_local i32 @v7_exit_coherency_flush(i32) #1

declare dso_local i32 @scu_power_mode(i32, i32) #1

declare dso_local i32 @mvebu_get_scu_base(...) #1

declare dso_local i32 @cpu_do_idle(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
