; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-bus.c_fsl_mc_bus_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-bus.c_fsl_mc_bus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.fsl_mc_obj_desc = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.fsl_mc = type { %struct.fsl_mc_device*, i32, i32 }
%struct.fsl_mc_device = type { i32 }
%struct.fsl_mc_io = type { i32 }
%struct.mc_version = type { i32, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"of_address_to_resource() failed for %pOF\0A\00", align 1
@FSL_MC_IO_ATOMIC_CONTEXT_PORTAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"mc_get_version() failed with error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"MC firmware version: %u.%u.%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"dprc_get_container_id() failed: %d\0A\00", align 1
@FSL_MC_VENDOR_FREESCALE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"dprc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fsl_mc_bus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_mc_bus_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.fsl_mc_obj_desc, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsl_mc*, align 8
  %7 = alloca %struct.fsl_mc_device*, align 8
  %8 = alloca %struct.fsl_mc_io*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mc_version, align 4
  %13 = alloca %struct.resource, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.fsl_mc_device* null, %struct.fsl_mc_device** %7, align 8
  store %struct.fsl_mc_io* null, %struct.fsl_mc_io** %8, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.fsl_mc* @devm_kzalloc(%struct.TYPE_7__* %15, i32 16, i32 %16)
  store %struct.fsl_mc* %17, %struct.fsl_mc** %6, align 8
  %18 = load %struct.fsl_mc*, %struct.fsl_mc** %6, align 8
  %19 = icmp ne %struct.fsl_mc* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %131

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.fsl_mc*, %struct.fsl_mc** %6, align 8
  %26 = call i32 @platform_set_drvdata(%struct.platform_device* %24, %struct.fsl_mc* %25)
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @of_address_to_resource(i32 %30, i32 0, %struct.resource* %13)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %23
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(%struct.TYPE_7__* %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %131

43:                                               ; preds = %23
  %44 = getelementptr inbounds %struct.resource, %struct.resource* %13, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %10, align 4
  %46 = call i32 @resource_size(%struct.resource* %13)
  store i32 %46, i32* %11, align 4
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @FSL_MC_IO_ATOMIC_CONTEXT_PORTAL, align 4
  %52 = call i32 @fsl_create_mc_io(%struct.TYPE_7__* %48, i32 %49, i32 %50, i32* null, i32 %51, %struct.fsl_mc_io** %8)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %43
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %131

57:                                               ; preds = %43
  %58 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %8, align 8
  %59 = call i32 @mc_get_version(%struct.fsl_mc_io* %58, i32 0, %struct.mc_version* %12)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @dev_err(%struct.TYPE_7__* %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %127

67:                                               ; preds = %57
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.mc_version, %struct.mc_version* %12, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.mc_version, %struct.mc_version* %12, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.mc_version, %struct.mc_version* %12, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dev_info(%struct.TYPE_7__* %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %73, i32 %75)
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = load %struct.fsl_mc*, %struct.fsl_mc** %6, align 8
  %80 = getelementptr inbounds %struct.fsl_mc, %struct.fsl_mc* %79, i32 0, i32 2
  %81 = load %struct.fsl_mc*, %struct.fsl_mc** %6, align 8
  %82 = getelementptr inbounds %struct.fsl_mc, %struct.fsl_mc* %81, i32 0, i32 1
  %83 = call i32 @get_mc_addr_translation_ranges(%struct.TYPE_7__* %78, i32* %80, i32* %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %67
  br label %127

87:                                               ; preds = %67
  %88 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %8, align 8
  %89 = call i32 @dprc_get_container_id(%struct.fsl_mc_io* %88, i32 0, i32* %9)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @dev_err(%struct.TYPE_7__* %94, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  br label %127

97:                                               ; preds = %87
  %98 = call i32 @memset(%struct.fsl_mc_obj_desc* %4, i32 0, i32 32)
  %99 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %8, align 8
  %100 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %4, i32 0, i32 6
  %101 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %4, i32 0, i32 5
  %102 = call i32 @dprc_get_api_version(%struct.fsl_mc_io* %99, i32 0, i32* %100, i32* %101)
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %127

106:                                              ; preds = %97
  %107 = load i32, i32* @FSL_MC_VENDOR_FREESCALE, align 4
  %108 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %4, i32 0, i32 4
  store i32 %107, i32* %108, align 4
  %109 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %4, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @strcpy(i32 %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %112 = load i32, i32* %9, align 4
  %113 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %4, i32 0, i32 0
  store i32 %112, i32* %113, align 8
  %114 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %4, i32 0, i32 1
  store i32 1, i32* %114, align 4
  %115 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %4, i32 0, i32 2
  store i64 0, i64* %115, align 8
  %116 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %8, align 8
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = call i32 @fsl_mc_device_add(%struct.fsl_mc_obj_desc* %4, %struct.fsl_mc_io* %116, %struct.TYPE_7__* %118, %struct.fsl_mc_device** %7)
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %5, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %106
  br label %127

123:                                              ; preds = %106
  %124 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %7, align 8
  %125 = load %struct.fsl_mc*, %struct.fsl_mc** %6, align 8
  %126 = getelementptr inbounds %struct.fsl_mc, %struct.fsl_mc* %125, i32 0, i32 0
  store %struct.fsl_mc_device* %124, %struct.fsl_mc_device** %126, align 8
  store i32 0, i32* %2, align 4
  br label %131

127:                                              ; preds = %122, %105, %92, %86, %62
  %128 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %8, align 8
  %129 = call i32 @fsl_destroy_mc_io(%struct.fsl_mc_io* %128)
  %130 = load i32, i32* %5, align 4
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %127, %123, %55, %34, %20
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local %struct.fsl_mc* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fsl_mc*) #1

declare dso_local i32 @of_address_to_resource(i32, i32, %struct.resource*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @fsl_create_mc_io(%struct.TYPE_7__*, i32, i32, i32*, i32, %struct.fsl_mc_io**) #1

declare dso_local i32 @mc_get_version(%struct.fsl_mc_io*, i32, %struct.mc_version*) #1

declare dso_local i32 @dev_info(%struct.TYPE_7__*, i8*, i32, i32, i32) #1

declare dso_local i32 @get_mc_addr_translation_ranges(%struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32 @dprc_get_container_id(%struct.fsl_mc_io*, i32, i32*) #1

declare dso_local i32 @memset(%struct.fsl_mc_obj_desc*, i32, i32) #1

declare dso_local i32 @dprc_get_api_version(%struct.fsl_mc_io*, i32, i32*, i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @fsl_mc_device_add(%struct.fsl_mc_obj_desc*, %struct.fsl_mc_io*, %struct.TYPE_7__*, %struct.fsl_mc_device**) #1

declare dso_local i32 @fsl_destroy_mc_io(%struct.fsl_mc_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
