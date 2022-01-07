; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle.c_cpuidle_disable_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle.c_cpuidle_disable_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cpuidle_driver*, %struct.cpuidle_device*)* }
%struct.cpuidle_driver = type { i32 }
%struct.cpuidle_device = type { i64 }

@cpuidle_curr_governor = common dso_local global %struct.TYPE_2__* null, align 8
@enabled_devices = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpuidle_disable_device(%struct.cpuidle_device* %0) #0 {
  %2 = alloca %struct.cpuidle_device*, align 8
  %3 = alloca %struct.cpuidle_driver*, align 8
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %2, align 8
  %4 = load %struct.cpuidle_device*, %struct.cpuidle_device** %2, align 8
  %5 = call %struct.cpuidle_driver* @cpuidle_get_cpu_driver(%struct.cpuidle_device* %4)
  store %struct.cpuidle_driver* %5, %struct.cpuidle_driver** %3, align 8
  %6 = load %struct.cpuidle_device*, %struct.cpuidle_device** %2, align 8
  %7 = icmp ne %struct.cpuidle_device* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.cpuidle_device*, %struct.cpuidle_device** %2, align 8
  %10 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %1
  br label %40

14:                                               ; preds = %8
  %15 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %3, align 8
  %16 = icmp ne %struct.cpuidle_driver* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpuidle_curr_governor, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %14
  br label %40

21:                                               ; preds = %17
  %22 = load %struct.cpuidle_device*, %struct.cpuidle_device** %2, align 8
  %23 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpuidle_curr_governor, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.cpuidle_driver*, %struct.cpuidle_device*)*, i32 (%struct.cpuidle_driver*, %struct.cpuidle_device*)** %25, align 8
  %27 = icmp ne i32 (%struct.cpuidle_driver*, %struct.cpuidle_device*)* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpuidle_curr_governor, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.cpuidle_driver*, %struct.cpuidle_device*)*, i32 (%struct.cpuidle_driver*, %struct.cpuidle_device*)** %30, align 8
  %32 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %3, align 8
  %33 = load %struct.cpuidle_device*, %struct.cpuidle_device** %2, align 8
  %34 = call i32 %31(%struct.cpuidle_driver* %32, %struct.cpuidle_device* %33)
  br label %35

35:                                               ; preds = %28, %21
  %36 = load %struct.cpuidle_device*, %struct.cpuidle_device** %2, align 8
  %37 = call i32 @cpuidle_remove_device_sysfs(%struct.cpuidle_device* %36)
  %38 = load i32, i32* @enabled_devices, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* @enabled_devices, align 4
  br label %40

40:                                               ; preds = %35, %20, %13
  ret void
}

declare dso_local %struct.cpuidle_driver* @cpuidle_get_cpu_driver(%struct.cpuidle_device*) #1

declare dso_local i32 @cpuidle_remove_device_sysfs(%struct.cpuidle_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
