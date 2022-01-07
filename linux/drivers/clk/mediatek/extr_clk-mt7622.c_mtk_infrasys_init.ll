; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-mt7622.c_mtk_infrasys_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-mt7622.c_mtk_infrasys_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.clk_onecell_data = type { i32 }

@CLK_INFRA_NR_CLK = common dso_local global i32 0, align 4
@infra_clks = common dso_local global i32 0, align 4
@infra_muxes = common dso_local global i32 0, align 4
@of_clk_src_onecell_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_infrasys_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_infrasys_init(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.clk_onecell_data*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %4, align 8
  %11 = load i32, i32* @CLK_INFRA_NR_CLK, align 4
  %12 = call %struct.clk_onecell_data* @mtk_alloc_clk_data(i32 %11)
  store %struct.clk_onecell_data* %12, %struct.clk_onecell_data** %5, align 8
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  %14 = load i32, i32* @infra_clks, align 4
  %15 = load i32, i32* @infra_clks, align 4
  %16 = call i32 @ARRAY_SIZE(i32 %15)
  %17 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %5, align 8
  %18 = call i32 @mtk_clk_register_gates(%struct.device_node* %13, i32 %14, i32 %16, %struct.clk_onecell_data* %17)
  %19 = load %struct.device_node*, %struct.device_node** %4, align 8
  %20 = load i32, i32* @infra_muxes, align 4
  %21 = load i32, i32* @infra_muxes, align 4
  %22 = call i32 @ARRAY_SIZE(i32 %21)
  %23 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %5, align 8
  %24 = call i32 @mtk_clk_register_cpumuxes(%struct.device_node* %19, i32 %20, i32 %22, %struct.clk_onecell_data* %23)
  %25 = load %struct.device_node*, %struct.device_node** %4, align 8
  %26 = load i32, i32* @of_clk_src_onecell_get, align 4
  %27 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %5, align 8
  %28 = call i32 @of_clk_add_provider(%struct.device_node* %25, i32 %26, %struct.clk_onecell_data* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %36

33:                                               ; preds = %1
  %34 = load %struct.device_node*, %struct.device_node** %4, align 8
  %35 = call i32 @mtk_register_reset_controller(%struct.device_node* %34, i32 1, i32 48)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %31
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.clk_onecell_data* @mtk_alloc_clk_data(i32) #1

declare dso_local i32 @mtk_clk_register_gates(%struct.device_node*, i32, i32, %struct.clk_onecell_data*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mtk_clk_register_cpumuxes(%struct.device_node*, i32, i32, %struct.clk_onecell_data*) #1

declare dso_local i32 @of_clk_add_provider(%struct.device_node*, i32, %struct.clk_onecell_data*) #1

declare dso_local i32 @mtk_register_reset_controller(%struct.device_node*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
