; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_pm-imx7ulp.c_imx7ulp_set_lpm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_pm-imx7ulp.c_imx7ulp_set_lpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@smc1_base = common dso_local global i64 0, align 8
@SMC_PMCTRL = common dso_local global i64 0, align 8
@BM_PMCTRL_RUNM = common dso_local global i32 0, align 4
@BM_PMCTRL_STOPM = common dso_local global i32 0, align 4
@BM_PMCTRL_PSTOPO = common dso_local global i32 0, align 4
@PSTOPO_PSTOP3 = common dso_local global i32 0, align 4
@BP_PMCTRL_PSTOPO = common dso_local global i32 0, align 4
@PSTOPO_PSTOP2 = common dso_local global i32 0, align 4
@PSTOPO_PSTOP1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imx7ulp_set_lpm(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i64, i64* @smc1_base, align 8
  %6 = load i64, i64* @SMC_PMCTRL, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @readl_relaxed(i64 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @BM_PMCTRL_RUNM, align 4
  %10 = load i32, i32* @BM_PMCTRL_STOPM, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @BM_PMCTRL_PSTOPO, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  switch i32 %17, label %36 [
    i32 130, label %18
    i32 128, label %24
    i32 129, label %30
  ]

18:                                               ; preds = %1
  %19 = load i32, i32* @PSTOPO_PSTOP3, align 4
  %20 = load i32, i32* @BP_PMCTRL_PSTOPO, align 4
  %21 = shl i32 %19, %20
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  br label %39

24:                                               ; preds = %1
  %25 = load i32, i32* @PSTOPO_PSTOP2, align 4
  %26 = load i32, i32* @BP_PMCTRL_PSTOPO, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %39

30:                                               ; preds = %1
  %31 = load i32, i32* @PSTOPO_PSTOP1, align 4
  %32 = load i32, i32* @BP_PMCTRL_PSTOPO, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  br label %39

36:                                               ; preds = %1
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %45

39:                                               ; preds = %30, %24, %18
  %40 = load i32, i32* %4, align 4
  %41 = load i64, i64* @smc1_base, align 8
  %42 = load i64, i64* @SMC_PMCTRL, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel_relaxed(i32 %40, i64 %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %39, %36
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
