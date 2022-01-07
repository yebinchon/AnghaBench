; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_bcm2835-rng.c_bcm2835_rng_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_bcm2835-rng.c_bcm2835_rng_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwrng = type { i32 }
%struct.bcm2835_rng_priv = type { i64, i32 }

@RNG_INT_MASK = common dso_local global i32 0, align 4
@RNG_INT_OFF = common dso_local global i32 0, align 4
@RNG_WARMUP_COUNT = common dso_local global i32 0, align 4
@RNG_STATUS = common dso_local global i32 0, align 4
@RNG_RBGEN = common dso_local global i32 0, align 4
@RNG_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwrng*)* @bcm2835_rng_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_rng_init(%struct.hwrng* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hwrng*, align 8
  %4 = alloca %struct.bcm2835_rng_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hwrng* %0, %struct.hwrng** %3, align 8
  %7 = load %struct.hwrng*, %struct.hwrng** %3, align 8
  %8 = call %struct.bcm2835_rng_priv* @to_rng_priv(%struct.hwrng* %7)
  store %struct.bcm2835_rng_priv* %8, %struct.bcm2835_rng_priv** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.bcm2835_rng_priv*, %struct.bcm2835_rng_priv** %4, align 8
  %10 = getelementptr inbounds %struct.bcm2835_rng_priv, %struct.bcm2835_rng_priv* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @IS_ERR(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %1
  %15 = load %struct.bcm2835_rng_priv*, %struct.bcm2835_rng_priv** %4, align 8
  %16 = getelementptr inbounds %struct.bcm2835_rng_priv, %struct.bcm2835_rng_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @clk_prepare_enable(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %50

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23, %1
  %25 = load %struct.bcm2835_rng_priv*, %struct.bcm2835_rng_priv** %4, align 8
  %26 = getelementptr inbounds %struct.bcm2835_rng_priv, %struct.bcm2835_rng_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load %struct.bcm2835_rng_priv*, %struct.bcm2835_rng_priv** %4, align 8
  %31 = load i32, i32* @RNG_INT_MASK, align 4
  %32 = call i32 @rng_readl(%struct.bcm2835_rng_priv* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @RNG_INT_OFF, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load %struct.bcm2835_rng_priv*, %struct.bcm2835_rng_priv** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @RNG_INT_MASK, align 4
  %39 = call i32 @rng_writel(%struct.bcm2835_rng_priv* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %29, %24
  %41 = load %struct.bcm2835_rng_priv*, %struct.bcm2835_rng_priv** %4, align 8
  %42 = load i32, i32* @RNG_WARMUP_COUNT, align 4
  %43 = load i32, i32* @RNG_STATUS, align 4
  %44 = call i32 @rng_writel(%struct.bcm2835_rng_priv* %41, i32 %42, i32 %43)
  %45 = load %struct.bcm2835_rng_priv*, %struct.bcm2835_rng_priv** %4, align 8
  %46 = load i32, i32* @RNG_RBGEN, align 4
  %47 = load i32, i32* @RNG_CTRL, align 4
  %48 = call i32 @rng_writel(%struct.bcm2835_rng_priv* %45, i32 %46, i32 %47)
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %40, %21
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.bcm2835_rng_priv* @to_rng_priv(%struct.hwrng*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @rng_readl(%struct.bcm2835_rng_priv*, i32) #1

declare dso_local i32 @rng_writel(%struct.bcm2835_rng_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
