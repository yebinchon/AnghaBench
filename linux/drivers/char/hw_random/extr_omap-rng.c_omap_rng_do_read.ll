; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_omap-rng.c_omap_rng_do_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_omap-rng.c_omap_rng_do_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwrng = type { i64 }
%struct.omap_rng_dev = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i32 (%struct.omap_rng_dev*)*, i64* }

@RNG_OUTPUT_0_REG = common dso_local global i64 0, align 8
@RNG_INTACK_REG = common dso_local global i64 0, align 8
@RNG_REG_INTACK_RDY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwrng*, i8*, i64, i32)* @omap_rng_do_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_rng_do_read(%struct.hwrng* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hwrng*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.omap_rng_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hwrng* %0, %struct.hwrng** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.hwrng*, %struct.hwrng** %6, align 8
  %14 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.omap_rng_dev*
  store %struct.omap_rng_dev* %16, %struct.omap_rng_dev** %10, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %10, align 8
  %19 = getelementptr inbounds %struct.omap_rng_dev, %struct.omap_rng_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %17, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %93

25:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %45, %25
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 20
  br i1 %28, label %29, label %48

29:                                               ; preds = %26
  %30 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %10, align 8
  %31 = getelementptr inbounds %struct.omap_rng_dev, %struct.omap_rng_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32 (%struct.omap_rng_dev*)*, i32 (%struct.omap_rng_dev*)** %33, align 8
  %35 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %10, align 8
  %36 = call i32 %34(%struct.omap_rng_dev* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39, %29
  br label %48

43:                                               ; preds = %39
  %44 = call i32 @udelay(i32 10)
  br label %45

45:                                               ; preds = %43
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %26

48:                                               ; preds = %42, %26
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %93

52:                                               ; preds = %48
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %10, align 8
  %55 = getelementptr inbounds %struct.omap_rng_dev, %struct.omap_rng_dev* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %10, align 8
  %58 = getelementptr inbounds %struct.omap_rng_dev, %struct.omap_rng_dev* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* @RNG_OUTPUT_0_REG, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %56, %64
  %66 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %10, align 8
  %67 = getelementptr inbounds %struct.omap_rng_dev, %struct.omap_rng_dev* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @memcpy_fromio(i8* %53, i64 %65, i64 %70)
  %72 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %10, align 8
  %73 = getelementptr inbounds %struct.omap_rng_dev, %struct.omap_rng_dev* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* @RNG_INTACK_REG, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %52
  %82 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %10, align 8
  %83 = load i64, i64* @RNG_INTACK_REG, align 8
  %84 = load i32, i32* @RNG_REG_INTACK_RDY_MASK, align 4
  %85 = call i32 @omap_rng_write(%struct.omap_rng_dev* %82, i64 %83, i32 %84)
  br label %86

86:                                               ; preds = %81, %52
  %87 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %10, align 8
  %88 = getelementptr inbounds %struct.omap_rng_dev, %struct.omap_rng_dev* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %86, %51, %24
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @memcpy_fromio(i8*, i64, i64) #1

declare dso_local i32 @omap_rng_write(%struct.omap_rng_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
