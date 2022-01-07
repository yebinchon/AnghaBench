; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clkt_dflt.c_omap2_dflt_clk_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clkt_dflt.c_omap2_dflt_clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32*)*, i32 (i64, i32)*, i32 (i32, i32*)* }
%struct.clk_hw = type { i32 }
%struct.clk_hw_omap = type { i32, i32, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@ti_clk_ll_ops = common dso_local global %struct.TYPE_3__* null, align 8
@INVERT_ENABLE = common dso_local global i32 0, align 4
@TI_CLK_DISABLE_CLKDM_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap2_dflt_clk_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_hw_omap*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw* %5)
  store %struct.clk_hw_omap* %6, %struct.clk_hw_omap** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ti_clk_ll_ops, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32 (i32*)*, i32 (i32*)** %8, align 8
  %10 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %11 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %10, i32 0, i32 3
  %12 = call i32 %9(i32* %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %14 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @INVERT_ENABLE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %21 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 1, %22
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %34

26:                                               ; preds = %1
  %27 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %28 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 1, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %26, %19
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ti_clk_ll_ops, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32 (i32, i32*)*, i32 (i32, i32*)** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %40 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %39, i32 0, i32 3
  %41 = call i32 %37(i32 %38, i32* %40)
  %42 = call %struct.TYPE_4__* (...) @ti_clk_get_features()
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @TI_CLK_DISABLE_CLKDM_CONTROL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %64, label %48

48:                                               ; preds = %34
  %49 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %50 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ti_clk_ll_ops, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32 (i64, i32)*, i32 (i64, i32)** %55, align 8
  %57 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %58 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %61 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 %56(i64 %59, i32 %62)
  br label %64

64:                                               ; preds = %53, %48, %34
  ret void
}

declare dso_local %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw*) #1

declare dso_local %struct.TYPE_4__* @ti_clk_get_features(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
