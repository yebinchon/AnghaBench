; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/spear/extr_clk-gpt-synth.c_clk_gpt_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/spear/extr_clk-gpt-synth.c_clk_gpt_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_gpt = type { i32 }

@gpt_calc_rate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @clk_gpt_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_gpt_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.clk_gpt*, align 8
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %10 = call %struct.clk_gpt* @to_clk_gpt(%struct.clk_hw* %9)
  store %struct.clk_gpt* %10, %struct.clk_gpt** %7, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64*, i64** %6, align 8
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @gpt_calc_rate, align 4
  %16 = load %struct.clk_gpt*, %struct.clk_gpt** %7, align 8
  %17 = getelementptr inbounds %struct.clk_gpt, %struct.clk_gpt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @clk_round_rate_index(%struct.clk_hw* %11, i64 %12, i64 %14, i32 %15, i32 %18, i32* %8)
  ret i64 %19
}

declare dso_local %struct.clk_gpt* @to_clk_gpt(%struct.clk_hw*) #1

declare dso_local i64 @clk_round_rate_index(%struct.clk_hw*, i64, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
