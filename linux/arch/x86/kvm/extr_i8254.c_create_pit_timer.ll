; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_i8254.c_create_pit_timer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_i8254.c_create_pit_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_pit = type { i32, %struct.kvm*, %struct.kvm_kpit_state }
%struct.kvm = type { i32 }
%struct.kvm_kpit_state = type { i32, i64, i32, i32 }

@KVM_PIT_FLAGS_HPET_LEGACY = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@KVM_PIT_FREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"create pit timer, interval is %llu nsec\0A\00", align 1
@min_timer_period_us = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"kvm: requested %lld ns i8254 timer period limited to %lld ns\0A\00", align 1
@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_pit*, i32, i32)* @create_pit_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_pit_timer(%struct.kvm_pit* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_pit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_kpit_state*, align 8
  %8 = alloca %struct.kvm*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.kvm_pit* %0, %struct.kvm_pit** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.kvm_pit*, %struct.kvm_pit** %4, align 8
  %12 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %11, i32 0, i32 2
  store %struct.kvm_kpit_state* %12, %struct.kvm_kpit_state** %7, align 8
  %13 = load %struct.kvm_pit*, %struct.kvm_pit** %4, align 8
  %14 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %13, i32 0, i32 1
  %15 = load %struct.kvm*, %struct.kvm** %14, align 8
  store %struct.kvm* %15, %struct.kvm** %8, align 8
  %16 = load %struct.kvm*, %struct.kvm** %8, align 8
  %17 = call i32 @ioapic_in_kernel(%struct.kvm* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %7, align 8
  %21 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @KVM_PIT_FLAGS_HPET_LEGACY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19, %3
  br label %78

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @NSEC_PER_SEC, align 4
  %30 = load i32, i32* @KVM_PIT_FREQ, align 4
  %31 = call i64 @mul_u64_u32_div(i32 %28, i32 %29, i32 %30)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %7, align 8
  %35 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %34, i32 0, i32 3
  %36 = call i32 @hrtimer_cancel(i32* %35)
  %37 = load %struct.kvm_pit*, %struct.kvm_pit** %4, align 8
  %38 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %37, i32 0, i32 0
  %39 = call i32 @kthread_flush_work(i32* %38)
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %7, align 8
  %42 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %7, align 8
  %45 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.kvm_pit*, %struct.kvm_pit** %4, align 8
  %47 = call i32 @kvm_pit_reset_reinject(%struct.kvm_pit* %46)
  %48 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %7, align 8
  %49 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %27
  %53 = load i64, i64* @min_timer_period_us, align 8
  %54 = mul nsw i64 %53, 1000
  store i64 %54, i64* %10, align 8
  %55 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %7, align 8
  %56 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %52
  %61 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %7, align 8
  %62 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %63, i64 %64)
  %66 = load i64, i64* %10, align 8
  %67 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %7, align 8
  %68 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %60, %52
  br label %70

70:                                               ; preds = %69, %27
  %71 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %7, align 8
  %72 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %71, i32 0, i32 3
  %73 = call i32 (...) @ktime_get()
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @ktime_add_ns(i32 %73, i64 %74)
  %76 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %77 = call i32 @hrtimer_start(i32* %72, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %70, %26
  ret void
}

declare dso_local i32 @ioapic_in_kernel(%struct.kvm*) #1

declare dso_local i64 @mul_u64_u32_div(i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @kthread_flush_work(i32*) #1

declare dso_local i32 @kvm_pit_reset_reinject(%struct.kvm_pit*) #1

declare dso_local i32 @pr_info_ratelimited(i8*, i64, i64) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

declare dso_local i32 @ktime_add_ns(i32, i64) #1

declare dso_local i32 @ktime_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
