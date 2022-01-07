; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_exynos_mct.c_exynos4_read_count_64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_exynos_mct.c_exynos4_read_count_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg_base = common dso_local global i64 0, align 8
@EXYNOS4_MCT_G_CNT_U = common dso_local global i64 0, align 8
@EXYNOS4_MCT_G_CNT_L = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @exynos4_read_count_64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos4_read_count_64() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* @reg_base, align 8
  %5 = load i64, i64* @EXYNOS4_MCT_G_CNT_U, align 8
  %6 = add nsw i64 %4, %5
  %7 = call i32 @readl_relaxed(i64 %6)
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %18, %0
  %9 = load i32, i32* %3, align 4
  store i32 %9, i32* %2, align 4
  %10 = load i64, i64* @reg_base, align 8
  %11 = load i64, i64* @EXYNOS4_MCT_G_CNT_L, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl_relaxed(i64 %12)
  store i32 %13, i32* %1, align 4
  %14 = load i64, i64* @reg_base, align 8
  %15 = load i64, i64* @EXYNOS4_MCT_G_CNT_U, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl_relaxed(i64 %16)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %8
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %8, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = shl i32 %23, 32
  %25 = load i32, i32* %1, align 4
  %26 = or i32 %24, %25
  ret i32 %26
}

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
