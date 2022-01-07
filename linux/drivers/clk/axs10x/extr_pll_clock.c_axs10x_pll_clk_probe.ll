; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/axs10x/extr_pll_clock.c_axs10x_pll_clk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/axs10x/extr_pll_clock.c_axs10x_pll_clk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.axs10x_pll_clk = type { %struct.TYPE_6__, i32, %struct.device*, i8*, i8* }
%struct.TYPE_6__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8**, i32, i32, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@axs10x_pll_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"No OF match data provided\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to register %s clock\0A\00", align 1
@of_clk_hw_simple_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @axs10x_pll_clk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axs10x_pll_clk_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.axs10x_pll_clk*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.clk_init_data, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = bitcast %struct.clk_init_data* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.axs10x_pll_clk* @devm_kzalloc(%struct.device* %13, i32 40, i32 %14)
  store %struct.axs10x_pll_clk* %15, %struct.axs10x_pll_clk** %6, align 8
  %16 = load %struct.axs10x_pll_clk*, %struct.axs10x_pll_clk** %6, align 8
  %17 = icmp ne %struct.axs10x_pll_clk* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %113

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load i32, i32* @IORESOURCE_MEM, align 4
  %24 = call %struct.resource* @platform_get_resource(%struct.platform_device* %22, i32 %23, i32 0)
  store %struct.resource* %24, %struct.resource** %7, align 8
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load %struct.resource*, %struct.resource** %7, align 8
  %27 = call i8* @devm_ioremap_resource(%struct.device* %25, %struct.resource* %26)
  %28 = load %struct.axs10x_pll_clk*, %struct.axs10x_pll_clk** %6, align 8
  %29 = getelementptr inbounds %struct.axs10x_pll_clk, %struct.axs10x_pll_clk* %28, i32 0, i32 4
  store i8* %27, i8** %29, align 8
  %30 = load %struct.axs10x_pll_clk*, %struct.axs10x_pll_clk** %6, align 8
  %31 = getelementptr inbounds %struct.axs10x_pll_clk, %struct.axs10x_pll_clk* %30, i32 0, i32 4
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @IS_ERR(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %21
  %36 = load %struct.axs10x_pll_clk*, %struct.axs10x_pll_clk** %6, align 8
  %37 = getelementptr inbounds %struct.axs10x_pll_clk, %struct.axs10x_pll_clk* %36, i32 0, i32 4
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @PTR_ERR(i8* %38)
  store i32 %39, i32* %2, align 4
  br label %113

40:                                               ; preds = %21
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = load i32, i32* @IORESOURCE_MEM, align 4
  %43 = call %struct.resource* @platform_get_resource(%struct.platform_device* %41, i32 %42, i32 1)
  store %struct.resource* %43, %struct.resource** %7, align 8
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load %struct.resource*, %struct.resource** %7, align 8
  %46 = call i8* @devm_ioremap_resource(%struct.device* %44, %struct.resource* %45)
  %47 = load %struct.axs10x_pll_clk*, %struct.axs10x_pll_clk** %6, align 8
  %48 = getelementptr inbounds %struct.axs10x_pll_clk, %struct.axs10x_pll_clk* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load %struct.axs10x_pll_clk*, %struct.axs10x_pll_clk** %6, align 8
  %50 = getelementptr inbounds %struct.axs10x_pll_clk, %struct.axs10x_pll_clk* %49, i32 0, i32 3
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @IS_ERR(i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %40
  %55 = load %struct.axs10x_pll_clk*, %struct.axs10x_pll_clk** %6, align 8
  %56 = getelementptr inbounds %struct.axs10x_pll_clk, %struct.axs10x_pll_clk* %55, i32 0, i32 3
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @PTR_ERR(i8* %57)
  store i32 %58, i32* %2, align 4
  br label %113

59:                                               ; preds = %40
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = getelementptr inbounds %struct.device, %struct.device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 2
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 3
  store i32* @axs10x_pll_ops, i32** %66, align 8
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = getelementptr inbounds %struct.device, %struct.device* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = call i8* @of_clk_get_parent_name(%struct.TYPE_5__* %69, i32 0)
  store i8* %70, i8** %5, align 8
  %71 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 0
  store i8** %5, i8*** %71, align 8
  %72 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 1
  store i32 1, i32* %72, align 8
  %73 = load %struct.axs10x_pll_clk*, %struct.axs10x_pll_clk** %6, align 8
  %74 = getelementptr inbounds %struct.axs10x_pll_clk, %struct.axs10x_pll_clk* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store %struct.clk_init_data* %8, %struct.clk_init_data** %75, align 8
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = load %struct.axs10x_pll_clk*, %struct.axs10x_pll_clk** %6, align 8
  %78 = getelementptr inbounds %struct.axs10x_pll_clk, %struct.axs10x_pll_clk* %77, i32 0, i32 2
  store %struct.device* %76, %struct.device** %78, align 8
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = call i32 @of_device_get_match_data(%struct.device* %79)
  %81 = load %struct.axs10x_pll_clk*, %struct.axs10x_pll_clk** %6, align 8
  %82 = getelementptr inbounds %struct.axs10x_pll_clk, %struct.axs10x_pll_clk* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load %struct.axs10x_pll_clk*, %struct.axs10x_pll_clk** %6, align 8
  %84 = getelementptr inbounds %struct.axs10x_pll_clk, %struct.axs10x_pll_clk* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %59
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %113

92:                                               ; preds = %59
  %93 = load %struct.device*, %struct.device** %4, align 8
  %94 = load %struct.axs10x_pll_clk*, %struct.axs10x_pll_clk** %6, align 8
  %95 = getelementptr inbounds %struct.axs10x_pll_clk, %struct.axs10x_pll_clk* %94, i32 0, i32 0
  %96 = call i32 @devm_clk_hw_register(%struct.device* %93, %struct.TYPE_6__* %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %92
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %2, align 4
  br label %113

105:                                              ; preds = %92
  %106 = load %struct.device*, %struct.device** %4, align 8
  %107 = getelementptr inbounds %struct.device, %struct.device* %106, i32 0, i32 0
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = load i32, i32* @of_clk_hw_simple_get, align 4
  %110 = load %struct.axs10x_pll_clk*, %struct.axs10x_pll_clk** %6, align 8
  %111 = getelementptr inbounds %struct.axs10x_pll_clk, %struct.axs10x_pll_clk* %110, i32 0, i32 0
  %112 = call i32 @of_clk_add_hw_provider(%struct.TYPE_5__* %108, i32 %109, %struct.TYPE_6__* %111)
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %105, %99, %87, %54, %35, %18
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.axs10x_pll_clk* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #2

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @PTR_ERR(i8*) #2

declare dso_local i8* @of_clk_get_parent_name(%struct.TYPE_5__*, i32) #2

declare dso_local i32 @of_device_get_match_data(%struct.device*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #2

declare dso_local i32 @devm_clk_hw_register(%struct.device*, %struct.TYPE_6__*) #2

declare dso_local i32 @of_clk_add_hw_provider(%struct.TYPE_5__*, i32, %struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
