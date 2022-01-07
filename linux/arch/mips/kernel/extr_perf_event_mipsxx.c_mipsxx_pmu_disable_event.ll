; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_perf_event_mipsxx.c_mipsxx_pmu_disable_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_perf_event_mipsxx.c_mipsxx_pmu_disable_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cpu_hw_events = type { i32* }

@cpu_hw_events = common dso_local global i32 0, align 4
@mipspmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@M_PERFCTL_COUNT_EVENT_WHENEVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mipsxx_pmu_disable_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mipsxx_pmu_disable_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpu_hw_events*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %5, %struct.cpu_hw_events** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mipspmu, i32 0, i32 0), align 4
  %11 = icmp sge i32 %9, %10
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i1 [ true, %1 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @local_irq_save(i64 %16)
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @mipsxx_pmu_read_control(i32 %18)
  %20 = load i32, i32* @M_PERFCTL_COUNT_EVENT_WHENEVER, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %24 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %22, i32* %28, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %31 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mipsxx_pmu_write_control(i32 %29, i32 %36)
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @local_irq_restore(i64 %38)
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @mipsxx_pmu_read_control(i32) #1

declare dso_local i32 @mipsxx_pmu_write_control(i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
