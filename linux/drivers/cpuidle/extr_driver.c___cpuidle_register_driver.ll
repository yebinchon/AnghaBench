; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_driver.c___cpuidle_register_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_driver.c___cpuidle_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_driver = type { i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@cpuidle_setup_broadcast_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_driver*)* @__cpuidle_register_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cpuidle_register_driver(%struct.cpuidle_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpuidle_driver*, align 8
  %4 = alloca i32, align 4
  store %struct.cpuidle_driver* %0, %struct.cpuidle_driver** %3, align 8
  %5 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %3, align 8
  %6 = icmp ne %struct.cpuidle_driver* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %3, align 8
  %9 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7, %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %49

15:                                               ; preds = %7
  %16 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %3, align 8
  %17 = call i32 @cpuidle_coupled_state_verify(%struct.cpuidle_driver* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %49

22:                                               ; preds = %15
  %23 = call i64 (...) @cpuidle_disabled()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %49

28:                                               ; preds = %22
  %29 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %3, align 8
  %30 = call i32 @__cpuidle_driver_init(%struct.cpuidle_driver* %29)
  %31 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %3, align 8
  %32 = call i32 @__cpuidle_set_driver(%struct.cpuidle_driver* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %49

37:                                               ; preds = %28
  %38 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %3, align 8
  %39 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %3, align 8
  %44 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @cpuidle_setup_broadcast_timer, align 4
  %47 = call i32 @on_each_cpu_mask(i32 %45, i32 %46, i8* inttoptr (i64 1 to i8*), i32 1)
  br label %48

48:                                               ; preds = %42, %37
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %35, %25, %20, %12
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @cpuidle_coupled_state_verify(%struct.cpuidle_driver*) #1

declare dso_local i64 @cpuidle_disabled(...) #1

declare dso_local i32 @__cpuidle_driver_init(%struct.cpuidle_driver*) #1

declare dso_local i32 @__cpuidle_set_driver(%struct.cpuidle_driver*) #1

declare dso_local i32 @on_each_cpu_mask(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
