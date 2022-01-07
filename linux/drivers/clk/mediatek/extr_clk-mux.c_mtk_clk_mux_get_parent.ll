; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-mux.c_mtk_clk_mux_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-mux.c_mtk_clk_mux_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.mtk_clk_mux = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @mtk_clk_mux_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_clk_mux_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.mtk_clk_mux*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.mtk_clk_mux* @to_mtk_clk_mux(%struct.clk_hw* %6)
  store %struct.mtk_clk_mux* %7, %struct.mtk_clk_mux** %3, align 8
  %8 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %3, align 8
  %9 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %12, 1
  %14 = call i32 @GENMASK(i64 %13, i32 0)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %3, align 8
  %16 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %3, align 8
  %19 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @regmap_read(i32 %17, i32 %22, i32* %5)
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %3, align 8
  %26 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = ashr i32 %24, %29
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local %struct.mtk_clk_mux* @to_mtk_clk_mux(%struct.clk_hw*) #1

declare dso_local i32 @GENMASK(i64, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
