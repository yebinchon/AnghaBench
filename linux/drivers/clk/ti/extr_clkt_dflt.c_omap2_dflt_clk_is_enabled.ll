; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clkt_dflt.c_omap2_dflt_clk_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clkt_dflt.c_omap2_dflt_clk_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*)* }
%struct.clk_hw = type { i32 }
%struct.clk_hw_omap = type { i32, i32, i32 }

@ti_clk_ll_ops = common dso_local global %struct.TYPE_2__* null, align 8
@INVERT_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap2_dflt_clk_is_enabled(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_hw_omap*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw* %5)
  store %struct.clk_hw_omap* %6, %struct.clk_hw_omap** %3, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (i32*)*, i32 (i32*)** %8, align 8
  %10 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %11 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %10, i32 0, i32 2
  %12 = call i32 %9(i32* %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %14 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @INVERT_ENABLE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %21 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @BIT(i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = xor i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %19, %1
  %27 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %28 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  ret i32 %36
}

declare dso_local %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
