; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_perf_event_mipsxx.c_handle_associated_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_perf_event_mipsxx.c_handle_associated_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_hw_events = type { %struct.perf_event** }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32 }
%struct.perf_sample_data = type { i32 }
%struct.pt_regs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_hw_events*, i32, %struct.perf_sample_data*, %struct.pt_regs*)* @handle_associated_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_associated_event(%struct.cpu_hw_events* %0, i32 %1, %struct.perf_sample_data* %2, %struct.pt_regs* %3) #0 {
  %5 = alloca %struct.cpu_hw_events*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.perf_sample_data*, align 8
  %8 = alloca %struct.pt_regs*, align 8
  %9 = alloca %struct.perf_event*, align 8
  %10 = alloca %struct.hw_perf_event*, align 8
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.perf_sample_data* %2, %struct.perf_sample_data** %7, align 8
  store %struct.pt_regs* %3, %struct.pt_regs** %8, align 8
  %11 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %12 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %11, i32 0, i32 0
  %13 = load %struct.perf_event**, %struct.perf_event*** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %13, i64 %15
  %17 = load %struct.perf_event*, %struct.perf_event** %16, align 8
  store %struct.perf_event* %17, %struct.perf_event** %9, align 8
  %18 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  %19 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %18, i32 0, i32 0
  store %struct.hw_perf_event* %19, %struct.hw_perf_event** %10, align 8
  %20 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  %21 = load %struct.hw_perf_event*, %struct.hw_perf_event** %10, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @mipspmu_event_update(%struct.perf_event* %20, %struct.hw_perf_event* %21, i32 %22)
  %24 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  %25 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.perf_sample_data*, %struct.perf_sample_data** %7, align 8
  %29 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  %31 = load %struct.hw_perf_event*, %struct.hw_perf_event** %10, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @mipspmu_event_set_period(%struct.perf_event* %30, %struct.hw_perf_event* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %4
  br label %45

36:                                               ; preds = %4
  %37 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  %38 = load %struct.perf_sample_data*, %struct.perf_sample_data** %7, align 8
  %39 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %40 = call i64 @perf_event_overflow(%struct.perf_event* %37, %struct.perf_sample_data* %38, %struct.pt_regs* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @mipsxx_pmu_disable_event(i32 %43)
  br label %45

45:                                               ; preds = %35, %42, %36
  ret void
}

declare dso_local i32 @mipspmu_event_update(%struct.perf_event*, %struct.hw_perf_event*, i32) #1

declare dso_local i32 @mipspmu_event_set_period(%struct.perf_event*, %struct.hw_perf_event*, i32) #1

declare dso_local i64 @perf_event_overflow(%struct.perf_event*, %struct.perf_sample_data*, %struct.pt_regs*) #1

declare dso_local i32 @mipsxx_pmu_disable_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
