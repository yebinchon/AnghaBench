; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_g12a.c_meson_g12a_dvfs_setup_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_g12a.c_meson_g12a_dvfs_setup_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.clk_hw* }
%struct.clk_hw = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.platform_device = type { i32 }
%struct.clk = type { i32 }

@CLKID_CPU_CLK_DYN1_SEL = common dso_local global i64 0, align 8
@g12a_cpu_clk_postmux0_nb_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@g12a_cpu_clk_postmux0 = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [50 x i8] c"failed to register the cpu_clk_postmux0 notifier\0A\00", align 1
@g12a_cpu_clk_dyn = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@g12a_cpu_clk_mux_nb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"failed to register the cpu_clk_dyn notifier\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.clk_hw**)* @meson_g12a_dvfs_setup_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_g12a_dvfs_setup_common(%struct.platform_device* %0, %struct.clk_hw** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.clk_hw**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca %struct.clk_hw*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.clk_hw** %1, %struct.clk_hw*** %5, align 8
  %10 = load %struct.clk_hw**, %struct.clk_hw*** %5, align 8
  %11 = load i64, i64* @CLKID_CPU_CLK_DYN1_SEL, align 8
  %12 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %10, i64 %11
  %13 = load %struct.clk_hw*, %struct.clk_hw** %12, align 8
  %14 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %13, i32 0)
  store %struct.clk_hw* %14, %struct.clk_hw** %8, align 8
  %15 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  store %struct.clk_hw* %15, %struct.clk_hw** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g12a_cpu_clk_postmux0_nb_data, i32 0, i32 1), align 8
  %16 = call i8* @clk_hw_get_name(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g12a_cpu_clk_postmux0, i32 0, i32 0))
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call %struct.clk* @__clk_lookup(i8* %17)
  store %struct.clk* %18, %struct.clk** %7, align 8
  %19 = load %struct.clk*, %struct.clk** %7, align 8
  %20 = call i32 @clk_notifier_register(%struct.clk* %19, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g12a_cpu_clk_postmux0_nb_data, i32 0, i32 0))
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %3, align 4
  br label %42

28:                                               ; preds = %2
  %29 = call i8* @clk_hw_get_name(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g12a_cpu_clk_dyn, i32 0, i32 0))
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call %struct.clk* @__clk_lookup(i8* %30)
  store %struct.clk* %31, %struct.clk** %7, align 8
  %32 = load %struct.clk*, %struct.clk** %7, align 8
  %33 = call i32 @clk_notifier_register(%struct.clk* %32, i32* @g12a_cpu_clk_mux_nb)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %36, %23
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

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
