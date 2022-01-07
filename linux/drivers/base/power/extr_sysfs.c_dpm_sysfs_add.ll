; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_sysfs.c_dpm_sysfs_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_sysfs.c_dpm_sysfs_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@pm_attr_group = common dso_local global i32 0, align 4
@pm_runtime_attr_group = common dso_local global i32 0, align 4
@pm_wakeup_attr_group = common dso_local global i32 0, align 4
@pm_qos_latency_tolerance_attr_group = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpm_sysfs_add(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = call i64 @device_pm_not_required(%struct.device* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %79

9:                                                ; preds = %1
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = call i32 @sysfs_create_group(i32* %11, i32* @pm_attr_group)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %79

17:                                               ; preds = %9
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = call i64 @pm_runtime_callbacks_present(%struct.device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = call i32 @sysfs_merge_group(i32* %23, i32* @pm_runtime_attr_group)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %74

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %17
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = call i64 @device_can_wakeup(%struct.device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 0
  %36 = call i32 @sysfs_merge_group(i32* %35, i32* @pm_wakeup_attr_group)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %70

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %29
  %42 = load %struct.device*, %struct.device** %3, align 8
  %43 = getelementptr inbounds %struct.device, %struct.device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load %struct.device*, %struct.device** %3, align 8
  %49 = getelementptr inbounds %struct.device, %struct.device* %48, i32 0, i32 0
  %50 = call i32 @sysfs_merge_group(i32* %49, i32* @pm_qos_latency_tolerance_attr_group)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %66

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %41
  %56 = load %struct.device*, %struct.device** %3, align 8
  %57 = call i32 @pm_wakeup_source_sysfs_add(%struct.device* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %62

61:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %79

62:                                               ; preds = %60
  %63 = load %struct.device*, %struct.device** %3, align 8
  %64 = getelementptr inbounds %struct.device, %struct.device* %63, i32 0, i32 0
  %65 = call i32 @sysfs_unmerge_group(i32* %64, i32* @pm_qos_latency_tolerance_attr_group)
  br label %66

66:                                               ; preds = %62, %53
  %67 = load %struct.device*, %struct.device** %3, align 8
  %68 = getelementptr inbounds %struct.device, %struct.device* %67, i32 0, i32 0
  %69 = call i32 @sysfs_unmerge_group(i32* %68, i32* @pm_wakeup_attr_group)
  br label %70

70:                                               ; preds = %66, %39
  %71 = load %struct.device*, %struct.device** %3, align 8
  %72 = getelementptr inbounds %struct.device, %struct.device* %71, i32 0, i32 0
  %73 = call i32 @sysfs_unmerge_group(i32* %72, i32* @pm_runtime_attr_group)
  br label %74

74:                                               ; preds = %70, %27
  %75 = load %struct.device*, %struct.device** %3, align 8
  %76 = getelementptr inbounds %struct.device, %struct.device* %75, i32 0, i32 0
  %77 = call i32 @sysfs_remove_group(i32* %76, i32* @pm_attr_group)
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %74, %61, %15, %8
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i64 @device_pm_not_required(%struct.device*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i64 @pm_runtime_callbacks_present(%struct.device*) #1

declare dso_local i32 @sysfs_merge_group(i32*, i32*) #1

declare dso_local i64 @device_can_wakeup(%struct.device*) #1

declare dso_local i32 @pm_wakeup_source_sysfs_add(%struct.device*) #1

declare dso_local i32 @sysfs_unmerge_group(i32*, i32*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
