; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5341.c_si5341_synth_clk_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5341.c_si5341_synth_clk_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_si5341_synth = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SI5341_SYNTH_N_MAX = common dso_local global i32 0, align 4
@SI5341_SYNTH_N_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @si5341_synth_clk_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @si5341_synth_clk_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.clk_si5341_synth*, align 8
  %9 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %11 = call %struct.clk_si5341_synth* @to_clk_si5341_synth(%struct.clk_hw* %10)
  store %struct.clk_si5341_synth* %11, %struct.clk_si5341_synth** %8, align 8
  %12 = load %struct.clk_si5341_synth*, %struct.clk_si5341_synth** %8, align 8
  %13 = getelementptr inbounds %struct.clk_si5341_synth, %struct.clk_si5341_synth* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i32, i32* @SI5341_SYNTH_N_MAX, align 4
  %19 = call i32 @do_div(i64 %17, i32 %18)
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i64, i64* %9, align 8
  store i64 %24, i64* %4, align 8
  br label %41

25:                                               ; preds = %3
  %26 = load %struct.clk_si5341_synth*, %struct.clk_si5341_synth** %8, align 8
  %27 = getelementptr inbounds %struct.clk_si5341_synth, %struct.clk_si5341_synth* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i32, i32* @SI5341_SYNTH_N_MIN, align 4
  %33 = call i32 @do_div(i64 %31, i32 %32)
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i64, i64* %9, align 8
  store i64 %38, i64* %4, align 8
  br label %41

39:                                               ; preds = %25
  %40 = load i64, i64* %6, align 8
  store i64 %40, i64* %4, align 8
  br label %41

41:                                               ; preds = %39, %37, %23
  %42 = load i64, i64* %4, align 8
  ret i64 %42
}

declare dso_local %struct.clk_si5341_synth* @to_clk_si5341_synth(%struct.clk_hw*) #1

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
