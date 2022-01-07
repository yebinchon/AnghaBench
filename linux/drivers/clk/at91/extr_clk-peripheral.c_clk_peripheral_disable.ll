; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-peripheral.c_clk_peripheral_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-peripheral.c_clk_peripheral_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_peripheral = type { i64, i32 }

@AT91_PMC_PCDR = common dso_local global i32 0, align 4
@PERIPHERAL_ID_MIN = common dso_local global i64 0, align 8
@PERIPHERAL_ID_MAX = common dso_local global i64 0, align 8
@AT91_PMC_PCDR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @clk_peripheral_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_peripheral_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_peripheral*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.clk_peripheral* @to_clk_peripheral(%struct.clk_hw* %6)
  store %struct.clk_peripheral* %7, %struct.clk_peripheral** %3, align 8
  %8 = load i32, i32* @AT91_PMC_PCDR, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.clk_peripheral*, %struct.clk_peripheral** %3, align 8
  %10 = getelementptr inbounds %struct.clk_peripheral, %struct.clk_peripheral* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @PERIPHERAL_ID_MIN, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %30

16:                                               ; preds = %1
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @PERIPHERAL_ID_MAX, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @AT91_PMC_PCDR1, align 4
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = load %struct.clk_peripheral*, %struct.clk_peripheral** %3, align 8
  %24 = getelementptr inbounds %struct.clk_peripheral, %struct.clk_peripheral* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @PERIPHERAL_MASK(i64 %27)
  %29 = call i32 @regmap_write(i32 %25, i32 %26, i32 %28)
  br label %30

30:                                               ; preds = %22, %15
  ret void
}

declare dso_local %struct.clk_peripheral* @to_clk_peripheral(%struct.clk_hw*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @PERIPHERAL_MASK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
