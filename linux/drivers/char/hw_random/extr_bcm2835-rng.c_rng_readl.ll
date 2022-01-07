; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_bcm2835-rng.c_rng_readl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_bcm2835-rng.c_rng_readl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_rng_priv = type { i64 }

@CONFIG_MIPS = common dso_local global i32 0, align 4
@CONFIG_CPU_BIG_ENDIAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bcm2835_rng_priv*, i64)* @rng_readl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rng_readl(%struct.bcm2835_rng_priv* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.bcm2835_rng_priv*, align 8
  %5 = alloca i64, align 8
  store %struct.bcm2835_rng_priv* %0, %struct.bcm2835_rng_priv** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i32, i32* @CONFIG_MIPS, align 4
  %7 = call i64 @IS_ENABLED(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load i32, i32* @CONFIG_CPU_BIG_ENDIAN, align 4
  %11 = call i64 @IS_ENABLED(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load %struct.bcm2835_rng_priv*, %struct.bcm2835_rng_priv** %4, align 8
  %15 = getelementptr inbounds %struct.bcm2835_rng_priv, %struct.bcm2835_rng_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i64 @__raw_readl(i64 %18)
  store i64 %19, i64* %3, align 8
  br label %27

20:                                               ; preds = %9, %2
  %21 = load %struct.bcm2835_rng_priv*, %struct.bcm2835_rng_priv** %4, align 8
  %22 = getelementptr inbounds %struct.bcm2835_rng_priv, %struct.bcm2835_rng_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i64 @readl(i64 %25)
  store i64 %26, i64* %3, align 8
  br label %27

27:                                               ; preds = %20, %13
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @__raw_readl(i64) #1

declare dso_local i64 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
