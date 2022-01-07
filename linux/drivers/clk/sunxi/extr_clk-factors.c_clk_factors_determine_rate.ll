; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-factors.c_clk_factors_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-factors.c_clk_factors_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i64, i64, %struct.clk_hw* }
%struct.clk_factors = type { i32 (%struct.factors_request*)* }
%struct.factors_request = type { i64, i32, i64 }

@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @clk_factors_determine_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_factors_determine_rate(%struct.clk_hw* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca %struct.clk_rate_request*, align 8
  %6 = alloca %struct.clk_factors*, align 8
  %7 = alloca %struct.clk_hw*, align 8
  %8 = alloca %struct.clk_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.factors_request, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %5, align 8
  %16 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %17 = call %struct.clk_factors* @to_clk_factors(%struct.clk_hw* %16)
  store %struct.clk_factors* %17, %struct.clk_factors** %6, align 8
  store %struct.clk_hw* null, %struct.clk_hw** %8, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %14, align 8
  %18 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %19 = call i32 @clk_hw_get_num_parents(%struct.clk_hw* %18)
  store i32 %19, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %76, %2
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %79

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %15, i32 0, i32 0
  %26 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %27 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %25, align 8
  %29 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %15, i32 0, i32 1
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %29, align 8
  %31 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %15, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %32, i32 %33)
  store %struct.clk_hw* %34, %struct.clk_hw** %7, align 8
  %35 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %36 = icmp ne %struct.clk_hw* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %24
  br label %76

38:                                               ; preds = %24
  %39 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %40 = call i32 @clk_hw_get_flags(%struct.clk_hw* %39)
  %41 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %46 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %47 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @clk_hw_round_rate(%struct.clk_hw* %45, i64 %48)
  store i64 %49, i64* %11, align 8
  br label %53

50:                                               ; preds = %38
  %51 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %52 = call i64 @clk_hw_get_rate(%struct.clk_hw* %51)
  store i64 %52, i64* %11, align 8
  br label %53

53:                                               ; preds = %50, %44
  %54 = load i64, i64* %11, align 8
  %55 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %15, i32 0, i32 2
  store i64 %54, i64* %55, align 8
  %56 = load %struct.clk_factors*, %struct.clk_factors** %6, align 8
  %57 = getelementptr inbounds %struct.clk_factors, %struct.clk_factors* %56, i32 0, i32 0
  %58 = load i32 (%struct.factors_request*)*, i32 (%struct.factors_request*)** %57, align 8
  %59 = call i32 %58(%struct.factors_request* %15)
  %60 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %15, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %13, align 8
  %62 = load i64, i64* %13, align 8
  %63 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %64 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ule i64 %62, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %53
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* %14, align 8
  %70 = icmp ugt i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  store %struct.clk_hw* %72, %struct.clk_hw** %8, align 8
  %73 = load i64, i64* %11, align 8
  store i64 %73, i64* %12, align 8
  %74 = load i64, i64* %13, align 8
  store i64 %74, i64* %14, align 8
  br label %75

75:                                               ; preds = %71, %67, %53
  br label %76

76:                                               ; preds = %75, %37
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %20

79:                                               ; preds = %20
  %80 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %81 = icmp ne %struct.clk_hw* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %95

85:                                               ; preds = %79
  %86 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %87 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %88 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %87, i32 0, i32 2
  store %struct.clk_hw* %86, %struct.clk_hw** %88, align 8
  %89 = load i64, i64* %12, align 8
  %90 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %91 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  %92 = load i64, i64* %14, align 8
  %93 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %94 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %85, %82
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.clk_factors* @to_clk_factors(%struct.clk_hw*) #1

declare dso_local i32 @clk_hw_get_num_parents(%struct.clk_hw*) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw*, i32) #1

declare dso_local i32 @clk_hw_get_flags(%struct.clk_hw*) #1

declare dso_local i64 @clk_hw_round_rate(%struct.clk_hw*, i64) #1

declare dso_local i64 @clk_hw_get_rate(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
