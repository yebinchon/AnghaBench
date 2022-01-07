; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-pxa/extr_ssp.c_pxa_ssp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-pxa/extr_ssp.c_pxa_ssp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32, %struct.device }
%struct.device = type { i64 }
%struct.resource = type { i32 }
%struct.ssp_device = type { i64, i32, i32, i64, i64, i32, i32*, i32, i32, %struct.platform_device* }
%struct.of_device_id = type { i64 }
%struct.platform_device_id = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"no memory resource defined\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to request memory resource\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to ioremap() registers\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"no IRQ resource defined\0A\00", align 1
@pxa_ssp_of_ids = common dso_local global i32 0, align 4
@ssp_lock = common dso_local global i32 0, align 4
@ssp_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pxa_ssp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_ssp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.ssp_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.of_device_id*, align 8
  %8 = alloca %struct.platform_device_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 2
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ssp_device* @devm_kzalloc(%struct.device* %11, i32 64, i32 %12)
  store %struct.ssp_device* %13, %struct.ssp_device** %5, align 8
  %14 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %15 = icmp eq %struct.ssp_device* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %151

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %22 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %21, i32 0, i32 9
  store %struct.platform_device* %20, %struct.platform_device** %22, align 8
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = call i32 @devm_clk_get(%struct.device* %23, i32* null)
  %25 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %26 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %25, i32 0, i32 8
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %28 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %19
  %33 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %34 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %2, align 4
  br label %151

37:                                               ; preds = %19
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = load i32, i32* @IORESOURCE_MEM, align 4
  %40 = call %struct.resource* @platform_get_resource(%struct.platform_device* %38, i32 %39, i32 0)
  store %struct.resource* %40, %struct.resource** %4, align 8
  %41 = load %struct.resource*, %struct.resource** %4, align 8
  %42 = icmp eq %struct.resource* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %151

48:                                               ; preds = %37
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = load %struct.resource*, %struct.resource** %4, align 8
  %51 = getelementptr inbounds %struct.resource, %struct.resource* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.resource*, %struct.resource** %4, align 8
  %54 = call i32 @resource_size(%struct.resource* %53)
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.resource* @devm_request_mem_region(%struct.device* %49, i32 %52, i32 %54, i32 %57)
  store %struct.resource* %58, %struct.resource** %4, align 8
  %59 = load %struct.resource*, %struct.resource** %4, align 8
  %60 = icmp eq %struct.resource* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %48
  %62 = load %struct.device*, %struct.device** %6, align 8
  %63 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %151

66:                                               ; preds = %48
  %67 = load %struct.resource*, %struct.resource** %4, align 8
  %68 = getelementptr inbounds %struct.resource, %struct.resource* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %71 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %70, i32 0, i32 7
  store i32 %69, i32* %71, align 8
  %72 = load %struct.device*, %struct.device** %6, align 8
  %73 = load %struct.resource*, %struct.resource** %4, align 8
  %74 = getelementptr inbounds %struct.resource, %struct.resource* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.resource*, %struct.resource** %4, align 8
  %77 = call i32 @resource_size(%struct.resource* %76)
  %78 = call i32* @devm_ioremap(%struct.device* %72, i32 %75, i32 %77)
  %79 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %80 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %79, i32 0, i32 6
  store i32* %78, i32** %80, align 8
  %81 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %82 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %81, i32 0, i32 6
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %66
  %86 = load %struct.device*, %struct.device** %6, align 8
  %87 = call i32 @dev_err(%struct.device* %86, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %88 = load i32, i32* @ENODEV, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %151

90:                                               ; preds = %66
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = call i64 @platform_get_irq(%struct.platform_device* %91, i32 0)
  %93 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %94 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %96 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %90
  %100 = load %struct.device*, %struct.device** %6, align 8
  %101 = call i32 @dev_err(%struct.device* %100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i32, i32* @ENODEV, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %2, align 4
  br label %151

104:                                              ; preds = %90
  %105 = load %struct.device*, %struct.device** %6, align 8
  %106 = getelementptr inbounds %struct.device, %struct.device* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %104
  %110 = load i32, i32* @pxa_ssp_of_ids, align 4
  %111 = call i32 @of_match_ptr(i32 %110)
  %112 = load %struct.device*, %struct.device** %6, align 8
  %113 = call %struct.of_device_id* @of_match_device(i32 %111, %struct.device* %112)
  store %struct.of_device_id* %113, %struct.of_device_id** %7, align 8
  %114 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %115 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %119 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 8
  br label %135

120:                                              ; preds = %104
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = call %struct.platform_device_id* @platform_get_device_id(%struct.platform_device* %121)
  store %struct.platform_device_id* %122, %struct.platform_device_id** %8, align 8
  %123 = load %struct.platform_device_id*, %struct.platform_device_id** %8, align 8
  %124 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %128 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 8
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, 1
  %133 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %134 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 8
  br label %135

135:                                              ; preds = %120, %109
  %136 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %137 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %136, i32 0, i32 4
  store i64 0, i64* %137, align 8
  %138 = load %struct.device*, %struct.device** %6, align 8
  %139 = getelementptr inbounds %struct.device, %struct.device* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %142 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %141, i32 0, i32 3
  store i64 %140, i64* %142, align 8
  %143 = call i32 @mutex_lock(i32* @ssp_lock)
  %144 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %145 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %144, i32 0, i32 2
  %146 = call i32 @list_add(i32* %145, i32* @ssp_list)
  %147 = call i32 @mutex_unlock(i32* @ssp_lock)
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %150 = call i32 @platform_set_drvdata(%struct.platform_device* %148, %struct.ssp_device* %149)
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %135, %99, %85, %61, %43, %32, %16
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local %struct.ssp_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.resource* @devm_request_mem_region(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32* @devm_ioremap(%struct.device*, i32, i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @of_match_ptr(i32) #1

declare dso_local %struct.platform_device_id* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ssp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
