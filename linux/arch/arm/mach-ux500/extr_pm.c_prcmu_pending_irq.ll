; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-ux500/extr_pm.c_prcmu_pending_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-ux500/extr_pm.c_prcmu_pending_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRCMU_GIC_NUMBER_REGS = common dso_local global i32 0, align 4
@PRCM_ARMITVAL31TO0 = common dso_local global i64 0, align 8
@PRCM_ARMITMSK31TO0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prcmu_pending_irq() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %29, %0
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @PRCMU_GIC_NUMBER_REGS, align 4
  %8 = sub nsw i32 %7, 1
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %5
  %11 = load i64, i64* @PRCM_ARMITVAL31TO0, align 8
  %12 = load i32, i32* %4, align 4
  %13 = mul nsw i32 %12, 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %11, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %2, align 4
  %17 = load i64, i64* @PRCM_ARMITMSK31TO0, align 8
  %18 = load i32, i32* %4, align 4
  %19 = mul nsw i32 %18, 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %17, %20
  %22 = call i32 @readl(i64 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %10
  store i32 1, i32* %1, align 4
  br label %33

28:                                               ; preds = %10
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %5

32:                                               ; preds = %5
  store i32 0, i32* %1, align 4
  br label %33

33:                                               ; preds = %32, %27
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
