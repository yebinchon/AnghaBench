; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_bts.c___bts_event_start.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_bts.c___bts_event_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bts_ctx = type { i32, i32 }
%struct.bts_buffer = type { i32 }

@bts_ctx = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_INT = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_OS = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_USR = common dso_local global i32 0, align 4
@BTS_STATE_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @__bts_event_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bts_event_start(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.bts_ctx*, align 8
  %4 = alloca %struct.bts_buffer*, align 8
  %5 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %6 = call %struct.bts_ctx* @this_cpu_ptr(i32* @bts_ctx)
  store %struct.bts_ctx* %6, %struct.bts_ctx** %3, align 8
  %7 = load %struct.bts_ctx*, %struct.bts_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %7, i32 0, i32 1
  %9 = call %struct.bts_buffer* @perf_get_aux(i32* %8)
  store %struct.bts_buffer* %9, %struct.bts_buffer** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.bts_buffer*, %struct.bts_buffer** %4, align 8
  %11 = getelementptr inbounds %struct.bts_buffer, %struct.bts_buffer* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ARCH_PERFMON_EVENTSEL_INT, align 4
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %20 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ARCH_PERFMON_EVENTSEL_OS, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %24, %18
  %29 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %30 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ARCH_PERFMON_EVENTSEL_USR, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %34, %28
  %39 = load %struct.bts_buffer*, %struct.bts_buffer** %4, align 8
  %40 = call i32 @bts_config_buffer(%struct.bts_buffer* %39)
  %41 = call i32 (...) @wmb()
  %42 = load %struct.bts_ctx*, %struct.bts_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.bts_ctx, %struct.bts_ctx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @BTS_STATE_ACTIVE, align 4
  %46 = call i32 @WRITE_ONCE(i32 %44, i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @intel_pmu_enable_bts(i32 %47)
  ret void
}

declare dso_local %struct.bts_ctx* @this_cpu_ptr(i32*) #1

declare dso_local %struct.bts_buffer* @perf_get_aux(i32*) #1

declare dso_local i32 @bts_config_buffer(%struct.bts_buffer*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @intel_pmu_enable_bts(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
