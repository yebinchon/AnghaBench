; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_ks-sa-rng.c_ks_sa_rng_data_present.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_ks-sa-rng.c_ks_sa_rng_data_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwrng = type { i64 }
%struct.device = type { i32 }
%struct.ks_sa_rng = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SA_MAX_RNG_DATA_RETRIES = common dso_local global i32 0, align 4
@TRNG_STATUS_REG_READY = common dso_local global i32 0, align 4
@SA_RNG_DATA_RETRY_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwrng*, i32)* @ks_sa_rng_data_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks_sa_rng_data_present(%struct.hwrng* %0, i32 %1) #0 {
  %3 = alloca %struct.hwrng*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ks_sa_rng*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hwrng* %0, %struct.hwrng** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.hwrng*, %struct.hwrng** %3, align 8
  %10 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.device*
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.ks_sa_rng* @dev_get_drvdata(%struct.device* %13)
  store %struct.ks_sa_rng* %14, %struct.ks_sa_rng** %6, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %37, %2
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @SA_MAX_RNG_DATA_RETRIES, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  %20 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %6, align 8
  %21 = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @readl(i32* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @TRNG_STATUS_REG_READY, align 4
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30, %19
  br label %40

34:                                               ; preds = %30
  %35 = load i32, i32* @SA_RNG_DATA_RETRY_DELAY, align 4
  %36 = call i32 @udelay(i32 %35)
  br label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %15

40:                                               ; preds = %33, %15
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local %struct.ks_sa_rng* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
