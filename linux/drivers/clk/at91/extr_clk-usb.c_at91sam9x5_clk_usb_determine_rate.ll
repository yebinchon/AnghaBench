; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-usb.c_at91sam9x5_clk_usb_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-usb.c_at91sam9x5_clk_usb_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i32, i64, %struct.clk_hw* }

@EINVAL = common dso_local global i64 0, align 8
@SAM9X5_USB_MAX_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @at91sam9x5_clk_usb_determine_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91sam9x5_clk_usb_determine_rate(%struct.clk_hw* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca %struct.clk_rate_request*, align 8
  %6 = alloca %struct.clk_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %5, align 8
  %14 = load i64, i64* @EINVAL, align 8
  %15 = sub nsw i64 0, %14
  store i64 %15, i64* %7, align 8
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %105, %2
  %17 = load i32, i32* %11, align 4
  %18 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %19 = call i32 @clk_hw_get_num_parents(%struct.clk_hw* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %108

21:                                               ; preds = %16
  %22 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %22, i32 %23)
  store %struct.clk_hw* %24, %struct.clk_hw** %6, align 8
  %25 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %26 = icmp ne %struct.clk_hw* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %105

28:                                               ; preds = %21
  store i32 1, i32* %12, align 4
  br label %29

29:                                               ; preds = %97, %28
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @SAM9X5_USB_MAX_DIV, align 4
  %32 = add nsw i32 %31, 2
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %100

34:                                               ; preds = %29
  %35 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %36 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = mul nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %13, align 8
  %41 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %42 = load i64, i64* %13, align 8
  %43 = call i64 @clk_hw_round_rate(%struct.clk_hw* %41, i64 %42)
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* %13, align 8
  %45 = load i32, i32* %12, align 4
  %46 = call i64 @DIV_ROUND_CLOSEST(i64 %44, i32 %45)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %49 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %47, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %34
  %54 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %55 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %8, align 8
  %59 = sub i64 %57, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %10, align 4
  br label %69

61:                                               ; preds = %34
  %62 = load i64, i64* %8, align 8
  %63 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %64 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = sub i64 %62, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %61, %53
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %72, %69
  %77 = load i64, i64* %8, align 8
  store i64 %77, i64* %7, align 8
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %9, align 4
  %79 = load i64, i64* %13, align 8
  %80 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %81 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %83 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %84 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %83, i32 0, i32 2
  store %struct.clk_hw* %82, %struct.clk_hw** %84, align 8
  br label %85

85:                                               ; preds = %76, %72
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %91 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = icmp ult i64 %89, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %88, %85
  br label %100

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %29

100:                                              ; preds = %95, %29
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  br label %108

104:                                              ; preds = %100
  br label %105

105:                                              ; preds = %104, %27
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %16

108:                                              ; preds = %103, %16
  %109 = load i64, i64* %7, align 8
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i64, i64* %7, align 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %3, align 4
  br label %119

114:                                              ; preds = %108
  %115 = load i64, i64* %7, align 8
  %116 = trunc i64 %115 to i32
  %117 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %118 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %114, %111
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @clk_hw_get_num_parents(%struct.clk_hw*) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw*, i32) #1

declare dso_local i64 @clk_hw_round_rate(%struct.clk_hw*, i64) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
