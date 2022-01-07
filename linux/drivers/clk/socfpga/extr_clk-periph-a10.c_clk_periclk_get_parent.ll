; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/socfpga/extr_clk-periph-a10.c_clk_periclk_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/socfpga/extr_clk-periph-a10.c_clk_periclk_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.socfpga_periph_clk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SOCFPGA_MPU_FREE_CLK = common dso_local global i32 0, align 4
@SOCFPGA_NOC_FREE_CLK = common dso_local global i32 0, align 4
@SOCFPGA_SDMMC_FREE_CLK = common dso_local global i32 0, align 4
@CLK_MGR_FREE_SHIFT = common dso_local global i32 0, align 4
@CLK_MGR_FREE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_periclk_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_periclk_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.socfpga_periph_clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.socfpga_periph_clk* @to_socfpga_periph_clk(%struct.clk_hw* %7)
  store %struct.socfpga_periph_clk* %8, %struct.socfpga_periph_clk** %4, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %10 = call i8* @clk_hw_get_name(%struct.clk_hw* %9)
  store i8* %10, i8** %6, align 8
  %11 = load %struct.socfpga_periph_clk*, %struct.socfpga_periph_clk** %4, align 8
  %12 = getelementptr inbounds %struct.socfpga_periph_clk, %struct.socfpga_periph_clk* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @readl(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* @SOCFPGA_MPU_FREE_CLK, align 4
  %18 = call i64 @streq(i8* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %1
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* @SOCFPGA_NOC_FREE_CLK, align 4
  %23 = call i64 @streq(i8* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @SOCFPGA_SDMMC_FREE_CLK, align 4
  %28 = call i64 @streq(i8* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25, %20, %1
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @CLK_MGR_FREE_SHIFT, align 4
  %33 = ashr i32 %31, %32
  %34 = load i32, i32* @CLK_MGR_FREE_MASK, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.socfpga_periph_clk* @to_socfpga_periph_clk(%struct.clk_hw*) #1

declare dso_local i8* @clk_hw_get_name(%struct.clk_hw*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i64 @streq(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
