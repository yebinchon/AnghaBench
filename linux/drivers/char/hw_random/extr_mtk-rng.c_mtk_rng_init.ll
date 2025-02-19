; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_mtk-rng.c_mtk_rng_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_mtk-rng.c_mtk_rng_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwrng = type { i32 }
%struct.mtk_rng = type { i64, i32 }

@RNG_CTRL = common dso_local global i64 0, align 8
@RNG_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwrng*)* @mtk_rng_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_rng_init(%struct.hwrng* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hwrng*, align 8
  %4 = alloca %struct.mtk_rng*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hwrng* %0, %struct.hwrng** %3, align 8
  %7 = load %struct.hwrng*, %struct.hwrng** %3, align 8
  %8 = call %struct.mtk_rng* @to_mtk_rng(%struct.hwrng* %7)
  store %struct.mtk_rng* %8, %struct.mtk_rng** %4, align 8
  %9 = load %struct.mtk_rng*, %struct.mtk_rng** %4, align 8
  %10 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @clk_prepare_enable(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %34

17:                                               ; preds = %1
  %18 = load %struct.mtk_rng*, %struct.mtk_rng** %4, align 8
  %19 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @RNG_CTRL, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @RNG_EN, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.mtk_rng*, %struct.mtk_rng** %4, align 8
  %29 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RNG_CTRL, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %17, %15
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.mtk_rng* @to_mtk_rng(%struct.hwrng*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
