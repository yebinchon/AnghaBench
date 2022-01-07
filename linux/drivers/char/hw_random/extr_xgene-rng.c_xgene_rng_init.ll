; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_xgene-rng.c_xgene_rng_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_xgene-rng.c_xgene_rng_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwrng = type { i64 }
%struct.xgene_rng_dev = type { i32, i64, i32, i32, i32, i64 }

@xgene_rng_expired_timer = common dso_local global i32 0, align 4
@RNG_EIP_REV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"Rev %d.%d.%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Options 0x%08X\00", align 1
@RNG_OPTIONS = common dso_local global i64 0, align 8
@RNG_MAX_DATUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwrng*)* @xgene_rng_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_rng_init(%struct.hwrng* %0) #0 {
  %2 = alloca %struct.hwrng*, align 8
  %3 = alloca %struct.xgene_rng_dev*, align 8
  store %struct.hwrng* %0, %struct.hwrng** %2, align 8
  %4 = load %struct.hwrng*, %struct.hwrng** %2, align 8
  %5 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.xgene_rng_dev*
  store %struct.xgene_rng_dev* %7, %struct.xgene_rng_dev** %3, align 8
  %8 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %3, align 8
  %9 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %8, i32 0, i32 5
  store i64 0, i64* %9, align 8
  %10 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %3, align 8
  %11 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %10, i32 0, i32 4
  %12 = load i32, i32* @xgene_rng_expired_timer, align 4
  %13 = call i32 @timer_setup(i32* %11, i32 %12, i32 0)
  %14 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %3, align 8
  %15 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @RNG_EIP_REV, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  %20 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %3, align 8
  %21 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %3, align 8
  %23 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %3, align 8
  %26 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @MAJOR_HW_REV_RD(i32 %27)
  %29 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %3, align 8
  %30 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @MINOR_HW_REV_RD(i32 %31)
  %33 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %3, align 8
  %34 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @HW_PATCH_LEVEL_RD(i32 %35)
  %37 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %32, i32 %36)
  %38 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %3, align 8
  %39 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %3, align 8
  %42 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @RNG_OPTIONS, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @readl(i64 %45)
  %47 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %3, align 8
  %49 = call i32 @xgene_rng_init_internal(%struct.xgene_rng_dev* %48)
  %50 = load i32, i32* @RNG_MAX_DATUM, align 4
  %51 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %3, align 8
  %52 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  ret i32 0
}

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @MAJOR_HW_REV_RD(i32) #1

declare dso_local i32 @MINOR_HW_REV_RD(i32) #1

declare dso_local i32 @HW_PATCH_LEVEL_RD(i32) #1

declare dso_local i32 @xgene_rng_init_internal(%struct.xgene_rng_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
