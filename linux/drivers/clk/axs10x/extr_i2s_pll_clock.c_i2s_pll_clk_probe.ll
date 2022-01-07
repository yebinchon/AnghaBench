; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/axs10x/extr_i2s_pll_clock.c_i2s_pll_clk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/axs10x/extr_i2s_pll_clock.c_i2s_pll_clk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i8* }
%struct.clk = type { i32 }
%struct.i2s_pll_clk = type { %struct.TYPE_2__, %struct.device*, %struct.clk* }
%struct.TYPE_2__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i8**, i32, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@i2s_pll_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to register %s clock (%ld)\0A\00", align 1
@of_clk_src_simple_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @i2s_pll_clk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2s_pll_clk_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.clk*, align 8
  %9 = alloca %struct.i2s_pll_clk*, align 8
  %10 = alloca %struct.clk_init_data, align 8
  %11 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %5, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.i2s_pll_clk* @devm_kzalloc(%struct.device* %17, i32 24, i32 %18)
  store %struct.i2s_pll_clk* %19, %struct.i2s_pll_clk** %9, align 8
  %20 = load %struct.i2s_pll_clk*, %struct.i2s_pll_clk** %9, align 8
  %21 = icmp ne %struct.i2s_pll_clk* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %82

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load i32, i32* @IORESOURCE_MEM, align 4
  %28 = call %struct.resource* @platform_get_resource(%struct.platform_device* %26, i32 %27, i32 0)
  store %struct.resource* %28, %struct.resource** %11, align 8
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.resource*, %struct.resource** %11, align 8
  %31 = call %struct.clk* @devm_ioremap_resource(%struct.device* %29, %struct.resource* %30)
  %32 = load %struct.i2s_pll_clk*, %struct.i2s_pll_clk** %9, align 8
  %33 = getelementptr inbounds %struct.i2s_pll_clk, %struct.i2s_pll_clk* %32, i32 0, i32 2
  store %struct.clk* %31, %struct.clk** %33, align 8
  %34 = load %struct.i2s_pll_clk*, %struct.i2s_pll_clk** %9, align 8
  %35 = getelementptr inbounds %struct.i2s_pll_clk, %struct.i2s_pll_clk* %34, i32 0, i32 2
  %36 = load %struct.clk*, %struct.clk** %35, align 8
  %37 = call i64 @IS_ERR(%struct.clk* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %25
  %40 = load %struct.i2s_pll_clk*, %struct.i2s_pll_clk** %9, align 8
  %41 = getelementptr inbounds %struct.i2s_pll_clk, %struct.i2s_pll_clk* %40, i32 0, i32 2
  %42 = load %struct.clk*, %struct.clk** %41, align 8
  %43 = call i32 @PTR_ERR(%struct.clk* %42)
  store i32 %43, i32* %2, align 4
  br label %82

44:                                               ; preds = %25
  %45 = call i32 @memset(%struct.clk_init_data* %10, i32 0, i32 32)
  %46 = load %struct.device_node*, %struct.device_node** %5, align 8
  %47 = getelementptr inbounds %struct.device_node, %struct.device_node* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %6, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 0
  store i8* %49, i8** %50, align 8
  %51 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 3
  store i32* @i2s_pll_ops, i32** %51, align 8
  %52 = load %struct.device_node*, %struct.device_node** %5, align 8
  %53 = call i8* @of_clk_get_parent_name(%struct.device_node* %52, i32 0)
  store i8* %53, i8** %7, align 8
  %54 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 1
  store i8** %7, i8*** %54, align 8
  %55 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 2
  store i32 1, i32* %55, align 8
  %56 = load %struct.i2s_pll_clk*, %struct.i2s_pll_clk** %9, align 8
  %57 = getelementptr inbounds %struct.i2s_pll_clk, %struct.i2s_pll_clk* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store %struct.clk_init_data* %10, %struct.clk_init_data** %58, align 8
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = load %struct.i2s_pll_clk*, %struct.i2s_pll_clk** %9, align 8
  %61 = getelementptr inbounds %struct.i2s_pll_clk, %struct.i2s_pll_clk* %60, i32 0, i32 1
  store %struct.device* %59, %struct.device** %61, align 8
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = load %struct.i2s_pll_clk*, %struct.i2s_pll_clk** %9, align 8
  %64 = getelementptr inbounds %struct.i2s_pll_clk, %struct.i2s_pll_clk* %63, i32 0, i32 0
  %65 = call %struct.clk* @devm_clk_register(%struct.device* %62, %struct.TYPE_2__* %64)
  store %struct.clk* %65, %struct.clk** %8, align 8
  %66 = load %struct.clk*, %struct.clk** %8, align 8
  %67 = call i64 @IS_ERR(%struct.clk* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %44
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = load %struct.clk*, %struct.clk** %8, align 8
  %73 = call i32 @PTR_ERR(%struct.clk* %72)
  %74 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %71, i32 %73)
  %75 = load %struct.clk*, %struct.clk** %8, align 8
  %76 = call i32 @PTR_ERR(%struct.clk* %75)
  store i32 %76, i32* %2, align 4
  br label %82

77:                                               ; preds = %44
  %78 = load %struct.device_node*, %struct.device_node** %5, align 8
  %79 = load i32, i32* @of_clk_src_simple_get, align 4
  %80 = load %struct.clk*, %struct.clk** %8, align 8
  %81 = call i32 @of_clk_add_provider(%struct.device_node* %78, i32 %79, %struct.clk* %80)
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %77, %69, %39, %22
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.i2s_pll_clk* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.clk* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @memset(%struct.clk_init_data*, i32, i32) #1

declare dso_local i8* @of_clk_get_parent_name(%struct.device_node*, i32) #1

declare dso_local %struct.clk* @devm_clk_register(%struct.device*, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i32) #1

declare dso_local i32 @of_clk_add_provider(%struct.device_node*, i32, %struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
