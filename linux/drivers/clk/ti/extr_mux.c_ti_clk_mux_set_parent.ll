; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_mux.c_ti_clk_mux_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_mux.c_ti_clk_mux_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32*)*, i32 (i64, i32*)* }
%struct.clk_hw = type { i32 }
%struct.clk_omap_mux = type { i64*, i32, i32, i32, i32, i32 }

@CLK_MUX_INDEX_BIT = common dso_local global i32 0, align 4
@CLK_MUX_INDEX_ONE = common dso_local global i32 0, align 4
@CLK_MUX_HIWORD_MASK = common dso_local global i32 0, align 4
@ti_clk_ll_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64)* @ti_clk_mux_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_clk_mux_set_parent(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_omap_mux*, align 8
  %6 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.clk_omap_mux* @to_clk_omap_mux(%struct.clk_hw* %7)
  store %struct.clk_omap_mux* %8, %struct.clk_omap_mux** %5, align 8
  %9 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %5, align 8
  %10 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = icmp ne i64* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %5, align 8
  %15 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %4, align 8
  br label %43

20:                                               ; preds = %2
  %21 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %5, align 8
  %22 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @CLK_MUX_INDEX_BIT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @ffs(i64 %28)
  %30 = shl i32 1, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %4, align 8
  br label %32

32:                                               ; preds = %27, %20
  %33 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %5, align 8
  %34 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CLK_MUX_INDEX_ONE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i64, i64* %4, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %4, align 8
  br label %42

42:                                               ; preds = %39, %32
  br label %43

43:                                               ; preds = %42, %13
  %44 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %5, align 8
  %45 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @CLK_MUX_HIWORD_MASK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %43
  %51 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %5, align 8
  %52 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %5, align 8
  %55 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 16
  %58 = shl i32 %53, %57
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %6, align 8
  br label %78

60:                                               ; preds = %43
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64 (i32*)*, i64 (i32*)** %62, align 8
  %64 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %5, align 8
  %65 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %64, i32 0, i32 5
  %66 = call i64 %63(i32* %65)
  store i64 %66, i64* %6, align 8
  %67 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %5, align 8
  %68 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %5, align 8
  %71 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = shl i32 %69, %72
  %74 = xor i32 %73, -1
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %6, align 8
  %77 = and i64 %76, %75
  store i64 %77, i64* %6, align 8
  br label %78

78:                                               ; preds = %60, %50
  %79 = load i64, i64* %4, align 8
  %80 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %5, align 8
  %81 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = zext i32 %82 to i64
  %84 = shl i64 %79, %83
  %85 = load i64, i64* %6, align 8
  %86 = or i64 %85, %84
  store i64 %86, i64* %6, align 8
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32 (i64, i32*)*, i32 (i64, i32*)** %88, align 8
  %90 = load i64, i64* %6, align 8
  %91 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %5, align 8
  %92 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %91, i32 0, i32 5
  %93 = call i32 %89(i64 %90, i32* %92)
  %94 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %5, align 8
  %95 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %94, i32 0, i32 5
  %96 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %5, align 8
  %97 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ti_clk_latch(i32* %95, i32 %98)
  ret i32 0
}

declare dso_local %struct.clk_omap_mux* @to_clk_omap_mux(%struct.clk_hw*) #1

declare dso_local i32 @ffs(i64) #1

declare dso_local i32 @ti_clk_latch(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
