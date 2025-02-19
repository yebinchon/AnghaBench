; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle.c_cpuidle_play_dead.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle.c_cpuidle_play_dead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_device = type { i32 }
%struct.cpuidle_driver = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.cpuidle_device*, i32)* }

@cpuidle_devices = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpuidle_play_dead() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.cpuidle_device*, align 8
  %3 = alloca %struct.cpuidle_driver*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @cpuidle_devices, align 4
  %6 = call %struct.cpuidle_device* @__this_cpu_read(i32 %5)
  store %struct.cpuidle_device* %6, %struct.cpuidle_device** %2, align 8
  %7 = load %struct.cpuidle_device*, %struct.cpuidle_device** %2, align 8
  %8 = call %struct.cpuidle_driver* @cpuidle_get_cpu_driver(%struct.cpuidle_device* %7)
  store %struct.cpuidle_driver* %8, %struct.cpuidle_driver** %3, align 8
  %9 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %3, align 8
  %10 = icmp ne %struct.cpuidle_driver* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %0
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %1, align 4
  br label %51

14:                                               ; preds = %0
  %15 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %3, align 8
  %16 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %45, %14
  %20 = load i32, i32* %4, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %19
  %23 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %3, align 8
  %24 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.cpuidle_device*, i32)*, i32 (%struct.cpuidle_device*, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.cpuidle_device*, i32)* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %22
  %33 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %3, align 8
  %34 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.cpuidle_device*, i32)*, i32 (%struct.cpuidle_device*, i32)** %39, align 8
  %41 = load %struct.cpuidle_device*, %struct.cpuidle_device** %2, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 %40(%struct.cpuidle_device* %41, i32 %42)
  store i32 %43, i32* %1, align 4
  br label %51

44:                                               ; preds = %22
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %4, align 4
  br label %19

48:                                               ; preds = %19
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %1, align 4
  br label %51

51:                                               ; preds = %48, %32, %11
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local %struct.cpuidle_device* @__this_cpu_read(i32) #1

declare dso_local %struct.cpuidle_driver* @cpuidle_get_cpu_driver(%struct.cpuidle_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
