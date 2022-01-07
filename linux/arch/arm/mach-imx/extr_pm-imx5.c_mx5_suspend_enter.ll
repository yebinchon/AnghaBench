; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_pm-imx5.c_mx5_suspend_enter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_pm-imx5.c_mx5_suspend_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STOP_POWER_OFF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@gpc_base = common dso_local global i64 0, align 8
@MXC_SRPG_EMPGC0_SRPGCR = common dso_local global i64 0, align 8
@MXC_SRPG_EMPGC1_SRPGCR = common dso_local global i64 0, align 8
@suspend_ocram_base = common dso_local global i32 0, align 4
@IMX5_DEFAULT_CPU_IDLE_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mx5_suspend_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx5_suspend_enter(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %9 [
    i32 129, label %5
    i32 128, label %8
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @STOP_POWER_OFF, align 4
  %7 = call i32 @mx5_cpu_lp_set(i32 %6)
  br label %12

8:                                                ; preds = %1
  br label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %37

12:                                               ; preds = %8, %5
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 129
  br i1 %14, label %15, label %32

15:                                               ; preds = %12
  %16 = call i32 (...) @local_flush_tlb_all()
  %17 = call i32 (...) @flush_cache_all()
  %18 = load i64, i64* @gpc_base, align 8
  %19 = load i64, i64* @MXC_SRPG_EMPGC0_SRPGCR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @imx_writel(i32 0, i64 %20)
  %22 = load i64, i64* @gpc_base, align 8
  %23 = load i64, i64* @MXC_SRPG_EMPGC1_SRPGCR, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @imx_writel(i32 0, i64 %24)
  br i1 true, label %26, label %29

26:                                               ; preds = %15
  %27 = load i32, i32* @suspend_ocram_base, align 4
  %28 = call i32 @imx5_suspend_in_ocram_fn(i32 %27)
  br label %31

29:                                               ; preds = %15
  %30 = call i32 (...) @cpu_do_idle()
  br label %31

31:                                               ; preds = %29, %26
  br label %34

32:                                               ; preds = %12
  %33 = call i32 (...) @cpu_do_idle()
  br label %34

34:                                               ; preds = %32, %31
  %35 = load i32, i32* @IMX5_DEFAULT_CPU_IDLE_STATE, align 4
  %36 = call i32 @mx5_cpu_lp_set(i32 %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %9
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @mx5_cpu_lp_set(i32) #1

declare dso_local i32 @local_flush_tlb_all(...) #1

declare dso_local i32 @flush_cache_all(...) #1

declare dso_local i32 @imx_writel(i32, i64) #1

declare dso_local i32 @imx5_suspend_in_ocram_fn(i32) #1

declare dso_local i32 @cpu_do_idle(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
