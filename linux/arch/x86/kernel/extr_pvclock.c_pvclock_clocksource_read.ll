; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_pvclock.c_pvclock_clocksource_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_pvclock.c_pvclock_clocksource_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvclock_vcpu_time_info = type { i32 }

@PVCLOCK_GUEST_STOPPED = common dso_local global i32 0, align 4
@valid_flags = common dso_local global i32 0, align 4
@PVCLOCK_TSC_STABLE_BIT = common dso_local global i32 0, align 4
@last_value = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pvclock_clocksource_read(%struct.pvclock_vcpu_time_info* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pvclock_vcpu_time_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pvclock_vcpu_time_info* %0, %struct.pvclock_vcpu_time_info** %3, align 8
  br label %8

8:                                                ; preds = %17, %1
  %9 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %3, align 8
  %10 = call i32 @pvclock_read_begin(%struct.pvclock_vcpu_time_info* %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %3, align 8
  %12 = call i32 (...) @rdtsc_ordered()
  %13 = call i64 @__pvclock_read_cycles(%struct.pvclock_vcpu_time_info* %11, i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %3, align 8
  %15 = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %8
  %18 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @pvclock_read_retry(%struct.pvclock_vcpu_time_info* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %8, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @PVCLOCK_GUEST_STOPPED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load i32, i32* @PVCLOCK_GUEST_STOPPED, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %3, align 8
  %34 = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = call i32 (...) @pvclock_touch_watchdogs()
  br label %38

38:                                               ; preds = %30, %22
  %39 = load i32, i32* @valid_flags, align 4
  %40 = load i32, i32* @PVCLOCK_TSC_STABLE_BIT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @PVCLOCK_TSC_STABLE_BIT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i64, i64* %5, align 8
  store i64 %49, i64* %2, align 8
  br label %71

50:                                               ; preds = %43, %38
  %51 = call i64 @atomic64_read(i32* @last_value)
  store i64 %51, i64* %6, align 8
  br label %52

52:                                               ; preds = %62, %50
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i64, i64* %6, align 8
  store i64 %57, i64* %2, align 8
  br label %71

58:                                               ; preds = %52
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i64 @atomic64_cmpxchg(i32* @last_value, i64 %59, i64 %60)
  store i64 %61, i64* %6, align 8
  br label %62

62:                                               ; preds = %58
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* %5, align 8
  %65 = icmp ne i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %52, label %69

69:                                               ; preds = %62
  %70 = load i64, i64* %5, align 8
  store i64 %70, i64* %2, align 8
  br label %71

71:                                               ; preds = %69, %56, %48
  %72 = load i64, i64* %2, align 8
  ret i64 %72
}

declare dso_local i32 @pvclock_read_begin(%struct.pvclock_vcpu_time_info*) #1

declare dso_local i64 @__pvclock_read_cycles(%struct.pvclock_vcpu_time_info*, i32) #1

declare dso_local i32 @rdtsc_ordered(...) #1

declare dso_local i64 @pvclock_read_retry(%struct.pvclock_vcpu_time_info*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pvclock_touch_watchdogs(...) #1

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i64 @atomic64_cmpxchg(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
