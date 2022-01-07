; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-max9485.c_max9485_clkout_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-max9485.c_max9485_clkout_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max9485_rate = type { i64, i32 }
%struct.clk_hw = type { i32 }
%struct.max9485_clk_hw = type { i32 }

@max9485_rates = common dso_local global %struct.max9485_rate* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@MAX9485_FREQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @max9485_clkout_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max9485_clkout_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.max9485_clk_hw*, align 8
  %9 = alloca %struct.max9485_rate*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %11 = call %struct.max9485_clk_hw* @to_max9485_clk(%struct.clk_hw* %10)
  store %struct.max9485_clk_hw* %11, %struct.max9485_clk_hw** %8, align 8
  %12 = load %struct.max9485_rate*, %struct.max9485_rate** @max9485_rates, align 8
  store %struct.max9485_rate* %12, %struct.max9485_rate** %9, align 8
  br label %13

13:                                               ; preds = %26, %3
  %14 = load %struct.max9485_rate*, %struct.max9485_rate** %9, align 8
  %15 = getelementptr inbounds %struct.max9485_rate, %struct.max9485_rate* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load %struct.max9485_rate*, %struct.max9485_rate** %9, align 8
  %20 = getelementptr inbounds %struct.max9485_rate, %struct.max9485_rate* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %29

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.max9485_rate*, %struct.max9485_rate** %9, align 8
  %28 = getelementptr inbounds %struct.max9485_rate, %struct.max9485_rate* %27, i32 1
  store %struct.max9485_rate* %28, %struct.max9485_rate** %9, align 8
  br label %13

29:                                               ; preds = %24, %13
  %30 = load %struct.max9485_rate*, %struct.max9485_rate** %9, align 8
  %31 = getelementptr inbounds %struct.max9485_rate, %struct.max9485_rate* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %46

37:                                               ; preds = %29
  %38 = load %struct.max9485_clk_hw*, %struct.max9485_clk_hw** %8, align 8
  %39 = getelementptr inbounds %struct.max9485_clk_hw, %struct.max9485_clk_hw* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MAX9485_FREQ_MASK, align 4
  %42 = load %struct.max9485_rate*, %struct.max9485_rate** %9, align 8
  %43 = getelementptr inbounds %struct.max9485_rate, %struct.max9485_rate* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @max9485_update_bits(i32 %40, i32 %41, i32 %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %37, %34
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.max9485_clk_hw* @to_max9485_clk(%struct.clk_hw*) #1

declare dso_local i32 @max9485_update_bits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
