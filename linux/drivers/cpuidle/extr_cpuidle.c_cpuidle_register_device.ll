; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle.c_cpuidle_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle.c_cpuidle_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_device = type { i64 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@cpuidle_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpuidle_register_device(%struct.cpuidle_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpuidle_device*, align 8
  %4 = alloca i32, align 4
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %3, align 8
  %5 = load i32, i32* @EBUSY, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %8 = icmp ne %struct.cpuidle_device* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %50

12:                                               ; preds = %1
  %13 = call i32 @mutex_lock(i32* @cpuidle_lock)
  %14 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %15 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %41

19:                                               ; preds = %12
  %20 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %21 = call i32 @__cpuidle_device_init(%struct.cpuidle_device* %20)
  %22 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %23 = call i32 @__cpuidle_register_device(%struct.cpuidle_device* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %41

27:                                               ; preds = %19
  %28 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %29 = call i32 @cpuidle_add_sysfs(%struct.cpuidle_device* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %47

33:                                               ; preds = %27
  %34 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %35 = call i32 @cpuidle_enable_device(%struct.cpuidle_device* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %44

39:                                               ; preds = %33
  %40 = call i32 (...) @cpuidle_install_idle_handler()
  br label %41

41:                                               ; preds = %47, %39, %26, %18
  %42 = call i32 @mutex_unlock(i32* @cpuidle_lock)
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %50

44:                                               ; preds = %38
  %45 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %46 = call i32 @cpuidle_remove_sysfs(%struct.cpuidle_device* %45)
  br label %47

47:                                               ; preds = %44, %32
  %48 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %49 = call i32 @__cpuidle_unregister_device(%struct.cpuidle_device* %48)
  br label %41

50:                                               ; preds = %41, %9
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__cpuidle_device_init(%struct.cpuidle_device*) #1

declare dso_local i32 @__cpuidle_register_device(%struct.cpuidle_device*) #1

declare dso_local i32 @cpuidle_add_sysfs(%struct.cpuidle_device*) #1

declare dso_local i32 @cpuidle_enable_device(%struct.cpuidle_device*) #1

declare dso_local i32 @cpuidle_install_idle_handler(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cpuidle_remove_sysfs(%struct.cpuidle_device*) #1

declare dso_local i32 @__cpuidle_unregister_device(%struct.cpuidle_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
