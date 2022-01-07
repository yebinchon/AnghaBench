; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_n2-drv.c_n2rng_control_configure_units.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_n2-drv.c_n2rng_control_configure_units.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.n2rng = type { i32, i32, %struct.TYPE_2__*, %struct.n2rng_unit* }
%struct.TYPE_2__ = type { i32 }
%struct.n2rng_unit = type { i32* }

@RNG_v1_CTL_WAIT_SHIFT = common dso_local global i32 0, align 4
@RNG_v1_CTL_ASEL_NOOUT = common dso_local global i32 0, align 4
@RNG_v1_CTL_ASEL_SHIFT = common dso_local global i32 0, align 4
@RNG_CTL_LFSR = common dso_local global i32 0, align 4
@RNG_v1_CTL_VCO_SHIFT = common dso_local global i32 0, align 4
@RNG_v2_CTL_WAIT_SHIFT = common dso_local global i32 0, align 4
@RNG_v2_CTL_ASEL_NOOUT = common dso_local global i32 0, align 4
@RNG_v2_CTL_ASEL_SHIFT = common dso_local global i32 0, align 4
@RNG_v2_CTL_VCO_SHIFT = common dso_local global i32 0, align 4
@RNG_CTL_ES1 = common dso_local global i32 0, align 4
@RNG_CTL_ES2 = common dso_local global i32 0, align 4
@RNG_CTL_ES3 = common dso_local global i32 0, align 4
@HV_RNG_STATE_CONFIGURED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.n2rng*)* @n2rng_control_configure_units to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n2rng_control_configure_units(%struct.n2rng* %0) #0 {
  %2 = alloca %struct.n2rng*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.n2rng_unit*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.n2rng* %0, %struct.n2rng** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %104, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.n2rng*, %struct.n2rng** %2, align 8
  %13 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %107

16:                                               ; preds = %10
  %17 = load %struct.n2rng*, %struct.n2rng** %2, align 8
  %18 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %17, i32 0, i32 3
  %19 = load %struct.n2rng_unit*, %struct.n2rng_unit** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.n2rng_unit, %struct.n2rng_unit* %19, i64 %21
  store %struct.n2rng_unit* %22, %struct.n2rng_unit** %5, align 8
  %23 = load %struct.n2rng_unit*, %struct.n2rng_unit** %5, align 8
  %24 = getelementptr inbounds %struct.n2rng_unit, %struct.n2rng_unit* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = call i64 @__pa(i32* %26)
  store i64 %27, i64* %6, align 8
  %28 = load %struct.n2rng*, %struct.n2rng** %2, align 8
  %29 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %47

34:                                               ; preds = %16
  %35 = load %struct.n2rng*, %struct.n2rng** %2, align 8
  %36 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @RNG_v1_CTL_WAIT_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* @RNG_v1_CTL_ASEL_NOOUT, align 4
  %41 = load i32, i32* @RNG_v1_CTL_ASEL_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = or i32 %39, %42
  %44 = load i32, i32* @RNG_CTL_LFSR, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* @RNG_v1_CTL_VCO_SHIFT, align 4
  store i32 %46, i32* %9, align 4
  br label %60

47:                                               ; preds = %16
  %48 = load %struct.n2rng*, %struct.n2rng** %2, align 8
  %49 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @RNG_v2_CTL_WAIT_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = load i32, i32* @RNG_v2_CTL_ASEL_NOOUT, align 4
  %54 = load i32, i32* @RNG_v2_CTL_ASEL_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = or i32 %52, %55
  %57 = load i32, i32* @RNG_CTL_LFSR, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* @RNG_v2_CTL_VCO_SHIFT, align 4
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %47, %34
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %80, %60
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 3
  br i1 %63, label %64, label %83

64:                                               ; preds = %61
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %9, align 4
  %68 = shl i32 %66, %67
  %69 = or i32 %65, %68
  %70 = load i32, i32* @RNG_CTL_ES1, align 4
  %71 = load i32, i32* %7, align 4
  %72 = shl i32 %70, %71
  %73 = or i32 %69, %72
  %74 = load %struct.n2rng_unit*, %struct.n2rng_unit** %5, align 8
  %75 = getelementptr inbounds %struct.n2rng_unit, %struct.n2rng_unit* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %73, i32* %79, align 4
  br label %80

80:                                               ; preds = %64
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %61

83:                                               ; preds = %61
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @RNG_CTL_ES1, align 4
  %86 = load i32, i32* @RNG_CTL_ES2, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @RNG_CTL_ES3, align 4
  %89 = or i32 %87, %88
  %90 = or i32 %84, %89
  %91 = load %struct.n2rng_unit*, %struct.n2rng_unit** %5, align 8
  %92 = getelementptr inbounds %struct.n2rng_unit, %struct.n2rng_unit* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 3
  store i32 %90, i32* %94, align 4
  %95 = load %struct.n2rng*, %struct.n2rng** %2, align 8
  %96 = load i64, i64* %6, align 8
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @HV_RNG_STATE_CONFIGURED, align 4
  %99 = call i32 @n2rng_generic_write_control(%struct.n2rng* %95, i64 %96, i32 %97, i32 %98)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %83
  br label %107

103:                                              ; preds = %83
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %3, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %3, align 4
  br label %10

107:                                              ; preds = %102, %10
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i64 @__pa(i32*) #1

declare dso_local i32 @n2rng_generic_write_control(%struct.n2rng*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
