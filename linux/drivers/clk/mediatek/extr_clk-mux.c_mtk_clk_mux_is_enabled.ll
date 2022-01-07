; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-mux.c_mtk_clk_mux_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-mux.c_mtk_clk_mux_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.mtk_clk_mux = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @mtk_clk_mux_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_clk_mux_is_enabled(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.mtk_clk_mux*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.mtk_clk_mux* @to_mtk_clk_mux(%struct.clk_hw* %5)
  store %struct.mtk_clk_mux* %6, %struct.mtk_clk_mux** %3, align 8
  %7 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %3, align 8
  %8 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %3, align 8
  %11 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @regmap_read(i32 %9, i32 %14, i32* %4)
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.mtk_clk_mux*, %struct.mtk_clk_mux** %3, align 8
  %18 = getelementptr inbounds %struct.mtk_clk_mux, %struct.mtk_clk_mux* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = and i32 %16, %22
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  ret i32 %25
}

declare dso_local %struct.mtk_clk_mux* @to_mtk_clk_mux(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
