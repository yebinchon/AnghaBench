; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_ftm-quaddec.c_ftm_quaddec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_ftm-quaddec.c_ftm_quaddec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ftm_quaddec = type { %struct.TYPE_9__, i32, i32, i32, %struct.platform_device* }
%struct.TYPE_9__ = type { i32, %struct.ftm_quaddec*, i32, i32, i32*, i32*, %struct.TYPE_8__*, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to get memory region\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"big-endian\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to map memory region\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ftm_quaddec_cnt_ops = common dso_local global i32 0, align 4
@ftm_quaddec_counts = common dso_local global i32 0, align 4
@ftm_quaddec_signals = common dso_local global i32 0, align 4
@ftm_quaddec_disable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ftm_quaddec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftm_quaddec_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ftm_quaddec*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.ftm_quaddec* @devm_kzalloc(%struct.TYPE_8__* %13, i32 80, i32 %14)
  store %struct.ftm_quaddec* %15, %struct.ftm_quaddec** %4, align 8
  %16 = load %struct.ftm_quaddec*, %struct.ftm_quaddec** %4, align 8
  %17 = icmp ne %struct.ftm_quaddec* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %123

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load %struct.ftm_quaddec*, %struct.ftm_quaddec** %4, align 8
  %24 = call i32 @platform_set_drvdata(%struct.platform_device* %22, %struct.ftm_quaddec* %23)
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load i32, i32* @IORESOURCE_MEM, align 4
  %27 = call %struct.resource* @platform_get_resource(%struct.platform_device* %25, i32 %26, i32 0)
  store %struct.resource* %27, %struct.resource** %6, align 8
  %28 = load %struct.resource*, %struct.resource** %6, align 8
  %29 = icmp ne %struct.resource* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %21
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 @dev_err(%struct.TYPE_8__* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %123

36:                                               ; preds = %21
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = load %struct.ftm_quaddec*, %struct.ftm_quaddec** %4, align 8
  %39 = getelementptr inbounds %struct.ftm_quaddec, %struct.ftm_quaddec* %38, i32 0, i32 4
  store %struct.platform_device* %37, %struct.platform_device** %39, align 8
  %40 = load %struct.device_node*, %struct.device_node** %5, align 8
  %41 = call i32 @of_property_read_bool(%struct.device_node* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.ftm_quaddec*, %struct.ftm_quaddec** %4, align 8
  %43 = getelementptr inbounds %struct.ftm_quaddec, %struct.ftm_quaddec* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load %struct.resource*, %struct.resource** %6, align 8
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.resource*, %struct.resource** %6, align 8
  %50 = call i32 @resource_size(%struct.resource* %49)
  %51 = call i32 @devm_ioremap(%struct.TYPE_8__* %45, i32 %48, i32 %50)
  %52 = load %struct.ftm_quaddec*, %struct.ftm_quaddec** %4, align 8
  %53 = getelementptr inbounds %struct.ftm_quaddec, %struct.ftm_quaddec* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ftm_quaddec*, %struct.ftm_quaddec** %4, align 8
  %55 = getelementptr inbounds %struct.ftm_quaddec, %struct.ftm_quaddec* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %36
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = call i32 @dev_err(%struct.TYPE_8__* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %123

64:                                               ; preds = %36
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = call i32 @dev_name(%struct.TYPE_8__* %66)
  %68 = load %struct.ftm_quaddec*, %struct.ftm_quaddec** %4, align 8
  %69 = getelementptr inbounds %struct.ftm_quaddec, %struct.ftm_quaddec* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 7
  store i32 %67, i32* %70, align 8
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load %struct.ftm_quaddec*, %struct.ftm_quaddec** %4, align 8
  %74 = getelementptr inbounds %struct.ftm_quaddec, %struct.ftm_quaddec* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 6
  store %struct.TYPE_8__* %72, %struct.TYPE_8__** %75, align 8
  %76 = load %struct.ftm_quaddec*, %struct.ftm_quaddec** %4, align 8
  %77 = getelementptr inbounds %struct.ftm_quaddec, %struct.ftm_quaddec* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 5
  store i32* @ftm_quaddec_cnt_ops, i32** %78, align 8
  %79 = load %struct.ftm_quaddec*, %struct.ftm_quaddec** %4, align 8
  %80 = getelementptr inbounds %struct.ftm_quaddec, %struct.ftm_quaddec* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 4
  store i32* @ftm_quaddec_counts, i32** %81, align 8
  %82 = load %struct.ftm_quaddec*, %struct.ftm_quaddec** %4, align 8
  %83 = getelementptr inbounds %struct.ftm_quaddec, %struct.ftm_quaddec* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load i32, i32* @ftm_quaddec_signals, align 4
  %86 = load %struct.ftm_quaddec*, %struct.ftm_quaddec** %4, align 8
  %87 = getelementptr inbounds %struct.ftm_quaddec, %struct.ftm_quaddec* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 3
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* @ftm_quaddec_signals, align 4
  %90 = call i32 @ARRAY_SIZE(i32 %89)
  %91 = load %struct.ftm_quaddec*, %struct.ftm_quaddec** %4, align 8
  %92 = getelementptr inbounds %struct.ftm_quaddec, %struct.ftm_quaddec* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  store i32 %90, i32* %93, align 8
  %94 = load %struct.ftm_quaddec*, %struct.ftm_quaddec** %4, align 8
  %95 = load %struct.ftm_quaddec*, %struct.ftm_quaddec** %4, align 8
  %96 = getelementptr inbounds %struct.ftm_quaddec, %struct.ftm_quaddec* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  store %struct.ftm_quaddec* %94, %struct.ftm_quaddec** %97, align 8
  %98 = load %struct.ftm_quaddec*, %struct.ftm_quaddec** %4, align 8
  %99 = getelementptr inbounds %struct.ftm_quaddec, %struct.ftm_quaddec* %98, i32 0, i32 1
  %100 = call i32 @mutex_init(i32* %99)
  %101 = load %struct.ftm_quaddec*, %struct.ftm_quaddec** %4, align 8
  %102 = call i32 @ftm_quaddec_init(%struct.ftm_quaddec* %101)
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = load i32, i32* @ftm_quaddec_disable, align 4
  %106 = load %struct.ftm_quaddec*, %struct.ftm_quaddec** %4, align 8
  %107 = call i32 @devm_add_action_or_reset(%struct.TYPE_8__* %104, i32 %105, %struct.ftm_quaddec* %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %64
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %2, align 4
  br label %123

112:                                              ; preds = %64
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = load %struct.ftm_quaddec*, %struct.ftm_quaddec** %4, align 8
  %116 = getelementptr inbounds %struct.ftm_quaddec, %struct.ftm_quaddec* %115, i32 0, i32 0
  %117 = call i32 @devm_counter_register(%struct.TYPE_8__* %114, %struct.TYPE_9__* %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %112
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %2, align 4
  br label %123

122:                                              ; preds = %112
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %122, %120, %110, %58, %30, %18
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.ftm_quaddec* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ftm_quaddec*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @devm_ioremap(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_name(%struct.TYPE_8__*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ftm_quaddec_init(%struct.ftm_quaddec*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.TYPE_8__*, i32, %struct.ftm_quaddec*) #1

declare dso_local i32 @devm_counter_register(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
