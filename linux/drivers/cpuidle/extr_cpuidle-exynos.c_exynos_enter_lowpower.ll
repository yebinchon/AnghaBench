; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle-exynos.c_exynos_enter_lowpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle-exynos.c_exynos_enter_lowpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_device = type { i64 }
%struct.cpuidle_driver = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* @exynos_enter_lowpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_enter_lowpower(%struct.cpuidle_device* %0, %struct.cpuidle_driver* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpuidle_device*, align 8
  %6 = alloca %struct.cpuidle_driver*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %5, align 8
  store %struct.cpuidle_driver* %1, %struct.cpuidle_driver** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  store i32 %9, i32* %8, align 4
  %10 = call i32 (...) @num_online_cpus()
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %14 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12, %3
  %18 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %6, align 8
  %19 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %17, %12
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %26 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @arm_cpuidle_simple_enter(%struct.cpuidle_device* %25, %struct.cpuidle_driver* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %32

29:                                               ; preds = %21
  %30 = call i32 (...) @exynos_enter_aftr()
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %29, %24
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @arm_cpuidle_simple_enter(%struct.cpuidle_device*, %struct.cpuidle_driver*, i32) #1

declare dso_local i32 @exynos_enter_aftr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
