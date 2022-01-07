; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mp.c_ccu_mp_mmc_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mp.c_ccu_mp_mmc_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.ccu_common = type { i64, i64 }

@CCU_MMC_NEW_TIMING_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @ccu_mp_mmc_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ccu_mp_mmc_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ccu_common*, align 8
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @ccu_mp_recalc_rate(%struct.clk_hw* %9, i64 %10)
  store i64 %11, i64* %6, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %13 = call %struct.ccu_common* @hw_to_ccu_common(%struct.clk_hw* %12)
  store %struct.ccu_common* %13, %struct.ccu_common** %7, align 8
  %14 = load %struct.ccu_common*, %struct.ccu_common** %7, align 8
  %15 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ccu_common*, %struct.ccu_common** %7, align 8
  %18 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @CCU_MMC_NEW_TIMING_MODE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i64, i64* %6, align 8
  %28 = udiv i64 %27, 2
  store i64 %28, i64* %3, align 8
  br label %31

29:                                               ; preds = %2
  %30 = load i64, i64* %6, align 8
  store i64 %30, i64* %3, align 8
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i64, i64* %3, align 8
  ret i64 %32
}

declare dso_local i64 @ccu_mp_recalc_rate(%struct.clk_hw*, i64) #1

declare dso_local %struct.ccu_common* @hw_to_ccu_common(%struct.clk_hw*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
