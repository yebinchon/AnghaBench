; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_stop_scheduling.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_stop_scheduling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_hw_events = type { i32, i64, %struct.intel_excl_cntrs* }
%struct.intel_excl_cntrs = type { i32, %struct.intel_excl_states* }
%struct.intel_excl_states = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_hw_events*)* @intel_stop_scheduling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_stop_scheduling(%struct.cpu_hw_events* %0) #0 {
  %2 = alloca %struct.cpu_hw_events*, align 8
  %3 = alloca %struct.intel_excl_cntrs*, align 8
  %4 = alloca %struct.intel_excl_states*, align 8
  %5 = alloca i32, align 4
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %2, align 8
  %6 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %7 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %6, i32 0, i32 2
  %8 = load %struct.intel_excl_cntrs*, %struct.intel_excl_cntrs** %7, align 8
  store %struct.intel_excl_cntrs* %8, %struct.intel_excl_cntrs** %3, align 8
  %9 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %10 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %13 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = call i32 (...) @is_ht_workaround_enabled()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %1
  br label %40

20:                                               ; preds = %16
  %21 = load %struct.intel_excl_cntrs*, %struct.intel_excl_cntrs** %3, align 8
  %22 = icmp ne %struct.intel_excl_cntrs* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON_ONCE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %40

28:                                               ; preds = %20
  %29 = load %struct.intel_excl_cntrs*, %struct.intel_excl_cntrs** %3, align 8
  %30 = getelementptr inbounds %struct.intel_excl_cntrs, %struct.intel_excl_cntrs* %29, i32 0, i32 1
  %31 = load %struct.intel_excl_states*, %struct.intel_excl_states** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.intel_excl_states, %struct.intel_excl_states* %31, i64 %33
  store %struct.intel_excl_states* %34, %struct.intel_excl_states** %4, align 8
  %35 = load %struct.intel_excl_states*, %struct.intel_excl_states** %4, align 8
  %36 = getelementptr inbounds %struct.intel_excl_states, %struct.intel_excl_states* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  %37 = load %struct.intel_excl_cntrs*, %struct.intel_excl_cntrs** %3, align 8
  %38 = getelementptr inbounds %struct.intel_excl_cntrs, %struct.intel_excl_cntrs* %37, i32 0, i32 0
  %39 = call i32 @raw_spin_unlock(i32* %38)
  br label %40

40:                                               ; preds = %28, %27, %19
  ret void
}

declare dso_local i32 @is_ht_workaround_enabled(...) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
