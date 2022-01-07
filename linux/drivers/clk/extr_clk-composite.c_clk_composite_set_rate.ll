; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-composite.c_clk_composite_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-composite.c_clk_composite_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_composite = type { %struct.clk_hw*, %struct.clk_ops* }
%struct.clk_ops = type { i32 (%struct.clk_hw.0*, i64, i64)* }
%struct.clk_hw.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_composite_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_composite_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk_composite*, align 8
  %8 = alloca %struct.clk_ops*, align 8
  %9 = alloca %struct.clk_hw*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %11 = call %struct.clk_composite* @to_clk_composite(%struct.clk_hw* %10)
  store %struct.clk_composite* %11, %struct.clk_composite** %7, align 8
  %12 = load %struct.clk_composite*, %struct.clk_composite** %7, align 8
  %13 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %12, i32 0, i32 1
  %14 = load %struct.clk_ops*, %struct.clk_ops** %13, align 8
  store %struct.clk_ops* %14, %struct.clk_ops** %8, align 8
  %15 = load %struct.clk_composite*, %struct.clk_composite** %7, align 8
  %16 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %15, i32 0, i32 0
  %17 = load %struct.clk_hw*, %struct.clk_hw** %16, align 8
  store %struct.clk_hw* %17, %struct.clk_hw** %9, align 8
  %18 = load %struct.clk_hw*, %struct.clk_hw** %9, align 8
  %19 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %20 = call i32 @__clk_hw_set_clk(%struct.clk_hw* %18, %struct.clk_hw* %19)
  %21 = load %struct.clk_ops*, %struct.clk_ops** %8, align 8
  %22 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %21, i32 0, i32 0
  %23 = load i32 (%struct.clk_hw.0*, i64, i64)*, i32 (%struct.clk_hw.0*, i64, i64)** %22, align 8
  %24 = load %struct.clk_hw*, %struct.clk_hw** %9, align 8
  %25 = bitcast %struct.clk_hw* %24 to %struct.clk_hw.0*
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 %23(%struct.clk_hw.0* %25, i64 %26, i64 %27)
  ret i32 %28
}

declare dso_local %struct.clk_composite* @to_clk_composite(%struct.clk_hw*) #1

declare dso_local i32 @__clk_hw_set_clk(%struct.clk_hw*, %struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
