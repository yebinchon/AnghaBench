; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_g12a.c_meson_g12a_dvfs_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_g12a.c_meson_g12a_dvfs_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.clk_hw** }
%struct.clk_hw = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.platform_device = type { i32 }
%struct.clk = type { i32 }

@g12a_hw_onecell_data = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@g12a_cpu_clk = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@g12a_cpu_clk_mux_nb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to register the cpu_clk notifier\0A\00", align 1
@g12a_sys_pll = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@g12a_sys_pll_nb_data = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to register the sys_pll notifier\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @meson_g12a_dvfs_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_g12a_dvfs_setup(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.clk_hw**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.clk_hw**, %struct.clk_hw*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g12a_hw_onecell_data, i32 0, i32 0), align 8
  store %struct.clk_hw** %8, %struct.clk_hw*** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = load %struct.clk_hw**, %struct.clk_hw*** %4, align 8
  %11 = call i32 @meson_g12a_dvfs_setup_common(%struct.platform_device* %9, %struct.clk_hw** %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %2, align 4
  br label %43

16:                                               ; preds = %1
  %17 = call i8* @clk_hw_get_name(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g12a_cpu_clk, i32 0, i32 0))
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call %struct.clk* @__clk_lookup(i8* %18)
  store %struct.clk* %19, %struct.clk** %6, align 8
  %20 = load %struct.clk*, %struct.clk** %6, align 8
  %21 = call i32 @clk_notifier_register(%struct.clk* %20, i32* @g12a_cpu_clk_mux_nb)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %43

29:                                               ; preds = %16
  %30 = call i8* @clk_hw_get_name(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g12a_sys_pll, i32 0, i32 0))
  store i8* %30, i8** %5, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call %struct.clk* @__clk_lookup(i8* %31)
  store %struct.clk* %32, %struct.clk** %6, align 8
  %33 = load %struct.clk*, %struct.clk** %6, align 8
  %34 = call i32 @clk_notifier_register(%struct.clk* %33, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g12a_sys_pll_nb_data, i32 0, i32 0))
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %43

42:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %37, %24, %14
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @meson_g12a_dvfs_setup_common(%struct.platform_device*, %struct.clk_hw**) #1

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
