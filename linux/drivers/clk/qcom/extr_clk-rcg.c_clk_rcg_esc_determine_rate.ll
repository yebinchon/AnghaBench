; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg.c_clk_rcg_esc_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg.c_clk_rcg_esc_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i64, i64, i32 }
%struct.clk_rcg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @clk_rcg_esc_determine_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_rcg_esc_determine_rate(%struct.clk_hw* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca %struct.clk_rate_request*, align 8
  %6 = alloca %struct.clk_rcg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %5, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %11 = call %struct.clk_rcg* @to_clk_rcg(%struct.clk_hw* %10)
  store %struct.clk_rcg* %11, %struct.clk_rcg** %6, align 8
  %12 = load %struct.clk_rcg*, %struct.clk_rcg** %6, align 8
  %13 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @BIT(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %18 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %54

24:                                               ; preds = %2
  %25 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %26 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @clk_hw_get_rate(i32 %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %31 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = udiv i64 %29, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp sge i32 %35, 1
  br i1 %36, label %37, label %51

37:                                               ; preds = %24
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %44 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = udiv i64 %45, %47
  %49 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %50 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  store i32 0, i32* %3, align 4
  br label %54

51:                                               ; preds = %37, %24
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %41, %21
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.clk_rcg* @to_clk_rcg(%struct.clk_hw*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @clk_hw_get_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
