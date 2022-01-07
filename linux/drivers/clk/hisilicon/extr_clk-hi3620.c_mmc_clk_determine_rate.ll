; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hi3620.c_mmc_clk_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hi3620.c_mmc_clk_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i32, i32 }
%struct.clk_mmc = type { i64 }

@HI3620_MMC_CIUCLK1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @mmc_clk_determine_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_clk_determine_rate(%struct.clk_hw* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_rate_request*, align 8
  %5 = alloca %struct.clk_mmc*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %4, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %7 = call %struct.clk_mmc* @to_mmc(%struct.clk_hw* %6)
  store %struct.clk_mmc* %7, %struct.clk_mmc** %5, align 8
  %8 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %9 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sle i32 %10, 13000000
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.clk_mmc*, %struct.clk_mmc** %5, align 8
  %14 = getelementptr inbounds %struct.clk_mmc, %struct.clk_mmc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @HI3620_MMC_CIUCLK1, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %20 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %19, i32 0, i32 0
  store i32 13000000, i32* %20, align 4
  %21 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %22 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %21, i32 0, i32 1
  store i32 26000000, i32* %22, align 4
  br label %61

23:                                               ; preds = %12, %2
  %24 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %25 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sle i32 %26, 26000000
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %30 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %29, i32 0, i32 0
  store i32 25000000, i32* %30, align 4
  %31 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %32 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %31, i32 0, i32 1
  store i32 180000000, i32* %32, align 4
  br label %60

33:                                               ; preds = %23
  %34 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %35 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sle i32 %36, 52000000
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %40 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %39, i32 0, i32 0
  store i32 50000000, i32* %40, align 4
  %41 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %42 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %41, i32 0, i32 1
  store i32 360000000, i32* %42, align 4
  br label %59

43:                                               ; preds = %33
  %44 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %45 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sle i32 %46, 100000000
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %50 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %49, i32 0, i32 0
  store i32 100000000, i32* %50, align 4
  %51 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %52 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %51, i32 0, i32 1
  store i32 720000000, i32* %52, align 4
  br label %58

53:                                               ; preds = %43
  %54 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %55 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %54, i32 0, i32 0
  store i32 180000000, i32* %55, align 4
  %56 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %57 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %56, i32 0, i32 1
  store i32 1440000000, i32* %57, align 4
  br label %58

58:                                               ; preds = %53, %48
  br label %59

59:                                               ; preds = %58, %38
  br label %60

60:                                               ; preds = %59, %28
  br label %61

61:                                               ; preds = %60, %18
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  ret i32 %63
}

declare dso_local %struct.clk_mmc* @to_mmc(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
