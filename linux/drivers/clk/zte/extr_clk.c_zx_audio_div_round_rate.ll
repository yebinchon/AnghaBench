; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/zte/extr_clk.c_zx_audio_div_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/zte/extr_clk.c_zx_audio_div_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_zx_audio_divider = type { i32 }
%struct.zx_clk_audio_div_table = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @zx_audio_div_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @zx_audio_div_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.clk_zx_audio_divider*, align 8
  %8 = alloca %struct.zx_clk_audio_div_table, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %10 = call %struct.clk_zx_audio_divider* @to_clk_zx_audio_div(%struct.clk_hw* %9)
  store %struct.clk_zx_audio_divider* %10, %struct.clk_zx_audio_divider** %7, align 8
  %11 = load %struct.clk_zx_audio_divider*, %struct.clk_zx_audio_divider** %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64*, i64** %6, align 8
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @audio_calc_reg(%struct.clk_zx_audio_divider* %11, %struct.zx_clk_audio_div_table* %8, i64 %12, i64 %14)
  %16 = load %struct.clk_zx_audio_divider*, %struct.clk_zx_audio_divider** %7, align 8
  %17 = getelementptr inbounds %struct.zx_clk_audio_div_table, %struct.zx_clk_audio_div_table* %8, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.zx_clk_audio_div_table, %struct.zx_clk_audio_div_table* %8, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64*, i64** %6, align 8
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @audio_calc_rate(%struct.clk_zx_audio_divider* %16, i32 %18, i32 %20, i64 %22)
  ret i64 %23
}

declare dso_local %struct.clk_zx_audio_divider* @to_clk_zx_audio_div(%struct.clk_hw*) #1

declare dso_local i32 @audio_calc_reg(%struct.clk_zx_audio_divider*, %struct.zx_clk_audio_div_table*, i64, i64) #1

declare dso_local i64 @audio_calc_rate(%struct.clk_zx_audio_divider*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
