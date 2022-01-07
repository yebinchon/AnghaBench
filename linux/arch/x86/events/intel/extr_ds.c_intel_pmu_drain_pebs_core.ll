; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_intel_pmu_drain_pebs_core.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_intel_pmu_drain_pebs_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.pt_regs = type { i32 }
%struct.cpu_hw_events = type { i32, %struct.perf_event**, %struct.debug_store* }
%struct.perf_event = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.debug_store = type { i64, i64 }
%struct.pebs_record_core = type { i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@PERF_X86_EVENT_AUTO_RELOAD = common dso_local global i32 0, align 4
@setup_pebs_fixed_sample_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*)* @intel_pmu_drain_pebs_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pmu_drain_pebs_core(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca %struct.cpu_hw_events*, align 8
  %4 = alloca %struct.debug_store*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.pebs_record_core*, align 8
  %7 = alloca %struct.pebs_record_core*, align 8
  %8 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %9 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %9, %struct.cpu_hw_events** %3, align 8
  %10 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %11 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %10, i32 0, i32 2
  %12 = load %struct.debug_store*, %struct.debug_store** %11, align 8
  store %struct.debug_store* %12, %struct.debug_store** %4, align 8
  %13 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %14 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %13, i32 0, i32 1
  %15 = load %struct.perf_event**, %struct.perf_event*** %14, align 8
  %16 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %15, i64 0
  %17 = load %struct.perf_event*, %struct.perf_event** %16, align 8
  store %struct.perf_event* %17, %struct.perf_event** %5, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @x86_pmu, i32 0, i32 0), align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %83

21:                                               ; preds = %1
  %22 = load %struct.debug_store*, %struct.debug_store** %4, align 8
  %23 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.pebs_record_core*
  store %struct.pebs_record_core* %25, %struct.pebs_record_core** %6, align 8
  %26 = load %struct.debug_store*, %struct.debug_store** %4, align 8
  %27 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.pebs_record_core*
  store %struct.pebs_record_core* %29, %struct.pebs_record_core** %7, align 8
  %30 = load %struct.debug_store*, %struct.debug_store** %4, align 8
  %31 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.debug_store*, %struct.debug_store** %4, align 8
  %34 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %36 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @test_bit(i32 0, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %21
  br label %83

41:                                               ; preds = %21
  %42 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %43 = icmp ne %struct.perf_event* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @WARN_ON_ONCE(i32 %45)
  %47 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %48 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %41
  br label %83

53:                                               ; preds = %41
  %54 = load %struct.pebs_record_core*, %struct.pebs_record_core** %7, align 8
  %55 = load %struct.pebs_record_core*, %struct.pebs_record_core** %6, align 8
  %56 = ptrtoint %struct.pebs_record_core* %54 to i64
  %57 = ptrtoint %struct.pebs_record_core* %55 to i64
  %58 = sub i64 %56, %57
  %59 = sdiv exact i64 %58, 4
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp sle i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %53
  %64 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %65 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PERF_X86_EVENT_AUTO_RELOAD, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %73 = call i32 @intel_pmu_save_and_restart_reload(%struct.perf_event* %72, i32 0)
  br label %74

74:                                               ; preds = %71, %63
  br label %83

75:                                               ; preds = %53
  %76 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %77 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %78 = load %struct.pebs_record_core*, %struct.pebs_record_core** %6, align 8
  %79 = load %struct.pebs_record_core*, %struct.pebs_record_core** %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @setup_pebs_fixed_sample_data, align 4
  %82 = call i32 @__intel_pmu_pebs_event(%struct.perf_event* %76, %struct.pt_regs* %77, %struct.pebs_record_core* %78, %struct.pebs_record_core* %79, i32 0, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %75, %74, %52, %40, %20
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @intel_pmu_save_and_restart_reload(%struct.perf_event*, i32) #1

declare dso_local i32 @__intel_pmu_pebs_event(%struct.perf_event*, %struct.pt_regs*, %struct.pebs_record_core*, %struct.pebs_record_core*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
