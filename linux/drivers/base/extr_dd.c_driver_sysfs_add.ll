; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_dd.c_driver_sysfs_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_dd.c_driver_sysfs_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@BUS_NOTIFY_BIND_DRIVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"driver\00", align 1
@CONFIG_DEV_COREDUMP = common dso_local global i32 0, align 4
@dev_attr_coredump = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @driver_sysfs_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @driver_sysfs_add(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 2
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = icmp ne %struct.TYPE_6__* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* @BUS_NOTIFY_BIND_DRIVER, align 4
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = call i32 @blocking_notifier_call_chain(i32* %15, i32 %16, %struct.device* %17)
  br label %19

19:                                               ; preds = %9, %1
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.device*, %struct.device** %3, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  %30 = call i8* @kobject_name(i32* %29)
  %31 = call i32 @sysfs_create_link(i32* %25, i32* %27, i8* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  br label %79

35:                                               ; preds = %19
  %36 = load %struct.device*, %struct.device** %3, align 8
  %37 = getelementptr inbounds %struct.device, %struct.device* %36, i32 0, i32 0
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = getelementptr inbounds %struct.device, %struct.device* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = call i32 @sysfs_create_link(i32* %37, i32* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %68

48:                                               ; preds = %35
  %49 = load i32, i32* @CONFIG_DEV_COREDUMP, align 4
  %50 = call i32 @IS_ENABLED(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load %struct.device*, %struct.device** %3, align 8
  %54 = getelementptr inbounds %struct.device, %struct.device* %53, i32 0, i32 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load %struct.device*, %struct.device** %3, align 8
  %61 = call i32 @device_create_file(%struct.device* %60, i32* @dev_attr_coredump)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59, %52, %48
  store i32 0, i32* %2, align 4
  br label %81

64:                                               ; preds = %59
  %65 = load %struct.device*, %struct.device** %3, align 8
  %66 = getelementptr inbounds %struct.device, %struct.device* %65, i32 0, i32 0
  %67 = call i32 @sysfs_remove_link(i32* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %47
  %69 = load %struct.device*, %struct.device** %3, align 8
  %70 = getelementptr inbounds %struct.device, %struct.device* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load %struct.device*, %struct.device** %3, align 8
  %76 = getelementptr inbounds %struct.device, %struct.device* %75, i32 0, i32 0
  %77 = call i8* @kobject_name(i32* %76)
  %78 = call i32 @sysfs_remove_link(i32* %74, i8* %77)
  br label %79

79:                                               ; preds = %68, %34
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %63
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, %struct.device*) #1

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #1

declare dso_local i8* @kobject_name(i32*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @device_create_file(%struct.device*, i32*) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
