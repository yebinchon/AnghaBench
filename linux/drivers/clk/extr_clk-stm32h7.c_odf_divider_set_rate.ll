; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32h7.c_odf_divider_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32h7.c_odf_divider_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.clk_hw*, i64, i64)* }
%struct.clk_hw = type { i32 }

@clk_divider_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @odf_divider_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @odf_divider_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %11 = call %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* %10)
  store %struct.clk_hw* %11, %struct.clk_hw** %7, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %13 = call i32 @pll_is_enabled(%struct.clk_hw* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %18 = call i32 @pll_disable(%struct.clk_hw* %17)
  br label %19

19:                                               ; preds = %16, %3
  %20 = load i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clk_divider_ops, i32 0, i32 0), align 8
  %21 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 %20(%struct.clk_hw* %21, i64 %22, i64 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %29 = call i32 @pll_enable(%struct.clk_hw* %28)
  br label %30

30:                                               ; preds = %27, %19
  %31 = load i32, i32* %9, align 4
  ret i32 %31
}

declare dso_local %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw*) #1

declare dso_local i32 @pll_is_enabled(%struct.clk_hw*) #1

declare dso_local i32 @pll_disable(%struct.clk_hw*) #1

declare dso_local i32 @pll_enable(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
