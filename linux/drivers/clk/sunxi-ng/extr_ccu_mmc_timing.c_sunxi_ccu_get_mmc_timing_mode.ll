; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mmc_timing.c_sunxi_ccu_get_mmc_timing_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mmc_timing.c_sunxi_ccu_get_mmc_timing_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.clk_hw = type { i32 }
%struct.ccu_common = type { i32, i64, i64 }

@CCU_FEATURE_MMC_TIMING_SWITCH = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@CCU_MMC_NEW_TIMING_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sunxi_ccu_get_mmc_timing_mode(%struct.clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk*, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca %struct.ccu_common*, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  %6 = load %struct.clk*, %struct.clk** %3, align 8
  %7 = call %struct.clk_hw* @__clk_get_hw(%struct.clk* %6)
  store %struct.clk_hw* %7, %struct.clk_hw** %4, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %9 = call %struct.ccu_common* @hw_to_ccu_common(%struct.clk_hw* %8)
  store %struct.ccu_common* %9, %struct.ccu_common** %5, align 8
  %10 = load %struct.ccu_common*, %struct.ccu_common** %5, align 8
  %11 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @CCU_FEATURE_MMC_TIMING_SWITCH, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %34

19:                                               ; preds = %1
  %20 = load %struct.ccu_common*, %struct.ccu_common** %5, align 8
  %21 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ccu_common*, %struct.ccu_common** %5, align 8
  %24 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = call i32 @readl(i64 %26)
  %28 = load i32, i32* @CCU_MMC_NEW_TIMING_MODE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %19, %16
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.clk_hw* @__clk_get_hw(%struct.clk*) #1

declare dso_local %struct.ccu_common* @hw_to_ccu_common(%struct.clk_hw*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
