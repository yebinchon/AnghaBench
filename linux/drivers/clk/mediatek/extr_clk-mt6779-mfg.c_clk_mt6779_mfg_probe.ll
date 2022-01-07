; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-mt6779-mfg.c_clk_mt6779_mfg_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-mt6779-mfg.c_clk_mt6779_mfg_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.clk_onecell_data = type { i32 }

@CLK_MFGCFG_NR_CLK = common dso_local global i32 0, align 4
@mfg_clks = common dso_local global i32 0, align 4
@of_clk_src_onecell_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @clk_mt6779_mfg_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_mt6779_mfg_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.clk_onecell_data*, align 8
  %4 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.device_node*, %struct.device_node** %7, align 8
  store %struct.device_node* %8, %struct.device_node** %4, align 8
  %9 = load i32, i32* @CLK_MFGCFG_NR_CLK, align 4
  %10 = call %struct.clk_onecell_data* @mtk_alloc_clk_data(i32 %9)
  store %struct.clk_onecell_data* %10, %struct.clk_onecell_data** %3, align 8
  %11 = load %struct.device_node*, %struct.device_node** %4, align 8
  %12 = load i32, i32* @mfg_clks, align 4
  %13 = load i32, i32* @mfg_clks, align 4
  %14 = call i32 @ARRAY_SIZE(i32 %13)
  %15 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %3, align 8
  %16 = call i32 @mtk_clk_register_gates(%struct.device_node* %11, i32 %12, i32 %14, %struct.clk_onecell_data* %15)
  %17 = load %struct.device_node*, %struct.device_node** %4, align 8
  %18 = load i32, i32* @of_clk_src_onecell_get, align 4
  %19 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %3, align 8
  %20 = call i32 @of_clk_add_provider(%struct.device_node* %17, i32 %18, %struct.clk_onecell_data* %19)
  ret i32 %20
}

declare dso_local %struct.clk_onecell_data* @mtk_alloc_clk_data(i32) #1

declare dso_local i32 @mtk_clk_register_gates(%struct.device_node*, i32, i32, %struct.clk_onecell_data*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @of_clk_add_provider(%struct.device_node*, i32, %struct.clk_onecell_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
