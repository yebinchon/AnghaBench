; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-max9485.c_max9485_clkout_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-max9485.c_max9485_clkout_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max9485_rate = type { i64, i64 }
%struct.clk_hw = type { i32 }
%struct.max9485_clk_hw = type { %struct.max9485_driver_data* }
%struct.max9485_driver_data = type { i64 }

@MAX9485_FREQ_MASK = common dso_local global i64 0, align 8
@max9485_rates = common dso_local global %struct.max9485_rate* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @max9485_clkout_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @max9485_clkout_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.max9485_clk_hw*, align 8
  %7 = alloca %struct.max9485_driver_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.max9485_rate*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %11 = call %struct.max9485_clk_hw* @to_max9485_clk(%struct.clk_hw* %10)
  store %struct.max9485_clk_hw* %11, %struct.max9485_clk_hw** %6, align 8
  %12 = load %struct.max9485_clk_hw*, %struct.max9485_clk_hw** %6, align 8
  %13 = getelementptr inbounds %struct.max9485_clk_hw, %struct.max9485_clk_hw* %12, i32 0, i32 0
  %14 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %13, align 8
  store %struct.max9485_driver_data* %14, %struct.max9485_driver_data** %7, align 8
  %15 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %7, align 8
  %16 = getelementptr inbounds %struct.max9485_driver_data, %struct.max9485_driver_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MAX9485_FREQ_MASK, align 8
  %19 = and i64 %17, %18
  store i64 %19, i64* %8, align 8
  %20 = load %struct.max9485_rate*, %struct.max9485_rate** @max9485_rates, align 8
  store %struct.max9485_rate* %20, %struct.max9485_rate** %9, align 8
  br label %21

21:                                               ; preds = %37, %2
  %22 = load %struct.max9485_rate*, %struct.max9485_rate** %9, align 8
  %23 = getelementptr inbounds %struct.max9485_rate, %struct.max9485_rate* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.max9485_rate*, %struct.max9485_rate** %9, align 8
  %29 = getelementptr inbounds %struct.max9485_rate, %struct.max9485_rate* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.max9485_rate*, %struct.max9485_rate** %9, align 8
  %34 = getelementptr inbounds %struct.max9485_rate, %struct.max9485_rate* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %3, align 8
  br label %41

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.max9485_rate*, %struct.max9485_rate** %9, align 8
  %39 = getelementptr inbounds %struct.max9485_rate, %struct.max9485_rate* %38, i32 1
  store %struct.max9485_rate* %39, %struct.max9485_rate** %9, align 8
  br label %21

40:                                               ; preds = %21
  store i64 0, i64* %3, align 8
  br label %41

41:                                               ; preds = %40, %32
  %42 = load i64, i64* %3, align 8
  ret i64 %42
}

declare dso_local %struct.max9485_clk_hw* @to_max9485_clk(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
