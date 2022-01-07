; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/rockchip/extr_clk-mmc-phase.c_rockchip_mmc_get_phase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/rockchip/extr_clk-mmc-phase.c_rockchip_mmc_get_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.rockchip_mmc_clock = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ROCKCHIP_MMC_DEGREE_MASK = common dso_local global i32 0, align 4
@ROCKCHIP_MMC_DELAY_SEL = common dso_local global i32 0, align 4
@ROCKCHIP_MMC_DELAY_ELEMENT_PSEC = common dso_local global i32 0, align 4
@ROCKCHIP_MMC_DELAYNUM_MASK = common dso_local global i32 0, align 4
@ROCKCHIP_MMC_DELAYNUM_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @rockchip_mmc_get_phase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_mmc_get_phase(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.rockchip_mmc_clock*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %11 = call %struct.rockchip_mmc_clock* @to_mmc_clock(%struct.clk_hw* %10)
  store %struct.rockchip_mmc_clock* %11, %struct.rockchip_mmc_clock** %4, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %13 = call i64 @clk_hw_get_rate(%struct.clk_hw* %12)
  store i64 %13, i64* %5, align 8
  store i32 0, i32* %8, align 4
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %63

19:                                               ; preds = %1
  %20 = load %struct.rockchip_mmc_clock*, %struct.rockchip_mmc_clock** %4, align 8
  %21 = getelementptr inbounds %struct.rockchip_mmc_clock, %struct.rockchip_mmc_clock* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @readl(i32 %22)
  %24 = load %struct.rockchip_mmc_clock*, %struct.rockchip_mmc_clock** %4, align 8
  %25 = getelementptr inbounds %struct.rockchip_mmc_clock, %struct.rockchip_mmc_clock* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %23, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @ROCKCHIP_MMC_DEGREE_MASK, align 4
  %30 = and i32 %28, %29
  %31 = mul nsw i32 %30, 90
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @ROCKCHIP_MMC_DELAY_SEL, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %19
  %37 = load i32, i32* @ROCKCHIP_MMC_DELAY_ELEMENT_PSEC, align 4
  %38 = sdiv i32 %37, 10
  %39 = mul nsw i32 %38, 36
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %5, align 8
  %42 = udiv i64 %41, 10000
  %43 = mul i64 %40, %42
  store i64 %43, i64* %9, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @ROCKCHIP_MMC_DELAYNUM_MASK, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* @ROCKCHIP_MMC_DELAYNUM_OFFSET, align 4
  %48 = load i32, i32* %8, align 4
  %49 = ashr i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %9, align 8
  %53 = mul i64 %51, %52
  %54 = trunc i64 %53 to i32
  %55 = call i64 @DIV_ROUND_CLOSEST(i32 %54, i32 1000000)
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %36, %19
  %61 = load i32, i32* %7, align 4
  %62 = srem i32 %61, 360
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %60, %16
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.rockchip_mmc_clock* @to_mmc_clock(%struct.clk_hw*) #1

declare dso_local i64 @clk_hw_get_rate(%struct.clk_hw*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
