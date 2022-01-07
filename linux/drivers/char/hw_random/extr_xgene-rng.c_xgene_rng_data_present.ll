; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_xgene-rng.c_xgene_rng_data_present.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_xgene-rng.c_xgene_rng_data_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwrng = type { i64 }
%struct.xgene_rng_dev = type { i64 }

@XGENE_RNG_RETRY_COUNT = common dso_local global i64 0, align 8
@RNG_INTR_STS_ACK = common dso_local global i64 0, align 8
@READY_MASK = common dso_local global i64 0, align 8
@XGENE_RNG_RETRY_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwrng*, i32)* @xgene_rng_data_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_rng_data_present(%struct.hwrng* %0, i32 %1) #0 {
  %3 = alloca %struct.hwrng*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xgene_rng_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.hwrng* %0, %struct.hwrng** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.hwrng*, %struct.hwrng** %3, align 8
  %9 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.xgene_rng_dev*
  store %struct.xgene_rng_dev* %11, %struct.xgene_rng_dev** %5, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %34, %2
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @XGENE_RNG_RETRY_COUNT, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %5, align 8
  %18 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RNG_INTR_STS_ACK, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i64 @readl(i64 %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @READY_MASK, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %16
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27, %16
  br label %37

31:                                               ; preds = %27
  %32 = load i32, i32* @XGENE_RNG_RETRY_INTERVAL, align 4
  %33 = call i32 @udelay(i32 %32)
  br label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %6, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %6, align 8
  br label %12

37:                                               ; preds = %30, %12
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @READY_MASK, align 8
  %40 = and i64 %38, %39
  %41 = trunc i64 %40 to i32
  ret i32 %41
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
