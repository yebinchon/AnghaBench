; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_pmu.c_reprogram_fixed_counter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_pmu.c_reprogram_fixed_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (i32)* }
%struct.kvm_pmc = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.kvm* }
%struct.kvm = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.kvm_pmu_event_filter = type { i64, i32 }

@KVM_PMU_EVENT_DENY = common dso_local global i64 0, align 8
@KVM_PMU_EVENT_ALLOW = common dso_local global i64 0, align 8
@PERF_TYPE_HARDWARE = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reprogram_fixed_counter(%struct.kvm_pmc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_pmc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvm_pmu_event_filter*, align 8
  %10 = alloca %struct.kvm*, align 8
  store %struct.kvm_pmc* %0, %struct.kvm_pmc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 3
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 8
  store i32 %14, i32* %8, align 4
  %15 = load %struct.kvm_pmc*, %struct.kvm_pmc** %4, align 8
  %16 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.kvm*, %struct.kvm** %18, align 8
  store %struct.kvm* %19, %struct.kvm** %10, align 8
  %20 = load %struct.kvm_pmc*, %struct.kvm_pmc** %4, align 8
  %21 = call i32 @pmc_stop_counter(%struct.kvm_pmc* %20)
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.kvm_pmc*, %struct.kvm_pmc** %4, align 8
  %26 = call i32 @pmc_is_enabled(%struct.kvm_pmc* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24, %3
  br label %88

29:                                               ; preds = %24
  %30 = load %struct.kvm*, %struct.kvm** %10, align 8
  %31 = getelementptr inbounds %struct.kvm, %struct.kvm* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.kvm*, %struct.kvm** %10, align 8
  %35 = getelementptr inbounds %struct.kvm, %struct.kvm* %34, i32 0, i32 0
  %36 = call %struct.kvm_pmu_event_filter* @srcu_dereference(i32 %33, i32* %35)
  store %struct.kvm_pmu_event_filter* %36, %struct.kvm_pmu_event_filter** %9, align 8
  %37 = load %struct.kvm_pmu_event_filter*, %struct.kvm_pmu_event_filter** %9, align 8
  %38 = icmp ne %struct.kvm_pmu_event_filter* %37, null
  br i1 %38, label %39, label %66

39:                                               ; preds = %29
  %40 = load %struct.kvm_pmu_event_filter*, %struct.kvm_pmu_event_filter** %9, align 8
  %41 = getelementptr inbounds %struct.kvm_pmu_event_filter, %struct.kvm_pmu_event_filter* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @KVM_PMU_EVENT_DENY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.kvm_pmu_event_filter*, %struct.kvm_pmu_event_filter** %9, align 8
  %48 = getelementptr inbounds %struct.kvm_pmu_event_filter, %struct.kvm_pmu_event_filter* %47, i32 0, i32 1
  %49 = call i64 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %88

52:                                               ; preds = %45, %39
  %53 = load %struct.kvm_pmu_event_filter*, %struct.kvm_pmu_event_filter** %9, align 8
  %54 = getelementptr inbounds %struct.kvm_pmu_event_filter, %struct.kvm_pmu_event_filter* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @KVM_PMU_EVENT_ALLOW, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.kvm_pmu_event_filter*, %struct.kvm_pmu_event_filter** %9, align 8
  %61 = getelementptr inbounds %struct.kvm_pmu_event_filter, %struct.kvm_pmu_event_filter* %60, i32 0, i32 1
  %62 = call i64 @test_bit(i32 %59, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  br label %88

65:                                               ; preds = %58, %52
  br label %66

66:                                               ; preds = %65, %29
  %67 = load %struct.kvm_pmc*, %struct.kvm_pmc** %4, align 8
  %68 = load i32, i32* @PERF_TYPE_HARDWARE, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_x86_ops, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32 (i32)*, i32 (i32)** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 %73(i32 %74)
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, 2
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* %7, align 4
  %82 = and i32 %81, 1
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @pmc_reprogram_counter(%struct.kvm_pmc* %67, i32 %68, i32 %75, i32 %80, i32 %85, i32 %86, i32 0, i32 0)
  br label %88

88:                                               ; preds = %66, %64, %51, %28
  ret void
}

declare dso_local i32 @pmc_stop_counter(%struct.kvm_pmc*) #1

declare dso_local i32 @pmc_is_enabled(%struct.kvm_pmc*) #1

declare dso_local %struct.kvm_pmu_event_filter* @srcu_dereference(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @pmc_reprogram_counter(%struct.kvm_pmc*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
