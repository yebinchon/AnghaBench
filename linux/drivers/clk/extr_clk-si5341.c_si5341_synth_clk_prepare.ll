; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5341.c_si5341_synth_clk_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5341.c_si5341_synth_clk_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_si5341_synth = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@SI5341_SYNTH_N_PDNB = common dso_local global i32 0, align 4
@SI5341_SYNTH_N_CLK_DIS = common dso_local global i32 0, align 4
@SI5341_SYNTH_N_CLK_TO_OUTX_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @si5341_synth_clk_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si5341_synth_clk_prepare(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_si5341_synth*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.clk_si5341_synth* @to_clk_si5341_synth(%struct.clk_hw* %8)
  store %struct.clk_si5341_synth* %9, %struct.clk_si5341_synth** %4, align 8
  %10 = load %struct.clk_si5341_synth*, %struct.clk_si5341_synth** %4, align 8
  %11 = getelementptr inbounds %struct.clk_si5341_synth, %struct.clk_si5341_synth* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @BIT(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.clk_si5341_synth*, %struct.clk_si5341_synth** %4, align 8
  %16 = getelementptr inbounds %struct.clk_si5341_synth, %struct.clk_si5341_synth* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SI5341_SYNTH_N_PDNB, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @regmap_update_bits(i32 %19, i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %51

28:                                               ; preds = %1
  %29 = load %struct.clk_si5341_synth*, %struct.clk_si5341_synth** %4, align 8
  %30 = getelementptr inbounds %struct.clk_si5341_synth, %struct.clk_si5341_synth* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SI5341_SYNTH_N_CLK_DIS, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @regmap_update_bits(i32 %33, i32 %34, i32 %35, i32 0)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %51

41:                                               ; preds = %28
  %42 = load %struct.clk_si5341_synth*, %struct.clk_si5341_synth** %4, align 8
  %43 = getelementptr inbounds %struct.clk_si5341_synth, %struct.clk_si5341_synth* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SI5341_SYNTH_N_CLK_TO_OUTX_EN, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @regmap_update_bits(i32 %46, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %41, %39, %26
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.clk_si5341_synth* @to_clk_si5341_synth(%struct.clk_hw*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
