; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_device.c_omap_device_build_from_dt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_device.c_omap_device_build_from_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_6__, %struct.resource* }
%struct.TYPE_6__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.resource = type { i32* }
%struct.omap_hwmod = type { i32 }
%struct.omap_device = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"ti,hwmods\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"No 'hwmods' to build omap_device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"dma_system\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Cannot lookup hwmod '%s'\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HWMOD_INIT_NO_IDLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Cannot allocate omap_device for :%s\0A\00", align 1
@omap_device_pm_domain = common dso_local global i32 0, align 4
@omap_device_fail_pm_domain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omap_device_build_from_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_device_build_from_dt(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.omap_hwmod**, align 8
  %5 = alloca %struct.omap_device*, align 8
  %6 = alloca %struct.omap_hwmod*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.resource, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  store %struct.device_node* %19, %struct.device_node** %7, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load %struct.device_node*, %struct.device_node** %7, align 8
  %21 = call i32 @of_property_count_strings(%struct.device_node* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 1
  %27 = call i32 @dev_dbg(%struct.TYPE_6__* %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %172

30:                                               ; preds = %1
  %31 = load %struct.device_node*, %struct.device_node** %7, align 8
  %32 = call i32 @of_property_read_string_index(%struct.device_node* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0, i8** %9)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %30
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @strncmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %36, i32 10)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %40, i32 3)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39, %35
  store i32 1, i32* %14, align 4
  br label %44

44:                                               ; preds = %43, %39, %30
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %44
  %48 = load %struct.device_node*, %struct.device_node** %7, align 8
  %49 = call i32 @omap_hwmod_parse_module_range(i32* null, %struct.device_node* %48, %struct.resource* %8)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %172

54:                                               ; preds = %47, %44
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.omap_hwmod** @kcalloc(i32 %55, i32 8, i32 %56)
  store %struct.omap_hwmod** %57, %struct.omap_hwmod*** %4, align 8
  %58 = load %struct.omap_hwmod**, %struct.omap_hwmod*** %4, align 8
  %59 = icmp ne %struct.omap_hwmod** %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %12, align 4
  br label %163

63:                                               ; preds = %54
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %97, %63
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %100

68:                                               ; preds = %64
  %69 = load %struct.device_node*, %struct.device_node** %7, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @of_property_read_string_index(%struct.device_node* %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %70, i8** %9)
  %72 = load i8*, i8** %9, align 8
  %73 = call %struct.omap_hwmod* @omap_hwmod_lookup(i8* %72)
  store %struct.omap_hwmod* %73, %struct.omap_hwmod** %6, align 8
  %74 = load %struct.omap_hwmod*, %struct.omap_hwmod** %6, align 8
  %75 = icmp ne %struct.omap_hwmod* %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %68
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 1
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 @dev_err(%struct.TYPE_6__* %78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %12, align 4
  br label %160

83:                                               ; preds = %68
  %84 = load %struct.omap_hwmod*, %struct.omap_hwmod** %6, align 8
  %85 = load %struct.omap_hwmod**, %struct.omap_hwmod*** %4, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.omap_hwmod*, %struct.omap_hwmod** %85, i64 %87
  store %struct.omap_hwmod* %84, %struct.omap_hwmod** %88, align 8
  %89 = load %struct.omap_hwmod*, %struct.omap_hwmod** %6, align 8
  %90 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @HWMOD_INIT_NO_IDLE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %83
  store i32 1, i32* %13, align 4
  br label %96

96:                                               ; preds = %95, %83
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %64

100:                                              ; preds = %64
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = load %struct.omap_hwmod**, %struct.omap_hwmod*** %4, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call %struct.omap_device* @omap_device_alloc(%struct.platform_device* %101, %struct.omap_hwmod** %102, i32 %103)
  store %struct.omap_device* %104, %struct.omap_device** %5, align 8
  %105 = load %struct.omap_device*, %struct.omap_device** %5, align 8
  %106 = call i64 @IS_ERR(%struct.omap_device* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %100
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 1
  %111 = load i8*, i8** %9, align 8
  %112 = call i32 @dev_err(%struct.TYPE_6__* %110, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %111)
  %113 = load %struct.omap_device*, %struct.omap_device** %5, align 8
  %114 = call i32 @PTR_ERR(%struct.omap_device* %113)
  store i32 %114, i32* %12, align 4
  br label %160

115:                                              ; preds = %100
  store i32 0, i32* %11, align 4
  br label %116

116:                                              ; preds = %140, %115
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %143

122:                                              ; preds = %116
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 2
  %125 = load %struct.resource*, %struct.resource** %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.resource, %struct.resource* %125, i64 %127
  store %struct.resource* %128, %struct.resource** %15, align 8
  %129 = load %struct.resource*, %struct.resource** %15, align 8
  %130 = getelementptr inbounds %struct.resource, %struct.resource* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = icmp eq i32* %131, null
  br i1 %132, label %133, label %139

133:                                              ; preds = %122
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 1
  %136 = call i32* @dev_name(%struct.TYPE_6__* %135)
  %137 = load %struct.resource*, %struct.resource** %15, align 8
  %138 = getelementptr inbounds %struct.resource, %struct.resource* %137, i32 0, i32 0
  store i32* %136, i32** %138, align 8
  br label %139

139:                                              ; preds = %133, %122
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %11, align 4
  br label %116

143:                                              ; preds = %116
  %144 = load i32, i32* %14, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %159, label %146

146:                                              ; preds = %143
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 1
  %149 = call i32 @dev_pm_domain_set(%struct.TYPE_6__* %148, i32* @omap_device_pm_domain)
  %150 = load i32, i32* %13, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %146
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = call i32 @omap_device_enable(%struct.platform_device* %153)
  %155 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %156 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %155, i32 0, i32 1
  %157 = call i32 @pm_runtime_set_active(%struct.TYPE_6__* %156)
  br label %158

158:                                              ; preds = %152, %146
  br label %159

159:                                              ; preds = %158, %143
  br label %160

160:                                              ; preds = %159, %108, %76
  %161 = load %struct.omap_hwmod**, %struct.omap_hwmod*** %4, align 8
  %162 = call i32 @kfree(%struct.omap_hwmod** %161)
  br label %163

163:                                              ; preds = %160, %60
  %164 = load i32, i32* %12, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %163
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %167, i32 0, i32 1
  %169 = call i32 @dev_pm_domain_set(%struct.TYPE_6__* %168, i32* @omap_device_fail_pm_domain)
  br label %170

170:                                              ; preds = %166, %163
  %171 = load i32, i32* %12, align 4
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %170, %51, %24
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i32 @of_property_count_strings(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @of_property_read_string_index(%struct.device_node*, i8*, i32, i8**) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @omap_hwmod_parse_module_range(i32*, %struct.device_node*, %struct.resource*) #1

declare dso_local %struct.omap_hwmod** @kcalloc(i32, i32, i32) #1

declare dso_local %struct.omap_hwmod* @omap_hwmod_lookup(i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local %struct.omap_device* @omap_device_alloc(%struct.platform_device*, %struct.omap_hwmod**, i32) #1

declare dso_local i64 @IS_ERR(%struct.omap_device*) #1

declare dso_local i32 @PTR_ERR(%struct.omap_device*) #1

declare dso_local i32* @dev_name(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_pm_domain_set(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @omap_device_enable(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.omap_hwmod**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
