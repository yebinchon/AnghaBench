; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_mtk-rng.c_mtk_rng_wait_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_mtk-rng.c_mtk_rng_wait_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwrng = type { i32 }
%struct.mtk_rng = type { i64 }

@RNG_CTRL = common dso_local global i64 0, align 8
@RNG_READY = common dso_local global i32 0, align 4
@USEC_POLL = common dso_local global i32 0, align 4
@TIMEOUT_POLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwrng*, i32)* @mtk_rng_wait_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_rng_wait_ready(%struct.hwrng* %0, i32 %1) #0 {
  %3 = alloca %struct.hwrng*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_rng*, align 8
  %6 = alloca i32, align 4
  store %struct.hwrng* %0, %struct.hwrng** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hwrng*, %struct.hwrng** %3, align 8
  %8 = call %struct.mtk_rng* @to_mtk_rng(%struct.hwrng* %7)
  store %struct.mtk_rng* %8, %struct.mtk_rng** %5, align 8
  %9 = load %struct.mtk_rng*, %struct.mtk_rng** %5, align 8
  %10 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @RNG_CTRL, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  %15 = load i32, i32* @RNG_READY, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load %struct.mtk_rng*, %struct.mtk_rng** %5, align 8
  %24 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RNG_CTRL, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @RNG_READY, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @USEC_POLL, align 4
  %33 = load i32, i32* @TIMEOUT_POLL, align 4
  %34 = call i32 @readl_poll_timeout_atomic(i64 %27, i32 %28, i32 %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %22, %19, %2
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  ret i32 %40
}

declare dso_local %struct.mtk_rng* @to_mtk_rng(%struct.hwrng*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @readl_poll_timeout_atomic(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
