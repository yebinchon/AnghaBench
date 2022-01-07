; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg.c_clk_rcg_pixel_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg.c_clk_rcg_pixel_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frac_entry = type { i32, i64 }
%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i64, i64, i32 }

@pixel_table = common dso_local global %struct.frac_entry* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @clk_rcg_pixel_determine_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_rcg_pixel_determine_rate(%struct.clk_hw* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca %struct.clk_rate_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.frac_entry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %5, align 8
  store i32 100000, i32* %6, align 4
  %10 = load %struct.frac_entry*, %struct.frac_entry** @pixel_table, align 8
  store %struct.frac_entry* %10, %struct.frac_entry** %7, align 8
  br label %11

11:                                               ; preds = %64, %2
  %12 = load %struct.frac_entry*, %struct.frac_entry** %7, align 8
  %13 = getelementptr inbounds %struct.frac_entry, %struct.frac_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %67

16:                                               ; preds = %11
  %17 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %18 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.frac_entry*, %struct.frac_entry** %7, align 8
  %21 = getelementptr inbounds %struct.frac_entry, %struct.frac_entry* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = mul i64 %19, %22
  %24 = load %struct.frac_entry*, %struct.frac_entry** %7, align 8
  %25 = getelementptr inbounds %struct.frac_entry, %struct.frac_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = udiv i64 %23, %27
  store i64 %28, i64* %8, align 8
  %29 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %30 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @clk_hw_round_rate(i32 %31, i64 %32)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 %35, %37
  %39 = icmp ult i64 %34, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %16
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %42, %44
  %46 = icmp ugt i64 %41, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40, %16
  br label %64

48:                                               ; preds = %40
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %51 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.frac_entry*, %struct.frac_entry** %7, align 8
  %54 = getelementptr inbounds %struct.frac_entry, %struct.frac_entry* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = mul i64 %52, %56
  %58 = load %struct.frac_entry*, %struct.frac_entry** %7, align 8
  %59 = getelementptr inbounds %struct.frac_entry, %struct.frac_entry* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = udiv i64 %57, %60
  %62 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %63 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  store i32 0, i32* %3, align 4
  br label %70

64:                                               ; preds = %47
  %65 = load %struct.frac_entry*, %struct.frac_entry** %7, align 8
  %66 = getelementptr inbounds %struct.frac_entry, %struct.frac_entry* %65, i32 1
  store %struct.frac_entry* %66, %struct.frac_entry** %7, align 8
  br label %11

67:                                               ; preds = %11
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %67, %48
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @clk_hw_round_rate(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
