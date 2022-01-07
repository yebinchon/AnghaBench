; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_qos.c_dev_pm_qos_expose_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_qos.c_dev_pm_qos_expose_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.dev_pm_qos_request* }
%struct.dev_pm_qos_request = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEV_PM_QOS_FLAGS = common dso_local global i32 0, align 4
@dev_pm_qos_sysfs_mtx = common dso_local global i32 0, align 4
@dev_pm_qos_mtx = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_pm_qos_expose_flags(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dev_pm_qos_request*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call i32 @device_is_registered(%struct.device* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %91

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.dev_pm_qos_request* @kzalloc(i32 4, i32 %15)
  store %struct.dev_pm_qos_request* %16, %struct.dev_pm_qos_request** %6, align 8
  %17 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %6, align 8
  %18 = icmp ne %struct.dev_pm_qos_request* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %91

22:                                               ; preds = %14
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %6, align 8
  %25 = load i32, i32* @DEV_PM_QOS_FLAGS, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @dev_pm_qos_add_request(%struct.device* %23, %struct.dev_pm_qos_request* %24, i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %6, align 8
  %32 = call i32 @kfree(%struct.dev_pm_qos_request* %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %91

34:                                               ; preds = %22
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = call i32 @pm_runtime_get_sync(%struct.device* %35)
  %37 = call i32 @mutex_lock(i32* @dev_pm_qos_sysfs_mtx)
  %38 = call i32 @mutex_lock(i32* @dev_pm_qos_mtx)
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = getelementptr inbounds %struct.device, %struct.device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = call i64 @IS_ERR_OR_NULL(%struct.TYPE_4__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %60

48:                                               ; preds = %34
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = getelementptr inbounds %struct.device, %struct.device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %53, align 8
  %55 = icmp ne %struct.dev_pm_qos_request* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32, i32* @EEXIST, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %56, %48
  br label %60

60:                                               ; preds = %59, %45
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %6, align 8
  %65 = call i32 @__dev_pm_qos_remove_request(%struct.dev_pm_qos_request* %64)
  %66 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %6, align 8
  %67 = call i32 @kfree(%struct.dev_pm_qos_request* %66)
  %68 = call i32 @mutex_unlock(i32* @dev_pm_qos_mtx)
  br label %86

69:                                               ; preds = %60
  %70 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %6, align 8
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = getelementptr inbounds %struct.device, %struct.device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store %struct.dev_pm_qos_request* %70, %struct.dev_pm_qos_request** %75, align 8
  %76 = call i32 @mutex_unlock(i32* @dev_pm_qos_mtx)
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = call i32 @pm_qos_sysfs_add_flags(%struct.device* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %69
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = load i32, i32* @DEV_PM_QOS_FLAGS, align 4
  %84 = call i32 @dev_pm_qos_drop_user_request(%struct.device* %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %69
  br label %86

86:                                               ; preds = %85, %63
  %87 = call i32 @mutex_unlock(i32* @dev_pm_qos_sysfs_mtx)
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = call i32 @pm_runtime_put(%struct.device* %88)
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %86, %30, %19, %11
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @device_is_registered(%struct.device*) #1

declare dso_local %struct.dev_pm_qos_request* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_pm_qos_add_request(%struct.device*, %struct.dev_pm_qos_request*, i32, i32) #1

declare dso_local i32 @kfree(%struct.dev_pm_qos_request*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.TYPE_4__*) #1

declare dso_local i32 @__dev_pm_qos_remove_request(%struct.dev_pm_qos_request*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pm_qos_sysfs_add_flags(%struct.device*) #1

declare dso_local i32 @dev_pm_qos_drop_user_request(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_put(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
