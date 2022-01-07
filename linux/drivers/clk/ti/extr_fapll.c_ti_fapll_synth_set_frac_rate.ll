; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_fapll.c_ti_fapll_synth_set_frac_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_fapll.c_ti_fapll_synth_set_frac_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fapll_synth = type { i32 }

@SYNTH_PHASE_K = common dso_local global i32 0, align 4
@SYNTH_MAX_INT_DIV = common dso_local global i64 0, align 8
@SYNTH_MAX_DIV_M = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@SYNTH_LDFREQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fapll_synth*, i64, i64)* @ti_fapll_synth_set_frac_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ti_fapll_synth_set_frac_rate(%struct.fapll_synth* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.fapll_synth*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.fapll_synth* %0, %struct.fapll_synth** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %12 = load i64, i64* %7, align 8
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @SYNTH_PHASE_K, align 4
  %15 = mul nsw i32 %13, %14
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @DIV_ROUND_UP_ULL(i32 %15, i64 %16)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @SYNTH_MAX_INT_DIV, align 8
  %20 = udiv i64 %18, %19
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @SYNTH_MAX_DIV_M, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %4, align 8
  br label %91

27:                                               ; preds = %3
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i64 1, i64* %8, align 8
  br label %31

31:                                               ; preds = %30, %27
  br label %32

32:                                               ; preds = %55, %31
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @SYNTH_MAX_DIV_M, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %32
  %37 = load i64, i64* %7, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @SYNTH_PHASE_K, align 4
  %40 = mul nsw i32 %38, %39
  %41 = mul nsw i32 %40, 10000000
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %8, align 8
  %44 = mul i64 %42, %43
  %45 = call i64 @DIV_ROUND_UP_ULL(i32 %41, i64 %44)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = urem i64 %46, 10000000
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %9, align 8
  %49 = udiv i64 %48, 10000000
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @SYNTH_MAX_INT_DIV, align 8
  %52 = icmp ule i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %36
  br label %58

54:                                               ; preds = %36
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %8, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %8, align 8
  br label %32

58:                                               ; preds = %53, %32
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @SYNTH_MAX_INT_DIV, align 8
  %61 = icmp ugt i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i64, i64* @EINVAL, align 8
  %64 = sub i64 0, %63
  store i64 %64, i64* %4, align 8
  br label %91

65:                                               ; preds = %58
  %66 = load %struct.fapll_synth*, %struct.fapll_synth** %5, align 8
  %67 = getelementptr inbounds %struct.fapll_synth, %struct.fapll_synth* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @readl_relaxed(i32 %68)
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %11, align 8
  %71 = and i64 %70, -536870912
  store i64 %71, i64* %11, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* @SYNTH_MAX_INT_DIV, align 8
  %74 = and i64 %72, %73
  %75 = shl i64 %74, 24
  %76 = load i64, i64* %11, align 8
  %77 = or i64 %76, %75
  store i64 %77, i64* %11, align 8
  %78 = load i64, i64* %10, align 8
  %79 = and i64 %78, 16777215
  %80 = load i64, i64* %11, align 8
  %81 = or i64 %80, %79
  store i64 %81, i64* %11, align 8
  %82 = load i64, i64* @SYNTH_LDFREQ, align 8
  %83 = load i64, i64* %11, align 8
  %84 = or i64 %83, %82
  store i64 %84, i64* %11, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load %struct.fapll_synth*, %struct.fapll_synth** %5, align 8
  %87 = getelementptr inbounds %struct.fapll_synth, %struct.fapll_synth* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @writel_relaxed(i64 %85, i32 %88)
  %90 = load i64, i64* %8, align 8
  store i64 %90, i64* %4, align 8
  br label %91

91:                                               ; preds = %65, %62, %24
  %92 = load i64, i64* %4, align 8
  ret i64 %92
}

declare dso_local i64 @DIV_ROUND_UP_ULL(i32, i64) #1

declare dso_local i64 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
