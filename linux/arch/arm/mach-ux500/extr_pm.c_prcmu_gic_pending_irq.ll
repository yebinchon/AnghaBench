; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-ux500/extr_pm.c_prcmu_gic_pending_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-ux500/extr_pm.c_prcmu_gic_pending_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRCMU_GIC_NUMBER_REGS = common dso_local global i32 0, align 4
@dist_base = common dso_local global i64 0, align 8
@GIC_DIST_PENDING_SET = common dso_local global i64 0, align 8
@GIC_DIST_ENABLE_SET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prcmu_gic_pending_irq() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %32, %0
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @PRCMU_GIC_NUMBER_REGS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %35

9:                                                ; preds = %5
  %10 = load i64, i64* @dist_base, align 8
  %11 = load i64, i64* @GIC_DIST_PENDING_SET, align 8
  %12 = add nsw i64 %10, %11
  %13 = load i32, i32* %4, align 4
  %14 = mul nsw i32 %13, 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %12, %15
  %17 = call i32 @readl_relaxed(i64 %16)
  store i32 %17, i32* %2, align 4
  %18 = load i64, i64* @dist_base, align 8
  %19 = load i64, i64* @GIC_DIST_ENABLE_SET, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i32, i32* %4, align 4
  %22 = mul nsw i32 %21, 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = call i32 @readl_relaxed(i64 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %9
  store i32 1, i32* %1, align 4
  br label %36

31:                                               ; preds = %9
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %5

35:                                               ; preds = %5
  store i32 0, i32* %1, align 4
  br label %36

36:                                               ; preds = %35, %30
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
