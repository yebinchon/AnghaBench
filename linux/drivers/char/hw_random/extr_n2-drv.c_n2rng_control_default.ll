; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_n2-drv.c_n2rng_control_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_n2-drv.c_n2rng_control_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.n2rng = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RNG_v1_CTL_ASEL_SHIFT = common dso_local global i32 0, align 4
@N2RNG_ACCUM_CYCLES_DEFAULT = common dso_local global i32 0, align 4
@RNG_v1_CTL_WAIT_SHIFT = common dso_local global i32 0, align 4
@RNG_CTL_LFSR = common dso_local global i32 0, align 4
@RNG_v1_CTL_VCO_SHIFT = common dso_local global i32 0, align 4
@RNG_CTL_ES1 = common dso_local global i32 0, align 4
@RNG_CTL_ES2 = common dso_local global i32 0, align 4
@RNG_CTL_ES3 = common dso_local global i32 0, align 4
@RNG_v2_CTL_ASEL_SHIFT = common dso_local global i32 0, align 4
@RNG_v2_CTL_WAIT_SHIFT = common dso_local global i32 0, align 4
@RNG_v2_CTL_VCO_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.n2rng*, i32)* @n2rng_control_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n2rng_control_default(%struct.n2rng* %0, i32 %1) #0 {
  %3 = alloca %struct.n2rng*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.n2rng* %0, %struct.n2rng** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.n2rng*, %struct.n2rng** %3, align 8
  %7 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %53

12:                                               ; preds = %2
  %13 = load i32, i32* @RNG_v1_CTL_ASEL_SHIFT, align 4
  %14 = shl i32 2, %13
  %15 = load i32, i32* @N2RNG_ACCUM_CYCLES_DEFAULT, align 4
  %16 = load i32, i32* @RNG_v1_CTL_WAIT_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = or i32 %14, %17
  %19 = load i32, i32* @RNG_CTL_LFSR, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %51 [
    i32 0, label %22
    i32 1, label %29
    i32 2, label %36
    i32 3, label %43
  ]

22:                                               ; preds = %12
  %23 = load i32, i32* @RNG_v1_CTL_VCO_SHIFT, align 4
  %24 = shl i32 1, %23
  %25 = load i32, i32* @RNG_CTL_ES1, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %52

29:                                               ; preds = %12
  %30 = load i32, i32* @RNG_v1_CTL_VCO_SHIFT, align 4
  %31 = shl i32 2, %30
  %32 = load i32, i32* @RNG_CTL_ES2, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %52

36:                                               ; preds = %12
  %37 = load i32, i32* @RNG_v1_CTL_VCO_SHIFT, align 4
  %38 = shl i32 3, %37
  %39 = load i32, i32* @RNG_CTL_ES3, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %52

43:                                               ; preds = %12
  %44 = load i32, i32* @RNG_CTL_ES1, align 4
  %45 = load i32, i32* @RNG_CTL_ES2, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @RNG_CTL_ES3, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %52

51:                                               ; preds = %12
  br label %52

52:                                               ; preds = %51, %43, %36, %29, %22
  br label %94

53:                                               ; preds = %2
  %54 = load i32, i32* @RNG_v2_CTL_ASEL_SHIFT, align 4
  %55 = shl i32 2, %54
  %56 = load i32, i32* @N2RNG_ACCUM_CYCLES_DEFAULT, align 4
  %57 = load i32, i32* @RNG_v2_CTL_WAIT_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = or i32 %55, %58
  %60 = load i32, i32* @RNG_CTL_LFSR, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %4, align 4
  switch i32 %62, label %92 [
    i32 0, label %63
    i32 1, label %70
    i32 2, label %77
    i32 3, label %84
  ]

63:                                               ; preds = %53
  %64 = load i32, i32* @RNG_v2_CTL_VCO_SHIFT, align 4
  %65 = shl i32 1, %64
  %66 = load i32, i32* @RNG_CTL_ES1, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  br label %93

70:                                               ; preds = %53
  %71 = load i32, i32* @RNG_v2_CTL_VCO_SHIFT, align 4
  %72 = shl i32 2, %71
  %73 = load i32, i32* @RNG_CTL_ES2, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* %5, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %5, align 4
  br label %93

77:                                               ; preds = %53
  %78 = load i32, i32* @RNG_v2_CTL_VCO_SHIFT, align 4
  %79 = shl i32 3, %78
  %80 = load i32, i32* @RNG_CTL_ES3, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  br label %93

84:                                               ; preds = %53
  %85 = load i32, i32* @RNG_CTL_ES1, align 4
  %86 = load i32, i32* @RNG_CTL_ES2, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @RNG_CTL_ES3, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %5, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %5, align 4
  br label %93

92:                                               ; preds = %53
  br label %93

93:                                               ; preds = %92, %84, %77, %70, %63
  br label %94

94:                                               ; preds = %93, %52
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
