; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sun4i-tcon-ch1.c_tcon_ch1_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sun4i-tcon-ch1.c_tcon_ch1_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i64, i64, %struct.clk_hw* }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @tcon_ch1_determine_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcon_ch1_determine_rate(%struct.clk_hw* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca %struct.clk_rate_request*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.clk_hw*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %5, align 8
  %11 = load i64, i64* @EINVAL, align 8
  %12 = sub nsw i64 0, %11
  store i64 %12, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %56, %2
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %16 = call i32 @clk_hw_get_num_parents(%struct.clk_hw* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %59

18:                                               ; preds = %13
  %19 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %19, i32 %20)
  store %struct.clk_hw* %21, %struct.clk_hw** %10, align 8
  %22 = load %struct.clk_hw*, %struct.clk_hw** %10, align 8
  %23 = icmp ne %struct.clk_hw* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %56

25:                                               ; preds = %18
  %26 = load %struct.clk_hw*, %struct.clk_hw** %10, align 8
  %27 = call i64 @clk_hw_get_rate(%struct.clk_hw* %26)
  store i64 %27, i64* %8, align 8
  %28 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %29 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @tcon_ch1_calc_divider(i64 %30, i64 %31, i32* null, i32* null)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %25
  %36 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %37 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = sub i64 %38, %39
  %41 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %42 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = sub i64 %43, %44
  %46 = icmp ult i64 %40, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %35, %25
  %48 = load i64, i64* %9, align 8
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %51 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.clk_hw*, %struct.clk_hw** %10, align 8
  %53 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %54 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %53, i32 0, i32 2
  store %struct.clk_hw* %52, %struct.clk_hw** %54, align 8
  br label %55

55:                                               ; preds = %47, %35
  br label %56

56:                                               ; preds = %55, %24
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %13

59:                                               ; preds = %13
  %60 = load i64, i64* %6, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i64, i64* %6, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %3, align 4
  br label %69

65:                                               ; preds = %59
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %68 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @clk_hw_get_num_parents(%struct.clk_hw*) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw*, i32) #1

declare dso_local i64 @clk_hw_get_rate(%struct.clk_hw*) #1

declare dso_local i64 @tcon_ch1_calc_divider(i64, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
