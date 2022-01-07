; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_pm-imx6.c_imx6_enable_rbc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_pm-imx6.c_imx6_enable_rbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ccm_base = common dso_local global i64 0, align 8
@CCR = common dso_local global i64 0, align 8
@BM_CCR_RBC_EN = common dso_local global i32 0, align 4
@BM_CCR_RBC_BYPASS_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imx6_enable_rbc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @imx_gpc_mask_all()
  %5 = load i64, i64* @ccm_base, align 8
  %6 = load i64, i64* @CCR, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @readl_relaxed(i64 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @BM_CCR_RBC_EN, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @BM_CCR_RBC_EN, align 4
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ 0, %17 ]
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i64, i64* @ccm_base, align 8
  %24 = load i64, i64* @CCR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel_relaxed(i32 %22, i64 %25)
  %27 = load i64, i64* @ccm_base, align 8
  %28 = load i64, i64* @CCR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @readl_relaxed(i64 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @BM_CCR_RBC_BYPASS_COUNT, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %2, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %18
  %38 = load i32, i32* @BM_CCR_RBC_BYPASS_COUNT, align 4
  br label %40

39:                                               ; preds = %18
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 0, %39 ]
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i64, i64* @ccm_base, align 8
  %46 = load i64, i64* @CCR, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %44, i64 %47)
  %49 = call i32 @udelay(i32 65)
  %50 = call i32 (...) @imx_gpc_restore_all()
  ret void
}

declare dso_local i32 @imx_gpc_mask_all(...) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @imx_gpc_restore_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
