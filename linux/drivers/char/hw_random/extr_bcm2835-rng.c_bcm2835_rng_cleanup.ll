; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_bcm2835-rng.c_bcm2835_rng_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_bcm2835-rng.c_bcm2835_rng_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwrng = type { i32 }
%struct.bcm2835_rng_priv = type { i32 }

@RNG_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hwrng*)* @bcm2835_rng_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_rng_cleanup(%struct.hwrng* %0) #0 {
  %2 = alloca %struct.hwrng*, align 8
  %3 = alloca %struct.bcm2835_rng_priv*, align 8
  store %struct.hwrng* %0, %struct.hwrng** %2, align 8
  %4 = load %struct.hwrng*, %struct.hwrng** %2, align 8
  %5 = call %struct.bcm2835_rng_priv* @to_rng_priv(%struct.hwrng* %4)
  store %struct.bcm2835_rng_priv* %5, %struct.bcm2835_rng_priv** %3, align 8
  %6 = load %struct.bcm2835_rng_priv*, %struct.bcm2835_rng_priv** %3, align 8
  %7 = load i32, i32* @RNG_CTRL, align 4
  %8 = call i32 @rng_writel(%struct.bcm2835_rng_priv* %6, i32 0, i32 %7)
  %9 = load %struct.bcm2835_rng_priv*, %struct.bcm2835_rng_priv** %3, align 8
  %10 = getelementptr inbounds %struct.bcm2835_rng_priv, %struct.bcm2835_rng_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @IS_ERR(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.bcm2835_rng_priv*, %struct.bcm2835_rng_priv** %3, align 8
  %16 = getelementptr inbounds %struct.bcm2835_rng_priv, %struct.bcm2835_rng_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @clk_disable_unprepare(i32 %17)
  br label %19

19:                                               ; preds = %14, %1
  ret void
}

declare dso_local %struct.bcm2835_rng_priv* @to_rng_priv(%struct.hwrng*) #1

declare dso_local i32 @rng_writel(%struct.bcm2835_rng_priv*, i32, i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
