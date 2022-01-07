; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-mt2701-aud.c_clk_mt2701_aud_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-mt2701-aud.c_clk_mt2701_aud_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.clk_onecell_data = type { i32 }

@CLK_AUD_NR = common dso_local global i32 0, align 4
@audio_clks = common dso_local global i32 0, align 4
@of_clk_src_onecell_get = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"could not register clock provider: %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @clk_mt2701_aud_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_mt2701_aud_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.clk_onecell_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %5, align 8
  %11 = load i32, i32* @CLK_AUD_NR, align 4
  %12 = call %struct.clk_onecell_data* @mtk_alloc_clk_data(i32 %11)
  store %struct.clk_onecell_data* %12, %struct.clk_onecell_data** %4, align 8
  %13 = load %struct.device_node*, %struct.device_node** %5, align 8
  %14 = load i32, i32* @audio_clks, align 4
  %15 = load i32, i32* @audio_clks, align 4
  %16 = call i32 @ARRAY_SIZE(i32 %15)
  %17 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %4, align 8
  %18 = call i32 @mtk_clk_register_gates(%struct.device_node* %13, i32 %14, i32 %16, %struct.clk_onecell_data* %17)
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = load i32, i32* @of_clk_src_onecell_get, align 4
  %21 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %4, align 8
  %22 = call i32 @of_clk_add_provider(%struct.device_node* %19, i32 %20, %struct.clk_onecell_data* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @dev_err(%struct.TYPE_3__* %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  br label %44

33:                                               ; preds = %1
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call i32 @devm_of_platform_populate(%struct.TYPE_3__* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %41

40:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %46

41:                                               ; preds = %39
  %42 = load %struct.device_node*, %struct.device_node** %5, align 8
  %43 = call i32 @of_clk_del_provider(%struct.device_node* %42)
  br label %44

44:                                               ; preds = %41, %25
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.clk_onecell_data* @mtk_alloc_clk_data(i32) #1

declare dso_local i32 @mtk_clk_register_gates(%struct.device_node*, i32, i32, %struct.clk_onecell_data*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @of_clk_add_provider(%struct.device_node*, i32, %struct.clk_onecell_data*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, i32, i32) #1

declare dso_local i32 @devm_of_platform_populate(%struct.TYPE_3__*) #1

declare dso_local i32 @of_clk_del_provider(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
