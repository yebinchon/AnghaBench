; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-mt8183-mfgcfg.c_clk_mt8183_mfg_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-mt8183-mfgcfg.c_clk_mt8183_mfg_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.clk_onecell_data = type { i32 }

@CLK_MFG_NR_CLK = common dso_local global i32 0, align 4
@mfg_clks = common dso_local global i32 0, align 4
@of_clk_src_onecell_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @clk_mt8183_mfg_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_mt8183_mfg_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.clk_onecell_data*, align 8
  %4 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.device_node*, %struct.device_node** %7, align 8
  store %struct.device_node* %8, %struct.device_node** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call i32 @pm_runtime_enable(%struct.TYPE_3__* %10)
  %12 = load i32, i32* @CLK_MFG_NR_CLK, align 4
  %13 = call %struct.clk_onecell_data* @mtk_alloc_clk_data(i32 %12)
  store %struct.clk_onecell_data* %13, %struct.clk_onecell_data** %3, align 8
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = load i32, i32* @mfg_clks, align 4
  %16 = load i32, i32* @mfg_clks, align 4
  %17 = call i32 @ARRAY_SIZE(i32 %16)
  %18 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %3, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 @mtk_clk_register_gates_with_dev(%struct.device_node* %14, i32 %15, i32 %17, %struct.clk_onecell_data* %18, %struct.TYPE_3__* %20)
  %22 = load %struct.device_node*, %struct.device_node** %4, align 8
  %23 = load i32, i32* @of_clk_src_onecell_get, align 4
  %24 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %3, align 8
  %25 = call i32 @of_clk_add_provider(%struct.device_node* %22, i32 %23, %struct.clk_onecell_data* %24)
  ret i32 %25
}

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_3__*) #1

declare dso_local %struct.clk_onecell_data* @mtk_alloc_clk_data(i32) #1

declare dso_local i32 @mtk_clk_register_gates_with_dev(%struct.device_node*, i32, i32, %struct.clk_onecell_data*, %struct.TYPE_3__*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @of_clk_add_provider(%struct.device_node*, i32, %struct.clk_onecell_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
