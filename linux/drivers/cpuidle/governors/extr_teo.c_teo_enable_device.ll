; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/governors/extr_teo.c_teo_enable_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/governors/extr_teo.c_teo_enable_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_driver = type { i32 }
%struct.cpuidle_device = type { i32 }
%struct.teo_cpu = type { i32* }

@teo_cpus = common dso_local global i32 0, align 4
@INTERVALS = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_driver*, %struct.cpuidle_device*)* @teo_enable_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @teo_enable_device(%struct.cpuidle_driver* %0, %struct.cpuidle_device* %1) #0 {
  %3 = alloca %struct.cpuidle_driver*, align 8
  %4 = alloca %struct.cpuidle_device*, align 8
  %5 = alloca %struct.teo_cpu*, align 8
  %6 = alloca i32, align 4
  store %struct.cpuidle_driver* %0, %struct.cpuidle_driver** %3, align 8
  store %struct.cpuidle_device* %1, %struct.cpuidle_device** %4, align 8
  %7 = load %struct.cpuidle_device*, %struct.cpuidle_device** %4, align 8
  %8 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.teo_cpu* @per_cpu_ptr(i32* @teo_cpus, i32 %9)
  store %struct.teo_cpu* %10, %struct.teo_cpu** %5, align 8
  %11 = load %struct.teo_cpu*, %struct.teo_cpu** %5, align 8
  %12 = call i32 @memset(%struct.teo_cpu* %11, i32 0, i32 8)
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %25, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @INTERVALS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load i32, i32* @UINT_MAX, align 4
  %19 = load %struct.teo_cpu*, %struct.teo_cpu** %5, align 8
  %20 = getelementptr inbounds %struct.teo_cpu, %struct.teo_cpu* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 %18, i32* %24, align 4
  br label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %13

28:                                               ; preds = %13
  ret i32 0
}

declare dso_local %struct.teo_cpu* @per_cpu_ptr(i32*, i32) #1

declare dso_local i32 @memset(%struct.teo_cpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
