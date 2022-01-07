; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-u300.c_mclk_clk_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-u300.c_mclk_clk_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_mclk = type { i32 }

@syscon_vbase = common dso_local global i64 0, align 8
@U300_SYSCON_MMF0R = common dso_local global i64 0, align 8
@U300_SYSCON_MMCR = common dso_local global i64 0, align 8
@U300_SYSCON_MMCR_MMC_FB_CLK_SEL_ENABLE = common dso_local global i32 0, align 4
@U300_SYSCON_MMCR_MSPRO_FREQSEL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @mclk_clk_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mclk_clk_prepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_mclk*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.clk_mclk* @to_mclk(%struct.clk_hw* %5)
  store %struct.clk_mclk* %6, %struct.clk_mclk** %3, align 8
  %7 = load %struct.clk_mclk*, %struct.clk_mclk** %3, align 8
  %8 = getelementptr inbounds %struct.clk_mclk, %struct.clk_mclk* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %33, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* @syscon_vbase, align 8
  %13 = load i64, i64* @U300_SYSCON_MMF0R, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writew(i32 84, i64 %14)
  %16 = load i64, i64* @syscon_vbase, align 8
  %17 = load i64, i64* @U300_SYSCON_MMCR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readw(i64 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @U300_SYSCON_MMCR_MMC_FB_CLK_SEL_ENABLE, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @U300_SYSCON_MMCR_MSPRO_FREQSEL_ENABLE, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i64, i64* @syscon_vbase, align 8
  %30 = load i64, i64* @U300_SYSCON_MMCR, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writew(i32 %28, i64 %31)
  br label %50

33:                                               ; preds = %1
  %34 = load i64, i64* @syscon_vbase, align 8
  %35 = load i64, i64* @U300_SYSCON_MMCR, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readw(i64 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @U300_SYSCON_MMCR_MMC_FB_CLK_SEL_ENABLE, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @U300_SYSCON_MMCR_MSPRO_FREQSEL_ENABLE, align 4
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i64, i64* @syscon_vbase, align 8
  %47 = load i64, i64* @U300_SYSCON_MMCR, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writew(i32 %45, i64 %48)
  br label %50

50:                                               ; preds = %33, %11
  ret i32 0
}

declare dso_local %struct.clk_mclk* @to_mclk(%struct.clk_hw*) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @readw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
