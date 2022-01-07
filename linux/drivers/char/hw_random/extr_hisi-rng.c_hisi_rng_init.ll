; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_hisi-rng.c_hisi_rng_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_hisi-rng.c_hisi_rng_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwrng = type { i32 }
%struct.hisi_rng = type { i64 }

@RNG_EN = common dso_local global i32 0, align 4
@RNG_SEED = common dso_local global i64 0, align 8
@seed_sel = common dso_local global i32 0, align 4
@RNG_RING_EN = common dso_local global i32 0, align 4
@RNG_SEED_SEL = common dso_local global i32 0, align 4
@RNG_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwrng*)* @hisi_rng_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_rng_init(%struct.hwrng* %0) #0 {
  %2 = alloca %struct.hwrng*, align 8
  %3 = alloca %struct.hisi_rng*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hwrng* %0, %struct.hwrng** %2, align 8
  %6 = load %struct.hwrng*, %struct.hwrng** %2, align 8
  %7 = call %struct.hisi_rng* @to_hisi_rng(%struct.hwrng* %6)
  store %struct.hisi_rng* %7, %struct.hisi_rng** %3, align 8
  %8 = load i32, i32* @RNG_EN, align 4
  store i32 %8, i32* %4, align 4
  %9 = call i32 @get_random_bytes(i32* %5, i32 4)
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.hisi_rng*, %struct.hisi_rng** %3, align 8
  %12 = getelementptr inbounds %struct.hisi_rng, %struct.hisi_rng* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RNG_SEED, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel_relaxed(i32 %10, i64 %15)
  %17 = load i32, i32* @seed_sel, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load i32, i32* @RNG_RING_EN, align 4
  %21 = load i32, i32* @RNG_SEED_SEL, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %19, %1
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.hisi_rng*, %struct.hisi_rng** %3, align 8
  %28 = getelementptr inbounds %struct.hisi_rng, %struct.hisi_rng* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RNG_CTRL, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel_relaxed(i32 %26, i64 %31)
  ret i32 0
}

declare dso_local %struct.hisi_rng* @to_hisi_rng(%struct.hwrng*) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
