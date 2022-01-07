; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_divider.c_ti_clk_divider_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_divider.c_ti_clk_divider_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*)* }
%struct.clk_hw = type { i32 }
%struct.clk_omap_divider = type { i32, i32, i32 }

@ti_clk_ll_ops = common dso_local global %struct.TYPE_2__* null, align 8
@CLK_DIVIDER_ALLOW_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"%s: Zero divisor and CLK_DIVIDER_ALLOW_ZERO not set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @ti_clk_divider_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ti_clk_divider_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clk_omap_divider*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %10 = call %struct.clk_omap_divider* @to_clk_omap_divider(%struct.clk_hw* %9)
  store %struct.clk_omap_divider* %10, %struct.clk_omap_divider** %6, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (i32*)*, i32 (i32*)** %12, align 8
  %14 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %6, align 8
  %15 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %14, i32 0, i32 2
  %16 = call i32 %13(i32* %15)
  %17 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %6, align 8
  %18 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = lshr i32 %16, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %6, align 8
  %22 = call i32 @div_mask(%struct.clk_omap_divider* %21)
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %8, align 4
  %25 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @_get_div(%struct.clk_omap_divider* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %2
  %31 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %6, align 8
  %32 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CLK_DIVIDER_ALLOW_ZERO, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %40 = call i32 @clk_hw_get_name(%struct.clk_hw* %39)
  %41 = call i32 @WARN(i32 %38, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i64, i64* %5, align 8
  store i64 %42, i64* %3, align 8
  br label %47

43:                                               ; preds = %2
  %44 = load i64, i64* %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @DIV_ROUND_UP(i64 %44, i32 %45)
  store i64 %46, i64* %3, align 8
  br label %47

47:                                               ; preds = %43, %30
  %48 = load i64, i64* %3, align 8
  ret i64 %48
}

declare dso_local %struct.clk_omap_divider* @to_clk_omap_divider(%struct.clk_hw*) #1

declare dso_local i32 @div_mask(%struct.clk_omap_divider*) #1

declare dso_local i32 @_get_div(%struct.clk_omap_divider*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @clk_hw_get_name(%struct.clk_hw*) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
