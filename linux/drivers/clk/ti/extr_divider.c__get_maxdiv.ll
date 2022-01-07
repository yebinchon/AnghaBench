; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_divider.c__get_maxdiv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_divider.c__get_maxdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_omap_divider = type { i32, i64 }

@CLK_DIVIDER_ONE_BASED = common dso_local global i32 0, align 4
@CLK_DIVIDER_POWER_OF_TWO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_omap_divider*)* @_get_maxdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_get_maxdiv(%struct.clk_omap_divider* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_omap_divider*, align 8
  store %struct.clk_omap_divider* %0, %struct.clk_omap_divider** %3, align 8
  %4 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %3, align 8
  %5 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @CLK_DIVIDER_ONE_BASED, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %3, align 8
  %12 = call i32 @div_mask(%struct.clk_omap_divider* %11)
  store i32 %12, i32* %2, align 4
  br label %38

13:                                               ; preds = %1
  %14 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %3, align 8
  %15 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @CLK_DIVIDER_POWER_OF_TWO, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %3, align 8
  %22 = call i32 @div_mask(%struct.clk_omap_divider* %21)
  %23 = shl i32 1, %22
  store i32 %23, i32* %2, align 4
  br label %38

24:                                               ; preds = %13
  %25 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %3, align 8
  %26 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %3, align 8
  %31 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @_get_table_maxdiv(i64 %32)
  store i32 %33, i32* %2, align 4
  br label %38

34:                                               ; preds = %24
  %35 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %3, align 8
  %36 = call i32 @div_mask(%struct.clk_omap_divider* %35)
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %29, %20, %10
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @div_mask(%struct.clk_omap_divider*) #1

declare dso_local i32 @_get_table_maxdiv(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
