; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_bus.c_bus_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_bus.c_bus_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_13__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.bus_type = type { i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"bus: '%s': add device %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"subsystem\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_add_device(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.bus_type*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %9 = call %struct.bus_type* @bus_get(%struct.TYPE_13__* %8)
  store %struct.bus_type* %9, %struct.bus_type** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %11 = icmp ne %struct.bus_type* %10, null
  br i1 %11, label %12, label %66

12:                                               ; preds = %1
  %13 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %14 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = call i8* @dev_name(%struct.device* %16)
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %15, i8* %17)
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %21 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @device_add_groups(%struct.device* %19, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %12
  br label %83

27:                                               ; preds = %12
  %28 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %29 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %28, i32 0, i32 1
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 2
  %36 = load %struct.device*, %struct.device** %3, align 8
  %37 = call i8* @dev_name(%struct.device* %36)
  %38 = call i32 @sysfs_create_link(i32* %33, i32* %35, i8* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  br label %77

42:                                               ; preds = %27
  %43 = load %struct.device*, %struct.device** %3, align 8
  %44 = getelementptr inbounds %struct.device, %struct.device* %43, i32 0, i32 2
  %45 = load %struct.device*, %struct.device** %3, align 8
  %46 = getelementptr inbounds %struct.device, %struct.device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = call i32 @sysfs_create_link(i32* %44, i32* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %42
  br label %67

56:                                               ; preds = %42
  %57 = load %struct.device*, %struct.device** %3, align 8
  %58 = getelementptr inbounds %struct.device, %struct.device* %57, i32 0, i32 1
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %62 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %61, i32 0, i32 1
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = call i32 @klist_add_tail(i32* %60, i32* %64)
  br label %66

66:                                               ; preds = %56, %1
  store i32 0, i32* %2, align 4
  br label %89

67:                                               ; preds = %55
  %68 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %69 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %68, i32 0, i32 1
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load %struct.device*, %struct.device** %3, align 8
  %75 = call i8* @dev_name(%struct.device* %74)
  %76 = call i32 @sysfs_remove_link(i32* %73, i8* %75)
  br label %77

77:                                               ; preds = %67, %41
  %78 = load %struct.device*, %struct.device** %3, align 8
  %79 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %80 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @device_remove_groups(%struct.device* %78, i32 %81)
  br label %83

83:                                               ; preds = %77, %26
  %84 = load %struct.device*, %struct.device** %3, align 8
  %85 = getelementptr inbounds %struct.device, %struct.device* %84, i32 0, i32 0
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = call i32 @bus_put(%struct.TYPE_13__* %86)
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %83, %66
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.bus_type* @bus_get(%struct.TYPE_13__*) #1

declare dso_local i32 @pr_debug(i8*, i32, i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @device_add_groups(%struct.device*, i32) #1

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #1

declare dso_local i32 @klist_add_tail(i32*, i32*) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i32 @device_remove_groups(%struct.device*, i32) #1

declare dso_local i32 @bus_put(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
