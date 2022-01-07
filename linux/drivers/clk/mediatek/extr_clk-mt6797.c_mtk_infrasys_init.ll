; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-mt6797.c_mtk_infrasys_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-mt6797.c_mtk_infrasys_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64* }
%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@infra_clk_data = common dso_local global %struct.TYPE_8__* null, align 8
@CLK_INFRA_NR = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@infra_clks = common dso_local global i32 0, align 4
@infra_fixed_divs = common dso_local global i32 0, align 4
@of_clk_src_onecell_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_infrasys_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_infrasys_init(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %6, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @infra_clk_data, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @CLK_INFRA_NR, align 4
  %15 = call %struct.TYPE_8__* @mtk_alloc_clk_data(i32 %14)
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** @infra_clk_data, align 8
  br label %48

16:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %44, %16
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @CLK_INFRA_NR, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %17
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @infra_clk_data, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @EPROBE_DEFER, align 4
  %30 = sub nsw i32 0, %29
  %31 = call i64 @ERR_PTR(i32 %30)
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %21
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  %36 = call i64 @ERR_PTR(i32 %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @infra_clk_data, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  store i64 %36, i64* %42, align 8
  br label %43

43:                                               ; preds = %33, %21
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %17

47:                                               ; preds = %17
  br label %48

48:                                               ; preds = %47, %13
  %49 = load %struct.device_node*, %struct.device_node** %6, align 8
  %50 = load i32, i32* @infra_clks, align 4
  %51 = load i32, i32* @infra_clks, align 4
  %52 = call i32 @ARRAY_SIZE(i32 %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** @infra_clk_data, align 8
  %54 = call i32 @mtk_clk_register_gates(%struct.device_node* %49, i32 %50, i32 %52, %struct.TYPE_8__* %53)
  %55 = load i32, i32* @infra_fixed_divs, align 4
  %56 = load i32, i32* @infra_fixed_divs, align 4
  %57 = call i32 @ARRAY_SIZE(i32 %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** @infra_clk_data, align 8
  %59 = call i32 @mtk_clk_register_factors(i32 %55, i32 %57, %struct.TYPE_8__* %58)
  %60 = load %struct.device_node*, %struct.device_node** %6, align 8
  %61 = load i32, i32* @of_clk_src_onecell_get, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** @infra_clk_data, align 8
  %63 = call i32 @of_clk_add_provider(%struct.device_node* %60, i32 %61, %struct.TYPE_8__* %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %48
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %69

68:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %66
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.TYPE_8__* @mtk_alloc_clk_data(i32) #1

declare dso_local i64 @ERR_PTR(i32) #1

declare dso_local i32 @mtk_clk_register_gates(%struct.device_node*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mtk_clk_register_factors(i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @of_clk_add_provider(%struct.device_node*, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
