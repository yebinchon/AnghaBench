; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle-pseries.c_pseries_cpuidle_cpu_dead.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle-pseries.c_pseries_cpuidle_cpu_dead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_device = type { i32 }

@cpuidle_devices = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pseries_cpuidle_cpu_dead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pseries_cpuidle_cpu_dead(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpuidle_device*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @cpuidle_devices, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.cpuidle_device* @per_cpu(i32 %4, i32 %5)
  store %struct.cpuidle_device* %6, %struct.cpuidle_device** %3, align 8
  %7 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %8 = icmp ne %struct.cpuidle_device* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = call i64 (...) @cpuidle_get_driver()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = call i32 (...) @cpuidle_pause_and_lock()
  %14 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %15 = call i32 @cpuidle_disable_device(%struct.cpuidle_device* %14)
  %16 = call i32 (...) @cpuidle_resume_and_unlock()
  br label %17

17:                                               ; preds = %12, %9, %1
  ret i32 0
}

declare dso_local %struct.cpuidle_device* @per_cpu(i32, i32) #1

declare dso_local i64 @cpuidle_get_driver(...) #1

declare dso_local i32 @cpuidle_pause_and_lock(...) #1

declare dso_local i32 @cpuidle_disable_device(%struct.cpuidle_device*) #1

declare dso_local i32 @cpuidle_resume_and_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
