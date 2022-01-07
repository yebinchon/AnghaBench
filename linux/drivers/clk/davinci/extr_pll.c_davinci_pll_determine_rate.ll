; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_pll.c_davinci_pll_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_pll.c_davinci_pll_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i64, i64, i64, i64, %struct.clk_hw* }
%struct.davinci_pll_clk = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @davinci_pll_determine_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_pll_determine_rate(%struct.clk_hw* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca %struct.clk_rate_request*, align 8
  %6 = alloca %struct.davinci_pll_clk*, align 8
  %7 = alloca %struct.clk_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %5, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %14 = call %struct.davinci_pll_clk* @to_davinci_pll_clk(%struct.clk_hw* %13)
  store %struct.davinci_pll_clk* %14, %struct.davinci_pll_clk** %6, align 8
  %15 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %16 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %15, i32 0, i32 4
  %17 = load %struct.clk_hw*, %struct.clk_hw** %16, align 8
  store %struct.clk_hw* %17, %struct.clk_hw** %7, align 8
  %18 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %19 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %22 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %26 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %135

32:                                               ; preds = %2
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %35 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @min(i64 %33, i64 %36)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %8, align 8
  %40 = udiv i64 %38, %39
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %12, align 8
  %43 = mul i64 %41, %42
  store i64 %43, i64* %10, align 8
  %44 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %45 = call i32 @clk_hw_get_flags(%struct.clk_hw* %44)
  %46 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %77, label %49

49:                                               ; preds = %32
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %52 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %135

58:                                               ; preds = %49
  %59 = load i64, i64* %12, align 8
  %60 = load %struct.davinci_pll_clk*, %struct.davinci_pll_clk** %6, align 8
  %61 = getelementptr inbounds %struct.davinci_pll_clk, %struct.davinci_pll_clk* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ult i64 %59, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load i64, i64* %12, align 8
  %66 = load %struct.davinci_pll_clk*, %struct.davinci_pll_clk** %6, align 8
  %67 = getelementptr inbounds %struct.davinci_pll_clk, %struct.davinci_pll_clk* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ugt i64 %65, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64, %58
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %135

73:                                               ; preds = %64
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %76 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  store i32 0, i32* %3, align 4
  br label %135

77:                                               ; preds = %32
  store i64 0, i64* %10, align 8
  %78 = load %struct.davinci_pll_clk*, %struct.davinci_pll_clk** %6, align 8
  %79 = getelementptr inbounds %struct.davinci_pll_clk, %struct.davinci_pll_clk* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %12, align 8
  br label %81

81:                                               ; preds = %131, %77
  %82 = load i64, i64* %12, align 8
  %83 = load %struct.davinci_pll_clk*, %struct.davinci_pll_clk** %6, align 8
  %84 = getelementptr inbounds %struct.davinci_pll_clk, %struct.davinci_pll_clk* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ule i64 %82, %85
  br i1 %86, label %87, label %134

87:                                               ; preds = %81
  %88 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* %12, align 8
  %91 = udiv i64 %89, %90
  %92 = call i64 @clk_hw_round_rate(%struct.clk_hw* %88, i64 %91)
  store i64 %92, i64* %8, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %12, align 8
  %95 = mul i64 %93, %94
  store i64 %95, i64* %11, align 8
  %96 = load i64, i64* %11, align 8
  %97 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %98 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ult i64 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %87
  br label %131

102:                                              ; preds = %87
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* %9, align 8
  %105 = icmp ugt i64 %103, %104
  br i1 %105, label %112, label %106

106:                                              ; preds = %102
  %107 = load i64, i64* %11, align 8
  %108 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %109 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = icmp ugt i64 %107, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %106, %102
  br label %134

113:                                              ; preds = %106
  %114 = load i64, i64* %11, align 8
  %115 = load i64, i64* %10, align 8
  %116 = icmp ugt i64 %114, %115
  br i1 %116, label %117, label %130

117:                                              ; preds = %113
  %118 = load i64, i64* %11, align 8
  store i64 %118, i64* %10, align 8
  %119 = load i64, i64* %10, align 8
  %120 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %121 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  %122 = load i64, i64* %8, align 8
  %123 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %124 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load i64, i64* %10, align 8
  %126 = load i64, i64* %9, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %117
  br label %134

129:                                              ; preds = %117
  br label %130

130:                                              ; preds = %129, %113
  br label %131

131:                                              ; preds = %130, %101
  %132 = load i64, i64* %12, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %12, align 8
  br label %81

134:                                              ; preds = %128, %112, %81
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %134, %73, %70, %55, %29
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local %struct.davinci_pll_clk* @to_davinci_pll_clk(%struct.clk_hw*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @clk_hw_get_flags(%struct.clk_hw*) #1

declare dso_local i64 @clk_hw_round_rate(%struct.clk_hw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
