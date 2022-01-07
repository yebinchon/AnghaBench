; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_pm-imx6.c_imx6q_enable_wb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_pm-imx6.c_imx6q_enable_wb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ccm_base = common dso_local global i64 0, align 8
@CLPCR = common dso_local global i64 0, align 8
@BM_CLPCR_WB_PER_AT_LPM = common dso_local global i32 0, align 4
@CCR = common dso_local global i64 0, align 8
@BM_CCR_WB_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @imx6q_enable_wb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx6q_enable_wb(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @ccm_base, align 8
  %5 = load i64, i64* @CLPCR, align 8
  %6 = add nsw i64 %4, %5
  %7 = call i32 @readl_relaxed(i64 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @BM_CLPCR_WB_PER_AT_LPM, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @BM_CLPCR_WB_PER_AT_LPM, align 4
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i32 [ %15, %14 ], [ 0, %16 ]
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i64, i64* @ccm_base, align 8
  %23 = load i64, i64* @CLPCR, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel_relaxed(i32 %21, i64 %24)
  %26 = load i64, i64* @ccm_base, align 8
  %27 = load i64, i64* @CCR, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl_relaxed(i64 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* @BM_CCR_WB_COUNT, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %2, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %17
  %37 = load i32, i32* @BM_CCR_WB_COUNT, align 4
  br label %39

38:                                               ; preds = %17
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i64, i64* @ccm_base, align 8
  %45 = load i64, i64* @CCR, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel_relaxed(i32 %43, i64 %46)
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
