; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_driver.c_cpuidle_register_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_driver.c_cpuidle_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_driver = type { i64 }
%struct.cpuidle_governor = type { i32 }

@cpuidle_driver_lock = common dso_local global i32 0, align 4
@param_governor = common dso_local global i32 0, align 4
@cpuidle_lock = common dso_local global i32 0, align 4
@cpuidle_curr_governor = common dso_local global i32* null, align 8
@cpuidle_prev_governor = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpuidle_register_driver(%struct.cpuidle_driver* %0) #0 {
  %2 = alloca %struct.cpuidle_driver*, align 8
  %3 = alloca %struct.cpuidle_governor*, align 8
  %4 = alloca i32, align 4
  store %struct.cpuidle_driver* %0, %struct.cpuidle_driver** %2, align 8
  %5 = call i32 @spin_lock(i32* @cpuidle_driver_lock)
  %6 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %2, align 8
  %7 = call i32 @__cpuidle_register_driver(%struct.cpuidle_driver* %6)
  store i32 %7, i32* %4, align 4
  %8 = call i32 @spin_unlock(i32* @cpuidle_driver_lock)
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %41, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @param_governor, align 4
  %13 = call i32 @strlen(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %41, label %15

15:                                               ; preds = %11
  %16 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %2, align 8
  %17 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %15
  %21 = call %struct.cpuidle_driver* (...) @cpuidle_get_driver()
  %22 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %2, align 8
  %23 = icmp eq %struct.cpuidle_driver* %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = call i32 @mutex_lock(i32* @cpuidle_lock)
  %26 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %2, align 8
  %27 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call %struct.cpuidle_governor* @cpuidle_find_governor(i64 %28)
  store %struct.cpuidle_governor* %29, %struct.cpuidle_governor** %3, align 8
  %30 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %3, align 8
  %31 = icmp ne %struct.cpuidle_governor* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load i32*, i32** @cpuidle_curr_governor, align 8
  store i32* %33, i32** @cpuidle_prev_governor, align 8
  %34 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %3, align 8
  %35 = call i64 @cpuidle_switch_governor(%struct.cpuidle_governor* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32* null, i32** @cpuidle_prev_governor, align 8
  br label %38

38:                                               ; preds = %37, %32
  br label %39

39:                                               ; preds = %38, %24
  %40 = call i32 @mutex_unlock(i32* @cpuidle_lock)
  br label %41

41:                                               ; preds = %39, %20, %15, %11, %1
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__cpuidle_register_driver(%struct.cpuidle_driver*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local %struct.cpuidle_driver* @cpuidle_get_driver(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.cpuidle_governor* @cpuidle_find_governor(i64) #1

declare dso_local i64 @cpuidle_switch_governor(%struct.cpuidle_governor*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
