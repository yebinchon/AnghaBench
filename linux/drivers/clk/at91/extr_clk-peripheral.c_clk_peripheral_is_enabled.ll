; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-peripheral.c_clk_peripheral_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-peripheral.c_clk_peripheral_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_peripheral = type { i64, i32 }

@AT91_PMC_PCSR = common dso_local global i32 0, align 4
@PERIPHERAL_ID_MIN = common dso_local global i64 0, align 8
@PERIPHERAL_ID_MAX = common dso_local global i64 0, align 8
@AT91_PMC_PCSR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_peripheral_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_peripheral_is_enabled(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_peripheral*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.clk_peripheral* @to_clk_peripheral(%struct.clk_hw* %8)
  store %struct.clk_peripheral* %9, %struct.clk_peripheral** %4, align 8
  %10 = load i32, i32* @AT91_PMC_PCSR, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.clk_peripheral*, %struct.clk_peripheral** %4, align 8
  %12 = getelementptr inbounds %struct.clk_peripheral, %struct.clk_peripheral* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @PERIPHERAL_ID_MIN, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %37

18:                                               ; preds = %1
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @PERIPHERAL_ID_MAX, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @AT91_PMC_PCSR1, align 4
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = load %struct.clk_peripheral*, %struct.clk_peripheral** %4, align 8
  %26 = getelementptr inbounds %struct.clk_peripheral, %struct.clk_peripheral* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @regmap_read(i32 %27, i32 %28, i32* %6)
  %30 = load i32, i32* %6, align 4
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @PERIPHERAL_MASK(i64 %31)
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %24, %17
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.clk_peripheral* @to_clk_peripheral(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @PERIPHERAL_MASK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
