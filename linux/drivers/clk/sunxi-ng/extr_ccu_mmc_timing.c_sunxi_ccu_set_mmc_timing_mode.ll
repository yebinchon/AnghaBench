; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mmc_timing.c_sunxi_ccu_set_mmc_timing_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mmc_timing.c_sunxi_ccu_set_mmc_timing_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.clk_hw = type { i32 }
%struct.ccu_common = type { i32, i32, i64, i64 }

@CCU_FEATURE_MMC_TIMING_SWITCH = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@CCU_MMC_NEW_TIMING_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sunxi_ccu_set_mmc_timing_mode(%struct.clk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_hw*, align 8
  %7 = alloca %struct.ccu_common*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.clk*, %struct.clk** %4, align 8
  %11 = call %struct.clk_hw* @__clk_get_hw(%struct.clk* %10)
  store %struct.clk_hw* %11, %struct.clk_hw** %6, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %13 = call %struct.ccu_common* @hw_to_ccu_common(%struct.clk_hw* %12)
  store %struct.ccu_common* %13, %struct.ccu_common** %7, align 8
  %14 = load %struct.ccu_common*, %struct.ccu_common** %7, align 8
  %15 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @CCU_FEATURE_MMC_TIMING_SWITCH, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %63

23:                                               ; preds = %2
  %24 = load %struct.ccu_common*, %struct.ccu_common** %7, align 8
  %25 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @spin_lock_irqsave(i32 %26, i64 %27)
  %29 = load %struct.ccu_common*, %struct.ccu_common** %7, align 8
  %30 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ccu_common*, %struct.ccu_common** %7, align 8
  %33 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = call i32 @readl(i64 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %23
  %40 = load i32, i32* @CCU_MMC_NEW_TIMING_MODE, align 4
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %48

43:                                               ; preds = %23
  %44 = load i32, i32* @CCU_MMC_NEW_TIMING_MODE, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %43, %39
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.ccu_common*, %struct.ccu_common** %7, align 8
  %51 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ccu_common*, %struct.ccu_common** %7, align 8
  %54 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = call i32 @writel(i32 %49, i64 %56)
  %58 = load %struct.ccu_common*, %struct.ccu_common** %7, align 8
  %59 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32 %60, i64 %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %48, %20
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.clk_hw* @__clk_get_hw(%struct.clk*) #1

declare dso_local %struct.ccu_common* @hw_to_ccu_common(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
