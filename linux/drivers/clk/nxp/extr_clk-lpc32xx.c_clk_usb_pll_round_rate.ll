; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc32xx.c_clk_usb_pll_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc32xx.c_clk_usb_pll_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.lpc32xx_pll_clk = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s: %lu/%lu\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@PLL_NON_INTEGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @clk_usb_pll_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_usb_pll_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.lpc32xx_pll_clk*, align 8
  %9 = alloca %struct.clk_hw*, align 8
  %10 = alloca %struct.clk_hw*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %15 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %16 = call %struct.lpc32xx_pll_clk* @to_lpc32xx_pll_clk(%struct.clk_hw* %15)
  store %struct.lpc32xx_pll_clk* %16, %struct.lpc32xx_pll_clk** %8, align 8
  %17 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %18 = call i32 @clk_hw_get_name(%struct.clk_hw* %17)
  %19 = load i64*, i64** %7, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %18, i64 %20, i64 %21)
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 48000000
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i64, i64* @EINVAL, align 8
  %27 = sub nsw i64 0, %26
  store i64 %27, i64* %4, align 8
  br label %117

28:                                               ; preds = %3
  %29 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %30 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %29, i32 0)
  store %struct.clk_hw* %30, %struct.clk_hw** %9, align 8
  %31 = load %struct.clk_hw*, %struct.clk_hw** %9, align 8
  %32 = icmp ne %struct.clk_hw* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i64, i64* @EINVAL, align 8
  %35 = sub nsw i64 0, %34
  store i64 %35, i64* %4, align 8
  br label %117

36:                                               ; preds = %28
  %37 = load %struct.clk_hw*, %struct.clk_hw** %9, align 8
  %38 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %37, i32 0)
  store %struct.clk_hw* %38, %struct.clk_hw** %10, align 8
  %39 = load %struct.clk_hw*, %struct.clk_hw** %10, align 8
  %40 = icmp ne %struct.clk_hw* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i64, i64* @EINVAL, align 8
  %43 = sub nsw i64 0, %42
  store i64 %43, i64* %4, align 8
  br label %117

44:                                               ; preds = %36
  %45 = load %struct.clk_hw*, %struct.clk_hw** %10, align 8
  %46 = call i32 @clk_hw_get_rate(%struct.clk_hw* %45)
  store i32 %46, i32* %14, align 4
  store i32 16, i32* %11, align 4
  br label %47

47:                                               ; preds = %111, %44
  %48 = load i32, i32* %11, align 4
  %49 = icmp sge i32 %48, 1
  br i1 %49, label %50, label %114

50:                                               ; preds = %47
  store i32 1, i32* %12, align 4
  br label %51

51:                                               ; preds = %107, %50
  %52 = load i32, i32* %12, align 4
  %53 = icmp sle i32 %52, 4
  br i1 %53, label %54, label %110

54:                                               ; preds = %51
  %55 = load i32, i32* %11, align 4
  %56 = mul nsw i32 192000000, %55
  %57 = load i32, i32* %12, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load i32, i32* %14, align 4
  %60 = call i8* @div64_u64(i32 %58, i32 %59)
  %61 = ptrtoint i8* %60 to i32
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %88

64:                                               ; preds = %54
  %65 = load i32, i32* %13, align 4
  %66 = icmp sle i32 %65, 256
  br i1 %66, label %67, label %88

67:                                               ; preds = %64
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %14, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* %11, align 4
  %72 = mul nsw i32 192000000, %71
  %73 = load i32, i32* %12, align 4
  %74 = mul nsw i32 %72, %73
  %75 = icmp eq i32 %70, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %67
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i64 @pll_is_valid(i32 %77, i32 %78, i32 1000000, i32 20000000)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = mul nsw i32 %83, %84
  %86 = call i64 @pll_is_valid(i32 %82, i32 %85, i32 1000000, i32 27000000)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %81, %76, %67, %64, %54
  br label %107

89:                                               ; preds = %81
  %90 = load i32, i32* %12, align 4
  %91 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %8, align 8
  %92 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %8, align 8
  %95 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %8, align 8
  %97 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %96, i32 0, i32 2
  store i32 2, i32* %97, align 4
  %98 = load i32, i32* @PLL_NON_INTEGER, align 4
  %99 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %8, align 8
  %100 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i8* @div64_u64(i32 %101, i32 %102)
  %104 = ptrtoint i8* %103 to i64
  %105 = load i64*, i64** %7, align 8
  store i64 %104, i64* %105, align 8
  %106 = load i64, i64* %6, align 8
  store i64 %106, i64* %4, align 8
  br label %117

107:                                              ; preds = %88
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  br label %51

110:                                              ; preds = %51
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %11, align 4
  br label %47

114:                                              ; preds = %47
  %115 = load i64, i64* @EINVAL, align 8
  %116 = sub nsw i64 0, %115
  store i64 %116, i64* %4, align 8
  br label %117

117:                                              ; preds = %114, %89, %41, %33, %25
  %118 = load i64, i64* %4, align 8
  ret i64 %118
}

declare dso_local %struct.lpc32xx_pll_clk* @to_lpc32xx_pll_clk(%struct.clk_hw*) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, i64) #1

declare dso_local i32 @clk_hw_get_name(%struct.clk_hw*) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw*, i32) #1

declare dso_local i32 @clk_hw_get_rate(%struct.clk_hw*) #1

declare dso_local i8* @div64_u64(i32, i32) #1

declare dso_local i64 @pll_is_valid(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
