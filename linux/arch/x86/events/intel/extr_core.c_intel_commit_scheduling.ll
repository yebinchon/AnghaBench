; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_commit_scheduling.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_commit_scheduling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_hw_events = type { i32, i64, %struct.event_constraint**, %struct.intel_excl_cntrs* }
%struct.event_constraint = type { i32 }
%struct.intel_excl_cntrs = type { i32, %struct.intel_excl_states* }
%struct.intel_excl_states = type { i32* }

@PERF_X86_EVENT_DYNAMIC = common dso_local global i32 0, align 4
@PERF_X86_EVENT_EXCL = common dso_local global i32 0, align 4
@INTEL_EXCL_EXCLUSIVE = common dso_local global i32 0, align 4
@INTEL_EXCL_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_hw_events*, i32, i32)* @intel_commit_scheduling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_commit_scheduling(%struct.cpu_hw_events* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cpu_hw_events*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_excl_cntrs*, align 8
  %8 = alloca %struct.event_constraint*, align 8
  %9 = alloca %struct.intel_excl_states*, align 8
  %10 = alloca i32, align 4
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %12 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %11, i32 0, i32 3
  %13 = load %struct.intel_excl_cntrs*, %struct.intel_excl_cntrs** %12, align 8
  store %struct.intel_excl_cntrs* %13, %struct.intel_excl_cntrs** %7, align 8
  %14 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %15 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %14, i32 0, i32 2
  %16 = load %struct.event_constraint**, %struct.event_constraint*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.event_constraint*, %struct.event_constraint** %16, i64 %18
  %20 = load %struct.event_constraint*, %struct.event_constraint** %19, align 8
  store %struct.event_constraint* %20, %struct.event_constraint** %8, align 8
  %21 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %22 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  %24 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %25 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = call i32 (...) @is_ht_workaround_enabled()
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28, %3
  br label %80

32:                                               ; preds = %28
  %33 = load %struct.intel_excl_cntrs*, %struct.intel_excl_cntrs** %7, align 8
  %34 = icmp ne %struct.intel_excl_cntrs* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @WARN_ON_ONCE(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %80

40:                                               ; preds = %32
  %41 = load %struct.event_constraint*, %struct.event_constraint** %8, align 8
  %42 = getelementptr inbounds %struct.event_constraint, %struct.event_constraint* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PERF_X86_EVENT_DYNAMIC, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  br label %80

48:                                               ; preds = %40
  %49 = load %struct.intel_excl_cntrs*, %struct.intel_excl_cntrs** %7, align 8
  %50 = getelementptr inbounds %struct.intel_excl_cntrs, %struct.intel_excl_cntrs* %49, i32 0, i32 1
  %51 = load %struct.intel_excl_states*, %struct.intel_excl_states** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.intel_excl_states, %struct.intel_excl_states* %51, i64 %53
  store %struct.intel_excl_states* %54, %struct.intel_excl_states** %9, align 8
  %55 = load %struct.intel_excl_cntrs*, %struct.intel_excl_cntrs** %7, align 8
  %56 = getelementptr inbounds %struct.intel_excl_cntrs, %struct.intel_excl_cntrs* %55, i32 0, i32 0
  %57 = call i32 @lockdep_assert_held(i32* %56)
  %58 = load %struct.event_constraint*, %struct.event_constraint** %8, align 8
  %59 = getelementptr inbounds %struct.event_constraint, %struct.event_constraint* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @PERF_X86_EVENT_EXCL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %48
  %65 = load i32, i32* @INTEL_EXCL_EXCLUSIVE, align 4
  %66 = load %struct.intel_excl_states*, %struct.intel_excl_states** %9, align 8
  %67 = getelementptr inbounds %struct.intel_excl_states, %struct.intel_excl_states* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %65, i32* %71, align 4
  br label %80

72:                                               ; preds = %48
  %73 = load i32, i32* @INTEL_EXCL_SHARED, align 4
  %74 = load %struct.intel_excl_states*, %struct.intel_excl_states** %9, align 8
  %75 = getelementptr inbounds %struct.intel_excl_states, %struct.intel_excl_states* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %73, i32* %79, align 4
  br label %80

80:                                               ; preds = %31, %39, %47, %72, %64
  ret void
}

declare dso_local i32 @is_ht_workaround_enabled(...) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
