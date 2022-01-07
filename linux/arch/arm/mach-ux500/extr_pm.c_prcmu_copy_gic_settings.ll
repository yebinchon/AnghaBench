; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-ux500/extr_pm.c_prcmu_copy_gic_settings.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-ux500/extr_pm.c_prcmu_copy_gic_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRCMU_GIC_NUMBER_REGS = common dso_local global i32 0, align 4
@dist_base = common dso_local global i64 0, align 8
@GIC_DIST_ENABLE_SET = common dso_local global i64 0, align 8
@PRCM_ARMITMSK31TO0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prcmu_copy_gic_settings() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %25, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @PRCMU_GIC_NUMBER_REGS, align 4
  %6 = sub nsw i32 %5, 1
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %28

8:                                                ; preds = %3
  %9 = load i64, i64* @dist_base, align 8
  %10 = load i64, i64* @GIC_DIST_ENABLE_SET, align 8
  %11 = add nsw i64 %9, %10
  %12 = load i32, i32* %2, align 4
  %13 = add nsw i32 %12, 1
  %14 = mul nsw i32 %13, 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %11, %15
  %17 = call i32 @readl_relaxed(i64 %16)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i64, i64* @PRCM_ARMITMSK31TO0, align 8
  %20 = load i32, i32* %2, align 4
  %21 = mul nsw i32 %20, 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %19, %22
  %24 = call i32 @writel(i32 %18, i64 %23)
  br label %25

25:                                               ; preds = %8
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %3

28:                                               ; preds = %3
  ret i32 0
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
