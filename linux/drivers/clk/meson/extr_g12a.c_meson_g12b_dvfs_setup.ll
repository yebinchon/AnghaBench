; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_g12a.c_meson_g12b_dvfs_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_g12a.c_meson_g12b_dvfs_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.clk_hw** }
%struct.clk_hw = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.clk_hw* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.platform_device = type { i32 }
%struct.clk = type { i32 }

@g12b_hw_onecell_data = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@CLKID_CPU_CLK_DYN1_SEL = common dso_local global i64 0, align 8
@g12b_cpu_clk = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@g12a_cpu_clk_mux_nb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to register the cpu_clk notifier\0A\00", align 1
@g12b_sys1_pll = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@g12b_cpu_clk_sys1_pll_nb_data = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"failed to register the sys1_pll notifier\0A\00", align 1
@g12b_cpub_clk_postmux0_nb_data = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@g12b_cpub_clk_postmux0 = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"failed to register the cpub_clk_postmux0 notifier\0A\00", align 1
@g12b_cpub_clk_dyn = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"failed to register the cpub_clk_dyn notifier\0A\00", align 1
@g12b_cpub_clk = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"failed to register the cpub_clk notifier\0A\00", align 1
@g12a_sys_pll = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@g12b_cpub_clk_sys_pll_nb_data = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"failed to register the sys_pll notifier\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @meson_g12b_dvfs_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_g12b_dvfs_setup(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.clk_hw**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca %struct.clk_hw*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.clk_hw**, %struct.clk_hw*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @g12b_hw_onecell_data, i32 0, i32 0), align 8
  store %struct.clk_hw** %9, %struct.clk_hw*** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = load %struct.clk_hw**, %struct.clk_hw*** %4, align 8
  %12 = call i32 @meson_g12a_dvfs_setup_common(%struct.platform_device* %10, %struct.clk_hw** %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %2, align 4
  br label %102

17:                                               ; preds = %1
  %18 = load %struct.clk_hw**, %struct.clk_hw*** %4, align 8
  %19 = load i64, i64* @CLKID_CPU_CLK_DYN1_SEL, align 8
  %20 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %18, i64 %19
  %21 = load %struct.clk_hw*, %struct.clk_hw** %20, align 8
  %22 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %21, i32 0)
  store %struct.clk_hw* %22, %struct.clk_hw** %7, align 8
  %23 = call i8* @clk_hw_get_name(i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @g12b_cpu_clk, i32 0, i32 0))
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call %struct.clk* @__clk_lookup(i8* %24)
  store %struct.clk* %25, %struct.clk** %6, align 8
  %26 = load %struct.clk*, %struct.clk** %6, align 8
  %27 = call i32 @clk_notifier_register(%struct.clk* %26, i32* @g12a_cpu_clk_mux_nb)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %17
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %2, align 4
  br label %102

35:                                               ; preds = %17
  %36 = call i8* @clk_hw_get_name(i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g12b_sys1_pll, i32 0, i32 0))
  store i8* %36, i8** %5, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call %struct.clk* @__clk_lookup(i8* %37)
  store %struct.clk* %38, %struct.clk** %6, align 8
  %39 = load %struct.clk*, %struct.clk** %6, align 8
  %40 = call i32 @clk_notifier_register(%struct.clk* %39, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @g12b_cpu_clk_sys1_pll_nb_data, i32 0, i32 0))
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %2, align 4
  br label %102

48:                                               ; preds = %35
  %49 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  store %struct.clk_hw* %49, %struct.clk_hw** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @g12b_cpub_clk_postmux0_nb_data, i32 0, i32 1), align 8
  %50 = call i8* @clk_hw_get_name(i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g12b_cpub_clk_postmux0, i32 0, i32 0))
  store i8* %50, i8** %5, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call %struct.clk* @__clk_lookup(i8* %51)
  store %struct.clk* %52, %struct.clk** %6, align 8
  %53 = load %struct.clk*, %struct.clk** %6, align 8
  %54 = call i32 @clk_notifier_register(%struct.clk* %53, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @g12b_cpub_clk_postmux0_nb_data, i32 0, i32 0))
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %2, align 4
  br label %102

62:                                               ; preds = %48
  %63 = call i8* @clk_hw_get_name(i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @g12b_cpub_clk_dyn, i32 0, i32 0))
  store i8* %63, i8** %5, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = call %struct.clk* @__clk_lookup(i8* %64)
  store %struct.clk* %65, %struct.clk** %6, align 8
  %66 = load %struct.clk*, %struct.clk** %6, align 8
  %67 = call i32 @clk_notifier_register(%struct.clk* %66, i32* @g12a_cpu_clk_mux_nb)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %2, align 4
  br label %102

75:                                               ; preds = %62
  %76 = call i8* @clk_hw_get_name(i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @g12b_cpub_clk, i32 0, i32 0))
  store i8* %76, i8** %5, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = call %struct.clk* @__clk_lookup(i8* %77)
  store %struct.clk* %78, %struct.clk** %6, align 8
  %79 = load %struct.clk*, %struct.clk** %6, align 8
  %80 = call i32 @clk_notifier_register(%struct.clk* %79, i32* @g12a_cpu_clk_mux_nb)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %75
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 @dev_err(i32* %85, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %2, align 4
  br label %102

88:                                               ; preds = %75
  %89 = call i8* @clk_hw_get_name(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @g12a_sys_pll, i32 0, i32 0))
  store i8* %89, i8** %5, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = call %struct.clk* @__clk_lookup(i8* %90)
  store %struct.clk* %91, %struct.clk** %6, align 8
  %92 = load %struct.clk*, %struct.clk** %6, align 8
  %93 = call i32 @clk_notifier_register(%struct.clk* %92, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @g12b_cpub_clk_sys_pll_nb_data, i32 0, i32 0))
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %88
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = call i32 @dev_err(i32* %98, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %2, align 4
  br label %102

101:                                              ; preds = %88
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %101, %96, %83, %70, %57, %43, %30, %15
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @meson_g12a_dvfs_setup_common(%struct.platform_device*, %struct.clk_hw**) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw*, i32) #1

declare dso_local i8* @clk_hw_get_name(i32*) #1

declare dso_local %struct.clk* @__clk_lookup(i8*) #1

declare dso_local i32 @clk_notifier_register(%struct.clk*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
