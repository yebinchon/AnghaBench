; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mp.c_ccu_mp_mmc_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mp.c_ccu_mp_mmc_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i32, i32, i32 }
%struct.ccu_common = type { i64, i64 }

@CCU_MMC_NEW_TIMING_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @ccu_mp_mmc_determine_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccu_mp_mmc_determine_rate(%struct.clk_hw* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_rate_request*, align 8
  %5 = alloca %struct.ccu_common*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %4, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.ccu_common* @hw_to_ccu_common(%struct.clk_hw* %8)
  store %struct.ccu_common* %9, %struct.ccu_common** %5, align 8
  %10 = load %struct.ccu_common*, %struct.ccu_common** %5, align 8
  %11 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.ccu_common*, %struct.ccu_common** %5, align 8
  %14 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @CCU_MMC_NEW_TIMING_MODE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %2
  %23 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %24 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %25, 2
  store i32 %26, i32* %24, align 4
  %27 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %28 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 2
  store i32 %30, i32* %28, align 4
  %31 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %32 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %33, 2
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %22, %2
  %36 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %37 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %38 = call i32 @ccu_mp_determine_rate(%struct.clk_hw* %36, %struct.clk_rate_request* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @CCU_MMC_NEW_TIMING_MODE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %35
  %44 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %45 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %46, 2
  store i32 %47, i32* %45, align 4
  %48 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %49 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sdiv i32 %50, 2
  store i32 %51, i32* %49, align 4
  %52 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %53 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = sdiv i32 %54, 2
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %43, %35
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local %struct.ccu_common* @hw_to_ccu_common(%struct.clk_hw*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @ccu_mp_determine_rate(%struct.clk_hw*, %struct.clk_rate_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
