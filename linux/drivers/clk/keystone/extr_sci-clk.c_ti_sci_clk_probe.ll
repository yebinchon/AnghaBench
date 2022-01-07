; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/keystone/extr_sci-clk.c_ti_sci_clk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/keystone/extr_sci-clk.c_ti_sci_clk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.sci_clk_provider = type { %struct.device*, i32*, %struct.ti_sci_handle* }
%struct.ti_sci_handle = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"scan clocks from DT failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"ti-sci-init-clocks failed.\0A\00", align 1
@sci_clk_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ti_sci_clk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_clk_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.sci_clk_provider*, align 8
  %7 = alloca %struct.ti_sci_handle*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.ti_sci_handle* @devm_ti_sci_get_handle(%struct.device* %14)
  store %struct.ti_sci_handle* %15, %struct.ti_sci_handle** %7, align 8
  %16 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %7, align 8
  %17 = call i64 @IS_ERR(%struct.ti_sci_handle* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %7, align 8
  %21 = call i32 @PTR_ERR(%struct.ti_sci_handle* %20)
  store i32 %21, i32* %2, align 4
  br label %65

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.sci_clk_provider* @devm_kzalloc(%struct.device* %23, i32 24, i32 %24)
  store %struct.sci_clk_provider* %25, %struct.sci_clk_provider** %6, align 8
  %26 = load %struct.sci_clk_provider*, %struct.sci_clk_provider** %6, align 8
  %27 = icmp ne %struct.sci_clk_provider* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %65

31:                                               ; preds = %22
  %32 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %7, align 8
  %33 = load %struct.sci_clk_provider*, %struct.sci_clk_provider** %6, align 8
  %34 = getelementptr inbounds %struct.sci_clk_provider, %struct.sci_clk_provider* %33, i32 0, i32 2
  store %struct.ti_sci_handle* %32, %struct.ti_sci_handle** %34, align 8
  %35 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %7, align 8
  %36 = getelementptr inbounds %struct.ti_sci_handle, %struct.ti_sci_handle* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.sci_clk_provider*, %struct.sci_clk_provider** %6, align 8
  %39 = getelementptr inbounds %struct.sci_clk_provider, %struct.sci_clk_provider* %38, i32 0, i32 1
  store i32* %37, i32** %39, align 8
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load %struct.sci_clk_provider*, %struct.sci_clk_provider** %6, align 8
  %42 = getelementptr inbounds %struct.sci_clk_provider, %struct.sci_clk_provider* %41, i32 0, i32 0
  store %struct.device* %40, %struct.device** %42, align 8
  %43 = load %struct.sci_clk_provider*, %struct.sci_clk_provider** %6, align 8
  %44 = call i32 @ti_sci_scan_clocks_from_dt(%struct.sci_clk_provider* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %31
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %2, align 4
  br label %65

52:                                               ; preds = %31
  %53 = load %struct.sci_clk_provider*, %struct.sci_clk_provider** %6, align 8
  %54 = call i32 @ti_sci_init_clocks(%struct.sci_clk_provider* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %2, align 4
  br label %65

60:                                               ; preds = %52
  %61 = load %struct.device_node*, %struct.device_node** %5, align 8
  %62 = load i32, i32* @sci_clk_get, align 4
  %63 = load %struct.sci_clk_provider*, %struct.sci_clk_provider** %6, align 8
  %64 = call i32 @of_clk_add_hw_provider(%struct.device_node* %61, i32 %62, %struct.sci_clk_provider* %63)
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %60, %57, %47, %28, %19
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.ti_sci_handle* @devm_ti_sci_get_handle(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.ti_sci_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.ti_sci_handle*) #1

declare dso_local %struct.sci_clk_provider* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @ti_sci_scan_clocks_from_dt(%struct.sci_clk_provider*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @ti_sci_init_clocks(%struct.sci_clk_provider*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @of_clk_add_hw_provider(%struct.device_node*, i32, %struct.sci_clk_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
