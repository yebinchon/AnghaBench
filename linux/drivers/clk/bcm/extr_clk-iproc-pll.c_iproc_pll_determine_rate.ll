; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-pll.c_iproc_pll_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-pll.c_iproc_pll_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i64, i64 }
%struct.iproc_clk = type { %struct.iproc_pll* }
%struct.iproc_pll = type { i32, %struct.TYPE_2__*, %struct.iproc_pll_ctrl* }
%struct.TYPE_2__ = type { i64 }
%struct.iproc_pll_ctrl = type { i32 }
%struct.iproc_pll_vco_param = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@IPROC_CLK_PLL_CALC_PARAM = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @iproc_pll_determine_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_pll_determine_rate(%struct.clk_hw* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca %struct.clk_rate_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iproc_clk*, align 8
  %8 = alloca %struct.iproc_pll*, align 8
  %9 = alloca %struct.iproc_pll_ctrl*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.iproc_pll_vco_param, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %5, align 8
  %15 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %16 = call %struct.iproc_clk* @to_iproc_clk(%struct.clk_hw* %15)
  store %struct.iproc_clk* %16, %struct.iproc_clk** %7, align 8
  %17 = load %struct.iproc_clk*, %struct.iproc_clk** %7, align 8
  %18 = getelementptr inbounds %struct.iproc_clk, %struct.iproc_clk* %17, i32 0, i32 0
  %19 = load %struct.iproc_pll*, %struct.iproc_pll** %18, align 8
  store %struct.iproc_pll* %19, %struct.iproc_pll** %8, align 8
  %20 = load %struct.iproc_pll*, %struct.iproc_pll** %8, align 8
  %21 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %20, i32 0, i32 2
  %22 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %21, align 8
  store %struct.iproc_pll_ctrl* %22, %struct.iproc_pll_ctrl** %9, align 8
  store i32 0, i32* %12, align 4
  %23 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %24 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %2
  %28 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %29 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27, %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %114

35:                                               ; preds = %27
  %36 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %9, align 8
  %37 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IPROC_CLK_PLL_CALC_PARAM, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %35
  %43 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %44 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %47 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @pll_calc_param(i64 %45, i64 %48, %struct.iproc_pll_vco_param* %14)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %3, align 4
  br label %114

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.iproc_pll_vco_param, %struct.iproc_pll_vco_param* %14, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %58 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  store i32 0, i32* %3, align 4
  br label %114

59:                                               ; preds = %35
  %60 = load %struct.iproc_pll*, %struct.iproc_pll** %8, align 8
  %61 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = icmp ne %struct.TYPE_2__* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %114

67:                                               ; preds = %59
  %68 = load i64, i64* @ULONG_MAX, align 8
  store i64 %68, i64* %11, align 8
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %100, %67
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.iproc_pll*, %struct.iproc_pll** %8, align 8
  %72 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ult i32 %70, %73
  br i1 %74, label %75, label %103

75:                                               ; preds = %69
  %76 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %77 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.iproc_pll*, %struct.iproc_pll** %8, align 8
  %80 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %78, %86
  %88 = call i64 @abs(i64 %87)
  store i64 %88, i64* %10, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* %11, align 8
  %91 = icmp ule i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %75
  %93 = load i64, i64* %10, align 8
  store i64 %93, i64* %11, align 8
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %92, %75
  %96 = load i64, i64* %10, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %103

99:                                               ; preds = %95
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %6, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %69

103:                                              ; preds = %98, %69
  %104 = load %struct.iproc_pll*, %struct.iproc_pll** %8, align 8
  %105 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %113 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %103, %64, %54, %52, %32
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.iproc_clk* @to_iproc_clk(%struct.clk_hw*) #1

declare dso_local i32 @pll_calc_param(i64, i64, %struct.iproc_pll_vco_param*) #1

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
