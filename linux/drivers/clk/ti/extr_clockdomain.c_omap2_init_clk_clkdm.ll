; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clockdomain.c_omap2_init_clk_clkdm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clockdomain.c_omap2_init_clk_clkdm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.clockdomain* (i32)* }
%struct.clockdomain = type { i32 }
%struct.clk_hw = type { i32 }
%struct.clk_hw_omap = type { i32, %struct.clockdomain* }

@ti_clk_ll_ops = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"clock: associated clk %s to clkdm %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"clock: could not associate clk %s to clkdm %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap2_init_clk_clkdm(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_hw_omap*, align 8
  %4 = alloca %struct.clockdomain*, align 8
  %5 = alloca i8*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw* %6)
  store %struct.clk_hw_omap* %7, %struct.clk_hw_omap** %3, align 8
  %8 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %9 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %42

13:                                               ; preds = %1
  %14 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %15 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @__clk_get_name(i32 %16)
  store i8* %17, i8** %5, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.clockdomain* (i32)*, %struct.clockdomain* (i32)** %19, align 8
  %21 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %22 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.clockdomain* %20(i32 %23)
  store %struct.clockdomain* %24, %struct.clockdomain** %4, align 8
  %25 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %26 = icmp ne %struct.clockdomain* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %13
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %30 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %31)
  %33 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %34 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %35 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %34, i32 0, i32 1
  store %struct.clockdomain* %33, %struct.clockdomain** %35, align 8
  br label %42

36:                                               ; preds = %13
  %37 = load i8*, i8** %5, align 8
  %38 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %39 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %37, i32 %40)
  br label %42

42:                                               ; preds = %12, %36, %27
  ret void
}

declare dso_local %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw*) #1

declare dso_local i8* @__clk_get_name(i32) #1

declare dso_local i32 @pr_debug(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
