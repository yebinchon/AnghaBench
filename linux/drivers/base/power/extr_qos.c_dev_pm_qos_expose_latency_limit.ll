; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_qos.c_dev_pm_qos_expose_latency_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_qos.c_dev_pm_qos_expose_latency_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.dev_pm_qos_request* }
%struct.dev_pm_qos_request = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEV_PM_QOS_RESUME_LATENCY = common dso_local global i32 0, align 4
@dev_pm_qos_sysfs_mtx = common dso_local global i32 0, align 4
@dev_pm_qos_mtx = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_pm_qos_expose_latency_limit(%struct.device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dev_pm_qos_request*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call i32 @device_is_registered(%struct.device* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %90

17:                                               ; preds = %11
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.dev_pm_qos_request* @kzalloc(i32 4, i32 %18)
  store %struct.dev_pm_qos_request* %19, %struct.dev_pm_qos_request** %6, align 8
  %20 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %6, align 8
  %21 = icmp ne %struct.dev_pm_qos_request* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %90

25:                                               ; preds = %17
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %6, align 8
  %28 = load i32, i32* @DEV_PM_QOS_RESUME_LATENCY, align 4
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @dev_pm_qos_add_request(%struct.device* %26, %struct.dev_pm_qos_request* %27, i32 %28, i64 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %6, align 8
  %35 = call i32 @kfree(%struct.dev_pm_qos_request* %34)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %90

37:                                               ; preds = %25
  %38 = call i32 @mutex_lock(i32* @dev_pm_qos_sysfs_mtx)
  %39 = call i32 @mutex_lock(i32* @dev_pm_qos_mtx)
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = getelementptr inbounds %struct.device, %struct.device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = call i64 @IS_ERR_OR_NULL(%struct.TYPE_4__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %61

49:                                               ; preds = %37
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = getelementptr inbounds %struct.device, %struct.device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %54, align 8
  %56 = icmp ne %struct.dev_pm_qos_request* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i32, i32* @EEXIST, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %57, %49
  br label %61

61:                                               ; preds = %60, %46
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %6, align 8
  %66 = call i32 @__dev_pm_qos_remove_request(%struct.dev_pm_qos_request* %65)
  %67 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %6, align 8
  %68 = call i32 @kfree(%struct.dev_pm_qos_request* %67)
  %69 = call i32 @mutex_unlock(i32* @dev_pm_qos_mtx)
  br label %87

70:                                               ; preds = %61
  %71 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %6, align 8
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = getelementptr inbounds %struct.device, %struct.device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store %struct.dev_pm_qos_request* %71, %struct.dev_pm_qos_request** %76, align 8
  %77 = call i32 @mutex_unlock(i32* @dev_pm_qos_mtx)
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = call i32 @pm_qos_sysfs_add_resume_latency(%struct.device* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %70
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = load i32, i32* @DEV_PM_QOS_RESUME_LATENCY, align 4
  %85 = call i32 @dev_pm_qos_drop_user_request(%struct.device* %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %70
  br label %87

87:                                               ; preds = %86, %64
  %88 = call i32 @mutex_unlock(i32* @dev_pm_qos_sysfs_mtx)
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %87, %33, %22, %14
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @device_is_registered(%struct.device*) #1

declare dso_local %struct.dev_pm_qos_request* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_pm_qos_add_request(%struct.device*, %struct.dev_pm_qos_request*, i32, i64) #1

declare dso_local i32 @kfree(%struct.dev_pm_qos_request*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.TYPE_4__*) #1

declare dso_local i32 @__dev_pm_qos_remove_request(%struct.dev_pm_qos_request*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pm_qos_sysfs_add_resume_latency(%struct.device*) #1

declare dso_local i32 @dev_pm_qos_drop_user_request(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
