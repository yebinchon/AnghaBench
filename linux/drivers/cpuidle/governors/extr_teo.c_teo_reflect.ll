; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/governors/extr_teo.c_teo_reflect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/governors/extr_teo.c_teo_reflect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_device = type { i32, i32, i32 }
%struct.teo_cpu = type { i64, i64 }

@teo_cpus = common dso_local global i32 0, align 4
@TICK_NSEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuidle_device*, i32)* @teo_reflect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @teo_reflect(%struct.cpuidle_device* %0, i32 %1) #0 {
  %3 = alloca %struct.cpuidle_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.teo_cpu*, align 8
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %7 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.teo_cpu* @per_cpu_ptr(i32* @teo_cpus, i32 %8)
  store %struct.teo_cpu* %9, %struct.teo_cpu** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %12 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %14 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %2
  %18 = call i64 (...) @tick_nohz_idle_got_tick()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load %struct.teo_cpu*, %struct.teo_cpu** %5, align 8
  %22 = getelementptr inbounds %struct.teo_cpu, %struct.teo_cpu* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TICK_NSEC, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %20, %2
  %27 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %28 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = load %struct.teo_cpu*, %struct.teo_cpu** %5, align 8
  %30 = getelementptr inbounds %struct.teo_cpu, %struct.teo_cpu* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.teo_cpu*, %struct.teo_cpu** %5, align 8
  %33 = getelementptr inbounds %struct.teo_cpu, %struct.teo_cpu* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  br label %42

34:                                               ; preds = %20, %17
  %35 = call i64 (...) @local_clock()
  %36 = load %struct.teo_cpu*, %struct.teo_cpu** %5, align 8
  %37 = getelementptr inbounds %struct.teo_cpu, %struct.teo_cpu* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = load %struct.teo_cpu*, %struct.teo_cpu** %5, align 8
  %41 = getelementptr inbounds %struct.teo_cpu, %struct.teo_cpu* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %34, %26
  ret void
}

declare dso_local %struct.teo_cpu* @per_cpu_ptr(i32*, i32) #1

declare dso_local i64 @tick_nohz_idle_got_tick(...) #1

declare dso_local i64 @local_clock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
