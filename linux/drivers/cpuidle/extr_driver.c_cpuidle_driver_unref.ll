; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_driver.c_cpuidle_driver_unref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_driver.c_cpuidle_driver_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_driver = type { i64 }

@cpuidle_driver_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpuidle_driver_unref() #0 {
  %1 = alloca %struct.cpuidle_driver*, align 8
  %2 = call i32 @spin_lock(i32* @cpuidle_driver_lock)
  %3 = call %struct.cpuidle_driver* (...) @cpuidle_get_driver()
  store %struct.cpuidle_driver* %3, %struct.cpuidle_driver** %1, align 8
  %4 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %1, align 8
  %5 = icmp ne %struct.cpuidle_driver* %4, null
  br i1 %5, label %6, label %19

6:                                                ; preds = %0
  %7 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %1, align 8
  %8 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sle i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %6
  %15 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %1, align 8
  %16 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  br label %19

19:                                               ; preds = %14, %6, %0
  %20 = call i32 @spin_unlock(i32* @cpuidle_driver_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.cpuidle_driver* @cpuidle_get_driver(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
