; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-pll.c_clk_pll_configure_sr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-pll.c_clk_pll_configure_sr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_pll = type { i32 }
%struct.regmap = type { i32 }
%struct.pll_config = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clk_pll_configure_sr(%struct.clk_pll* %0, %struct.regmap* %1, %struct.pll_config* %2, i32 %3) #0 {
  %5 = alloca %struct.clk_pll*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca %struct.pll_config*, align 8
  %8 = alloca i32, align 4
  store %struct.clk_pll* %0, %struct.clk_pll** %5, align 8
  store %struct.regmap* %1, %struct.regmap** %6, align 8
  store %struct.pll_config* %2, %struct.pll_config** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.clk_pll*, %struct.clk_pll** %5, align 8
  %10 = load %struct.regmap*, %struct.regmap** %6, align 8
  %11 = load %struct.pll_config*, %struct.pll_config** %7, align 8
  %12 = call i32 @clk_pll_configure(%struct.clk_pll* %9, %struct.regmap* %10, %struct.pll_config* %11)
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load %struct.regmap*, %struct.regmap** %6, align 8
  %17 = load %struct.clk_pll*, %struct.clk_pll** %5, align 8
  %18 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @qcom_pll_set_fsm_mode(%struct.regmap* %16, i32 %19, i32 1, i32 8)
  br label %21

21:                                               ; preds = %15, %4
  ret void
}

declare dso_local i32 @clk_pll_configure(%struct.clk_pll*, %struct.regmap*, %struct.pll_config*) #1

declare dso_local i32 @qcom_pll_set_fsm_mode(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
