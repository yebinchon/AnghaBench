; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_exynos-trng.c_exynos_trng_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_exynos-trng.c_exynos_trng_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwrng = type { i64 }
%struct.exynos_trng_dev = type { i64, i32, i32 }

@EXYNOS_TRNG_CLOCK_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"clock divider too large: %d\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@EXYNOS_TRNG_CLKDIV = common dso_local global i64 0, align 8
@EXYNOS_TRNG_CTRL_RNGEN = common dso_local global i32 0, align 4
@EXYNOS_TRNG_CTRL = common dso_local global i64 0, align 8
@EXYNOS_TRNG_POST_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwrng*)* @exynos_trng_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_trng_init(%struct.hwrng* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hwrng*, align 8
  %4 = alloca %struct.exynos_trng_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.hwrng* %0, %struct.hwrng** %3, align 8
  %7 = load %struct.hwrng*, %struct.hwrng** %3, align 8
  %8 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.exynos_trng_dev*
  store %struct.exynos_trng_dev* %10, %struct.exynos_trng_dev** %4, align 8
  %11 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %4, align 8
  %12 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @clk_get_rate(i32 %13)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i32, i32* @EXYNOS_TRNG_CLOCK_RATE, align 4
  %17 = mul nsw i32 %16, 2
  %18 = sext i32 %17 to i64
  %19 = udiv i64 %15, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %21, 32767
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %4, align 8
  %25 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @ERANGE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %55

31:                                               ; preds = %1
  %32 = load i32, i32* %6, align 4
  %33 = shl i32 %32, 1
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %4, align 8
  %36 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @EXYNOS_TRNG_CLKDIV, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel_relaxed(i32 %34, i64 %39)
  %41 = load i32, i32* @EXYNOS_TRNG_CTRL_RNGEN, align 4
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %4, align 8
  %44 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @EXYNOS_TRNG_CTRL, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel_relaxed(i32 %42, i64 %47)
  %49 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %4, align 8
  %50 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @EXYNOS_TRNG_POST_CTRL, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel_relaxed(i32 0, i64 %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %31, %23
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
