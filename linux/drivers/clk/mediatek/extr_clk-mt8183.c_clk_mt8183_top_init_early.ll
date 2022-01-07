; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-mt8183.c_clk_mt8183_top_init_early.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-mt8183.c_clk_mt8183_top_init_early.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.device_node = type { i32 }

@CLK_TOP_NR_CLK = common dso_local global i32 0, align 4
@top_clk_data = common dso_local global %struct.TYPE_5__* null, align 8
@EPROBE_DEFER = common dso_local global i32 0, align 4
@top_early_divs = common dso_local global i32 0, align 4
@of_clk_src_onecell_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_node*)* @clk_mt8183_top_init_early to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_mt8183_top_init_early(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  %4 = load i32, i32* @CLK_TOP_NR_CLK, align 4
  %5 = call %struct.TYPE_5__* @mtk_alloc_clk_data(i32 %4)
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** @top_clk_data, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %20, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @CLK_TOP_NR_CLK, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = load i32, i32* @EPROBE_DEFER, align 4
  %12 = sub nsw i32 0, %11
  %13 = call i32 @ERR_PTR(i32 %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @top_clk_data, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32 %13, i32* %19, align 4
  br label %20

20:                                               ; preds = %10
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %6

23:                                               ; preds = %6
  %24 = load i32, i32* @top_early_divs, align 4
  %25 = load i32, i32* @top_early_divs, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @top_clk_data, align 8
  %28 = call i32 @mtk_clk_register_factors(i32 %24, i32 %26, %struct.TYPE_5__* %27)
  %29 = load %struct.device_node*, %struct.device_node** %2, align 8
  %30 = load i32, i32* @of_clk_src_onecell_get, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @top_clk_data, align 8
  %32 = call i32 @of_clk_add_provider(%struct.device_node* %29, i32 %30, %struct.TYPE_5__* %31)
  ret void
}

declare dso_local %struct.TYPE_5__* @mtk_alloc_clk_data(i32) #1

declare dso_local i32 @ERR_PTR(i32) #1

declare dso_local i32 @mtk_clk_register_factors(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @of_clk_add_provider(%struct.device_node*, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
