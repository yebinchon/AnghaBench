; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_clock_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_clock_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i64, i64, %struct.clk_hw* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @bcm2835_clock_determine_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_clock_determine_rate(%struct.clk_hw* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca %struct.clk_rate_request*, align 8
  %6 = alloca %struct.clk_hw*, align 8
  %7 = alloca %struct.clk_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %5, align 8
  store %struct.clk_hw* null, %struct.clk_hw** %7, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %14, align 8
  %17 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %18 = call %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* %17)
  %19 = call i32 @bcm2835_clk_is_pllc(%struct.clk_hw* %18)
  store i32 %19, i32* %8, align 4
  store i64 0, i64* %15, align 8
  br label %20

20:                                               ; preds = %62, %2
  %21 = load i64, i64* %15, align 8
  %22 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %23 = call i64 @clk_hw_get_num_parents(%struct.clk_hw* %22)
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %25, label %65

25:                                               ; preds = %20
  %26 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %27 = load i64, i64* %15, align 8
  %28 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %26, i64 %27)
  store %struct.clk_hw* %28, %struct.clk_hw** %6, align 8
  %29 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %30 = icmp ne %struct.clk_hw* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %62

32:                                               ; preds = %25
  %33 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %34 = call i32 @bcm2835_clk_is_pllc(%struct.clk_hw* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  br label %62

40:                                               ; preds = %36, %32
  %41 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %42 = load i64, i64* %15, align 8
  %43 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %44 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @bcm2835_clock_choose_div_and_prate(%struct.clk_hw* %41, i64 %42, i64 %45, i32* %16, i64* %11, i64* %13)
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %40
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %53 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ule i64 %51, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  store %struct.clk_hw* %57, %struct.clk_hw** %7, align 8
  %58 = load i64, i64* %11, align 8
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %9, align 8
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %13, align 8
  store i64 %60, i64* %14, align 8
  br label %61

61:                                               ; preds = %56, %50, %40
  br label %62

62:                                               ; preds = %61, %39, %31
  %63 = load i64, i64* %15, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %15, align 8
  br label %20

65:                                               ; preds = %20
  %66 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %67 = icmp ne %struct.clk_hw* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %81

71:                                               ; preds = %65
  %72 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %73 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %74 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %73, i32 0, i32 2
  store %struct.clk_hw* %72, %struct.clk_hw** %74, align 8
  %75 = load i64, i64* %12, align 8
  %76 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %77 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load i64, i64* %14, align 8
  %79 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %80 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %71, %68
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @bcm2835_clk_is_pllc(%struct.clk_hw*) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw*) #1

declare dso_local i64 @clk_hw_get_num_parents(%struct.clk_hw*) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw*, i64) #1

declare dso_local i64 @bcm2835_clock_choose_div_and_prate(%struct.clk_hw*, i64, i64, i32*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
