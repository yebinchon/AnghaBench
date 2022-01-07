; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-mt7622.c_mtk_apmixedsys_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-mt7622.c_mtk_apmixedsys_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.clk_onecell_data = type { i32* }

@CLK_APMIXED_NR_CLK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@plls = common dso_local global i32 0, align 4
@apmixed_clks = common dso_local global i32 0, align 4
@CLK_APMIXED_ARMPLL = common dso_local global i64 0, align 8
@CLK_APMIXED_MAIN_CORE_EN = common dso_local global i64 0, align 8
@of_clk_src_onecell_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_apmixedsys_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_apmixedsys_init(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.clk_onecell_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %9, %struct.device_node** %5, align 8
  %10 = load i32, i32* @CLK_APMIXED_NR_CLK, align 4
  %11 = call %struct.clk_onecell_data* @mtk_alloc_clk_data(i32 %10)
  store %struct.clk_onecell_data* %11, %struct.clk_onecell_data** %4, align 8
  %12 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %4, align 8
  %13 = icmp ne %struct.clk_onecell_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %48

17:                                               ; preds = %1
  %18 = load %struct.device_node*, %struct.device_node** %5, align 8
  %19 = load i32, i32* @plls, align 4
  %20 = load i32, i32* @plls, align 4
  %21 = call i32 @ARRAY_SIZE(i32 %20)
  %22 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %4, align 8
  %23 = call i32 @mtk_clk_register_plls(%struct.device_node* %18, i32 %19, i32 %21, %struct.clk_onecell_data* %22)
  %24 = load %struct.device_node*, %struct.device_node** %5, align 8
  %25 = load i32, i32* @apmixed_clks, align 4
  %26 = load i32, i32* @apmixed_clks, align 4
  %27 = call i32 @ARRAY_SIZE(i32 %26)
  %28 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %4, align 8
  %29 = call i32 @mtk_clk_register_gates(%struct.device_node* %24, i32 %25, i32 %27, %struct.clk_onecell_data* %28)
  %30 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %4, align 8
  %31 = getelementptr inbounds %struct.clk_onecell_data, %struct.clk_onecell_data* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @CLK_APMIXED_ARMPLL, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @clk_prepare_enable(i32 %35)
  %37 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %4, align 8
  %38 = getelementptr inbounds %struct.clk_onecell_data, %struct.clk_onecell_data* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @CLK_APMIXED_MAIN_CORE_EN, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @clk_prepare_enable(i32 %42)
  %44 = load %struct.device_node*, %struct.device_node** %5, align 8
  %45 = load i32, i32* @of_clk_src_onecell_get, align 4
  %46 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %4, align 8
  %47 = call i32 @of_clk_add_provider(%struct.device_node* %44, i32 %45, %struct.clk_onecell_data* %46)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %17, %14
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.clk_onecell_data* @mtk_alloc_clk_data(i32) #1

declare dso_local i32 @mtk_clk_register_plls(%struct.device_node*, i32, i32, %struct.clk_onecell_data*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mtk_clk_register_gates(%struct.device_node*, i32, i32, %struct.clk_onecell_data*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @of_clk_add_provider(%struct.device_node*, i32, %struct.clk_onecell_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
