; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_xgene-rng.c_xgene_rng_init_fro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_xgene-rng.c_xgene_rng_init_fro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_rng_dev = type { i64 }

@RNG_FRODETUNE = common dso_local global i64 0, align 8
@RNG_ALARMMASK = common dso_local global i64 0, align 8
@RNG_ALARMSTOP = common dso_local global i64 0, align 8
@RNG_FROENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_rng_dev*, i32)* @xgene_rng_init_fro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_rng_init_fro(%struct.xgene_rng_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.xgene_rng_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.xgene_rng_dev* %0, %struct.xgene_rng_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %3, align 8
  %7 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @RNG_FRODETUNE, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel(i32 %5, i64 %10)
  %12 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %3, align 8
  %13 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @RNG_ALARMMASK, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 0, i64 %16)
  %18 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %3, align 8
  %19 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @RNG_ALARMSTOP, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 0, i64 %22)
  %24 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %3, align 8
  %25 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RNG_FROENABLE, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 -1, i64 %28)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
