; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_sysfs.c_cpuidle_remove_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_sysfs.c_cpuidle_remove_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_device = type { %struct.cpuidle_device_kobj* }
%struct.cpuidle_device_kobj = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpuidle_remove_sysfs(%struct.cpuidle_device* %0) #0 {
  %2 = alloca %struct.cpuidle_device*, align 8
  %3 = alloca %struct.cpuidle_device_kobj*, align 8
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %2, align 8
  %4 = load %struct.cpuidle_device*, %struct.cpuidle_device** %2, align 8
  %5 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %4, i32 0, i32 0
  %6 = load %struct.cpuidle_device_kobj*, %struct.cpuidle_device_kobj** %5, align 8
  store %struct.cpuidle_device_kobj* %6, %struct.cpuidle_device_kobj** %3, align 8
  %7 = load %struct.cpuidle_device_kobj*, %struct.cpuidle_device_kobj** %3, align 8
  %8 = getelementptr inbounds %struct.cpuidle_device_kobj, %struct.cpuidle_device_kobj* %7, i32 0, i32 1
  %9 = call i32 @kobject_put(i32* %8)
  %10 = load %struct.cpuidle_device_kobj*, %struct.cpuidle_device_kobj** %3, align 8
  %11 = getelementptr inbounds %struct.cpuidle_device_kobj, %struct.cpuidle_device_kobj* %10, i32 0, i32 0
  %12 = call i32 @wait_for_completion(i32* %11)
  %13 = load %struct.cpuidle_device_kobj*, %struct.cpuidle_device_kobj** %3, align 8
  %14 = call i32 @kfree(%struct.cpuidle_device_kobj* %13)
  ret void
}

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @kfree(%struct.cpuidle_device_kobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
