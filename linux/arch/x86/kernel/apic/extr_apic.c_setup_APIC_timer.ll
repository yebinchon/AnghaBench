; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_apic.c_setup_APIC_timer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_apic.c_setup_APIC_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.clock_event_device = type { i8*, i32, i32, i32 }

@lapic_events = common dso_local global i32 0, align 4
@X86_FEATURE_ARAT = common dso_local global i32 0, align 4
@CLOCK_EVT_FEAT_C3STOP = common dso_local global i32 0, align 4
@lapic_clockevent = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@X86_FEATURE_TSC_DEADLINE_TIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"lapic-deadline\00", align 1
@CLOCK_EVT_FEAT_PERIODIC = common dso_local global i32 0, align 4
@CLOCK_EVT_FEAT_DUMMY = common dso_local global i32 0, align 4
@lapic_next_deadline = common dso_local global i32 0, align 4
@tsc_khz = common dso_local global i32 0, align 4
@TSC_DIVISOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_APIC_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_APIC_timer() #0 {
  %1 = alloca %struct.clock_event_device*, align 8
  %2 = call %struct.clock_event_device* @this_cpu_ptr(i32* @lapic_events)
  store %struct.clock_event_device* %2, %struct.clock_event_device** %1, align 8
  %3 = load i32, i32* @X86_FEATURE_ARAT, align 4
  %4 = call i64 @this_cpu_has(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load i32, i32* @CLOCK_EVT_FEAT_C3STOP, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lapic_clockevent, i32 0, i32 1), align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lapic_clockevent, i32 0, i32 1), align 4
  store i32 150, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lapic_clockevent, i32 0, i32 0), align 4
  br label %11

11:                                               ; preds = %6, %0
  %12 = load %struct.clock_event_device*, %struct.clock_event_device** %1, align 8
  %13 = call i32 @memcpy(%struct.clock_event_device* %12, %struct.TYPE_3__* @lapic_clockevent, i32 24)
  %14 = call i32 (...) @smp_processor_id()
  %15 = call i32 @cpumask_of(i32 %14)
  %16 = load %struct.clock_event_device*, %struct.clock_event_device** %1, align 8
  %17 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @X86_FEATURE_TSC_DEADLINE_TIMER, align 4
  %19 = call i64 @this_cpu_has(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %11
  %22 = load %struct.clock_event_device*, %struct.clock_event_device** %1, align 8
  %23 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %23, align 8
  %24 = load i32, i32* @CLOCK_EVT_FEAT_PERIODIC, align 4
  %25 = load i32, i32* @CLOCK_EVT_FEAT_DUMMY, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load %struct.clock_event_device*, %struct.clock_event_device** %1, align 8
  %29 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load i32, i32* @lapic_next_deadline, align 4
  %33 = load %struct.clock_event_device*, %struct.clock_event_device** %1, align 8
  %34 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.clock_event_device*, %struct.clock_event_device** %1, align 8
  %36 = load i32, i32* @tsc_khz, align 4
  %37 = load i32, i32* @TSC_DIVISOR, align 4
  %38 = sdiv i32 1000, %37
  %39 = mul nsw i32 %36, %38
  %40 = call i32 @clockevents_config_and_register(%struct.clock_event_device* %35, i32 %39, i32 15, i64 -1)
  br label %44

41:                                               ; preds = %11
  %42 = load %struct.clock_event_device*, %struct.clock_event_device** %1, align 8
  %43 = call i32 @clockevents_register_device(%struct.clock_event_device* %42)
  br label %44

44:                                               ; preds = %41, %21
  ret void
}

declare dso_local %struct.clock_event_device* @this_cpu_ptr(i32*) #1

declare dso_local i64 @this_cpu_has(i32) #1

declare dso_local i32 @memcpy(%struct.clock_event_device*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @clockevents_config_and_register(%struct.clock_event_device*, i32, i32, i64) #1

declare dso_local i32 @clockevents_register_device(%struct.clock_event_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
