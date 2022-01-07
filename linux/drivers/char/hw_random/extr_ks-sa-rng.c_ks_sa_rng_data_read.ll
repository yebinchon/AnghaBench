; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_ks-sa-rng.c_ks_sa_rng_data_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_ks-sa-rng.c_ks_sa_rng_data_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwrng = type { i64 }
%struct.device = type { i32 }
%struct.ks_sa_rng = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@TRNG_INTACK_REG_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwrng*, i32*)* @ks_sa_rng_data_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks_sa_rng_data_read(%struct.hwrng* %0, i32* %1) #0 {
  %3 = alloca %struct.hwrng*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ks_sa_rng*, align 8
  store %struct.hwrng* %0, %struct.hwrng** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.hwrng*, %struct.hwrng** %3, align 8
  %8 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.device*
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.ks_sa_rng* @dev_get_drvdata(%struct.device* %11)
  store %struct.ks_sa_rng* %12, %struct.ks_sa_rng** %6, align 8
  %13 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %6, align 8
  %14 = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = call i32 @readl(i32* %16)
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %6, align 8
  %21 = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = call i32 @readl(i32* %23)
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @TRNG_INTACK_REG_READY, align 4
  %28 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %6, align 8
  %29 = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @writel(i32 %27, i32* %31)
  ret i32 8
}

declare dso_local %struct.ks_sa_rng* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
