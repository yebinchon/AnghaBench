; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_put_excl_constraints.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_put_excl_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_hw_events = type { i32, i32, i64, %struct.intel_excl_cntrs* }
%struct.intel_excl_cntrs = type { i32, %struct.intel_excl_states*, i32* }
%struct.intel_excl_states = type { i32, i32* }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i64 }

@PERF_X86_EVENT_EXCL_ACCT = common dso_local global i32 0, align 4
@INTEL_EXCL_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_hw_events*, %struct.perf_event*)* @intel_put_excl_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_put_excl_constraints(%struct.cpu_hw_events* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.cpu_hw_events*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca %struct.intel_excl_cntrs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_excl_states*, align 8
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 0
  store %struct.hw_perf_event* %10, %struct.hw_perf_event** %5, align 8
  %11 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %12 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %11, i32 0, i32 3
  %13 = load %struct.intel_excl_cntrs*, %struct.intel_excl_cntrs** %12, align 8
  store %struct.intel_excl_cntrs* %13, %struct.intel_excl_cntrs** %6, align 8
  %14 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %15 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %18 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %97

22:                                               ; preds = %2
  %23 = load %struct.intel_excl_cntrs*, %struct.intel_excl_cntrs** %6, align 8
  %24 = icmp ne %struct.intel_excl_cntrs* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON_ONCE(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %97

30:                                               ; preds = %22
  %31 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %32 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @PERF_X86_EVENT_EXCL_ACCT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %30
  %38 = load i32, i32* @PERF_X86_EVENT_EXCL_ACCT, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %41 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %45 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %37
  %50 = load %struct.intel_excl_cntrs*, %struct.intel_excl_cntrs** %6, align 8
  %51 = getelementptr inbounds %struct.intel_excl_cntrs, %struct.intel_excl_cntrs* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @WRITE_ONCE(i32 %56, i32 0)
  br label %58

58:                                               ; preds = %49, %37
  br label %59

59:                                               ; preds = %58, %30
  %60 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %61 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp uge i64 %62, 0
  br i1 %63, label %64, label %97

64:                                               ; preds = %59
  %65 = load %struct.intel_excl_cntrs*, %struct.intel_excl_cntrs** %6, align 8
  %66 = getelementptr inbounds %struct.intel_excl_cntrs, %struct.intel_excl_cntrs* %65, i32 0, i32 1
  %67 = load %struct.intel_excl_states*, %struct.intel_excl_states** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.intel_excl_states, %struct.intel_excl_states* %67, i64 %69
  store %struct.intel_excl_states* %70, %struct.intel_excl_states** %8, align 8
  %71 = load %struct.intel_excl_states*, %struct.intel_excl_states** %8, align 8
  %72 = getelementptr inbounds %struct.intel_excl_states, %struct.intel_excl_states* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %64
  %76 = load %struct.intel_excl_cntrs*, %struct.intel_excl_cntrs** %6, align 8
  %77 = getelementptr inbounds %struct.intel_excl_cntrs, %struct.intel_excl_cntrs* %76, i32 0, i32 0
  %78 = call i32 @raw_spin_lock(i32* %77)
  br label %79

79:                                               ; preds = %75, %64
  %80 = load i32, i32* @INTEL_EXCL_UNUSED, align 4
  %81 = load %struct.intel_excl_states*, %struct.intel_excl_states** %8, align 8
  %82 = getelementptr inbounds %struct.intel_excl_states, %struct.intel_excl_states* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %85 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  store i32 %80, i32* %87, align 4
  %88 = load %struct.intel_excl_states*, %struct.intel_excl_states** %8, align 8
  %89 = getelementptr inbounds %struct.intel_excl_states, %struct.intel_excl_states* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %79
  %93 = load %struct.intel_excl_cntrs*, %struct.intel_excl_cntrs** %6, align 8
  %94 = getelementptr inbounds %struct.intel_excl_cntrs, %struct.intel_excl_cntrs* %93, i32 0, i32 0
  %95 = call i32 @raw_spin_unlock(i32* %94)
  br label %96

96:                                               ; preds = %92, %79
  br label %97

97:                                               ; preds = %21, %29, %96, %59
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
