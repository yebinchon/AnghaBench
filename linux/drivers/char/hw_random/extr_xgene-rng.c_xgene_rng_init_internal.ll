; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_xgene-rng.c_xgene_rng_init_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_xgene-rng.c_xgene_rng_init_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_rng_dev = type { i64 }

@RNG_CONTROL = common dso_local global i64 0, align 8
@RNG_CONFIG = common dso_local global i64 0, align 8
@RNG_ALARMCNT = common dso_local global i64 0, align 8
@MONOBIT_FAIL_MASK = common dso_local global i32 0, align 4
@POKER_FAIL_MASK = common dso_local global i32 0, align 4
@LONG_RUN_FAIL_MASK = common dso_local global i32 0, align 4
@RUN_FAIL_MASK = common dso_local global i32 0, align 4
@NOISE_FAIL_MASK = common dso_local global i32 0, align 4
@STUCK_OUT_MASK = common dso_local global i32 0, align 4
@SHUTDOWN_OFLO_MASK = common dso_local global i32 0, align 4
@READY_MASK = common dso_local global i32 0, align 4
@RNG_INTR_STS_ACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_rng_dev*)* @xgene_rng_init_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_rng_init_internal(%struct.xgene_rng_dev* %0) #0 {
  %2 = alloca %struct.xgene_rng_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.xgene_rng_dev* %0, %struct.xgene_rng_dev** %2, align 8
  %4 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %2, align 8
  %5 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @RNG_CONTROL, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @writel(i32 0, i64 %8)
  %10 = call i32 @MAX_REFILL_CYCLES_SET(i32 0, i32 10)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @MIN_REFILL_CYCLES_SET(i32 %11, i32 10)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %2, align 8
  %15 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @RNG_CONFIG, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 %13, i64 %18)
  %20 = call i32 @ALARM_THRESHOLD_SET(i32 0, i32 255)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %2, align 8
  %23 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RNG_ALARMCNT, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %21, i64 %26)
  %28 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %2, align 8
  %29 = call i32 @xgene_rng_init_fro(%struct.xgene_rng_dev* %28, i32 0)
  %30 = load i32, i32* @MONOBIT_FAIL_MASK, align 4
  %31 = load i32, i32* @POKER_FAIL_MASK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @LONG_RUN_FAIL_MASK, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @RUN_FAIL_MASK, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @NOISE_FAIL_MASK, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @STUCK_OUT_MASK, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @SHUTDOWN_OFLO_MASK, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @READY_MASK, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %2, align 8
  %46 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @RNG_INTR_STS_ACK, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %44, i64 %49)
  %51 = call i32 @ENABLE_RNG_SET(i32 0, i32 1)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @MONOBIT_FAIL_MASK_SET(i32 %52, i32 1)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @POKER_FAIL_MASK_SET(i32 %54, i32 1)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @LONG_RUN_FAIL_MASK_SET(i32 %56, i32 1)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @RUN_FAIL_MASK_SET(i32 %58, i32 1)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @NOISE_FAIL_MASK_SET(i32 %60, i32 1)
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @STUCK_OUT_MASK_SET(i32 %62, i32 1)
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @SHUTDOWN_OFLO_MASK_SET(i32 %64, i32 1)
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %2, align 8
  %68 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @RNG_CONTROL, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i32 %66, i64 %71)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @MAX_REFILL_CYCLES_SET(i32, i32) #1

declare dso_local i32 @MIN_REFILL_CYCLES_SET(i32, i32) #1

declare dso_local i32 @ALARM_THRESHOLD_SET(i32, i32) #1

declare dso_local i32 @xgene_rng_init_fro(%struct.xgene_rng_dev*, i32) #1

declare dso_local i32 @ENABLE_RNG_SET(i32, i32) #1

declare dso_local i32 @MONOBIT_FAIL_MASK_SET(i32, i32) #1

declare dso_local i32 @POKER_FAIL_MASK_SET(i32, i32) #1

declare dso_local i32 @LONG_RUN_FAIL_MASK_SET(i32, i32) #1

declare dso_local i32 @RUN_FAIL_MASK_SET(i32, i32) #1

declare dso_local i32 @NOISE_FAIL_MASK_SET(i32, i32) #1

declare dso_local i32 @STUCK_OUT_MASK_SET(i32, i32) #1

declare dso_local i32 @SHUTDOWN_OFLO_MASK_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
