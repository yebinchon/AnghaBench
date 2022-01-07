; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_divider.c__get_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_divider.c__get_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_omap_divider = type { i32, i64 }

@CLK_DIVIDER_ONE_BASED = common dso_local global i32 0, align 4
@CLK_DIVIDER_POWER_OF_TWO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_omap_divider*, i32)* @_get_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_get_div(%struct.clk_omap_divider* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_omap_divider*, align 8
  %5 = alloca i32, align 4
  store %struct.clk_omap_divider* %0, %struct.clk_omap_divider** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %4, align 8
  %7 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @CLK_DIVIDER_ONE_BASED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %3, align 4
  br label %38

14:                                               ; preds = %2
  %15 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %4, align 8
  %16 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CLK_DIVIDER_POWER_OF_TWO, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 1, %22
  store i32 %23, i32* %3, align 4
  br label %38

24:                                               ; preds = %14
  %25 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %4, align 8
  %26 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %4, align 8
  %31 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @_get_table_div(i64 %32, i32 %33)
  store i32 %34, i32* %3, align 4
  br label %38

35:                                               ; preds = %24
  %36 = load i32, i32* %5, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %29, %21, %12
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @_get_table_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
