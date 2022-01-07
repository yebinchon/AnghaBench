; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_fapll.c_ti_fapll_synth_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_fapll.c_ti_fapll_synth_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.fapll_synth = type { i32, i64, %struct.fapll_data* }
%struct.fapll_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SYNTH_MAX_DIV_M = common dso_local global i64 0, align 8
@SYNTH_LDMDIV1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @ti_fapll_synth_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_fapll_synth_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fapll_synth*, align 8
  %9 = alloca %struct.fapll_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %15 = call %struct.fapll_synth* @to_synth(%struct.clk_hw* %14)
  store %struct.fapll_synth* %15, %struct.fapll_synth** %8, align 8
  %16 = load %struct.fapll_synth*, %struct.fapll_synth** %8, align 8
  %17 = getelementptr inbounds %struct.fapll_synth, %struct.fapll_synth* %16, i32 0, i32 2
  %18 = load %struct.fapll_data*, %struct.fapll_data** %17, align 8
  store %struct.fapll_data* %18, %struct.fapll_data** %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %19 = load %struct.fapll_data*, %struct.fapll_data** %9, align 8
  %20 = call i64 @ti_fapll_clock_is_bypass(%struct.fapll_data* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %3
  %23 = load %struct.fapll_synth*, %struct.fapll_synth** %8, align 8
  %24 = getelementptr inbounds %struct.fapll_synth, %struct.fapll_synth* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27, %22, %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %109

33:                                               ; preds = %27
  %34 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @ti_fapll_synth_get_frac_rate(%struct.clk_hw* %34, i64 %35)
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load %struct.fapll_synth*, %struct.fapll_synth** %8, align 8
  %42 = getelementptr inbounds %struct.fapll_synth, %struct.fapll_synth* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %109

48:                                               ; preds = %40
  br label %75

49:                                               ; preds = %33
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @DIV_ROUND_UP(i64 %50, i64 %51)
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* @SYNTH_MAX_DIV_M, align 8
  %58 = icmp ule i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* %12, align 8
  %62 = call i64 @DIV_ROUND_UP(i64 %60, i64 %61)
  store i64 %62, i64* %11, align 8
  br label %63

63:                                               ; preds = %59, %55, %49
  %64 = load %struct.fapll_synth*, %struct.fapll_synth** %8, align 8
  %65 = getelementptr inbounds %struct.fapll_synth, %struct.fapll_synth* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %63
  %69 = load i64, i64* %11, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %109

74:                                               ; preds = %68, %63
  br label %75

75:                                               ; preds = %74, %48
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %6, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %75
  %80 = load %struct.fapll_synth*, %struct.fapll_synth** %8, align 8
  %81 = getelementptr inbounds %struct.fapll_synth, %struct.fapll_synth* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.fapll_synth*, %struct.fapll_synth** %8, align 8
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* %7, align 8
  %88 = call i64 @ti_fapll_synth_set_frac_rate(%struct.fapll_synth* %85, i64 %86, i64 %87)
  store i64 %88, i64* %12, align 8
  br label %89

89:                                               ; preds = %84, %79, %75
  %90 = load %struct.fapll_synth*, %struct.fapll_synth** %8, align 8
  %91 = getelementptr inbounds %struct.fapll_synth, %struct.fapll_synth* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @readl_relaxed(i32 %92)
  store i64 %93, i64* %13, align 8
  %94 = load i64, i64* @SYNTH_MAX_DIV_M, align 8
  %95 = xor i64 %94, -1
  %96 = load i64, i64* %13, align 8
  %97 = and i64 %96, %95
  store i64 %97, i64* %13, align 8
  %98 = load i64, i64* %12, align 8
  %99 = load i64, i64* %13, align 8
  %100 = or i64 %99, %98
  store i64 %100, i64* %13, align 8
  %101 = load i64, i64* @SYNTH_LDMDIV1, align 8
  %102 = load i64, i64* %13, align 8
  %103 = or i64 %102, %101
  store i64 %103, i64* %13, align 8
  %104 = load i64, i64* %13, align 8
  %105 = load %struct.fapll_synth*, %struct.fapll_synth** %8, align 8
  %106 = getelementptr inbounds %struct.fapll_synth, %struct.fapll_synth* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @writel_relaxed(i64 %104, i32 %107)
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %89, %71, %45, %30
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.fapll_synth* @to_synth(%struct.clk_hw*) #1

declare dso_local i64 @ti_fapll_clock_is_bypass(%struct.fapll_data*) #1

declare dso_local i64 @ti_fapll_synth_get_frac_rate(%struct.clk_hw*, i64) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i64 @ti_fapll_synth_set_frac_rate(%struct.fapll_synth*, i64, i64) #1

declare dso_local i64 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
