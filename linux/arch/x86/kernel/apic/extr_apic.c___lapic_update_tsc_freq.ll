; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_apic.c___lapic_update_tsc_freq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_apic.c___lapic_update_tsc_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@lapic_events = common dso_local global i32 0, align 4
@X86_FEATURE_TSC_DEADLINE_TIMER = common dso_local global i32 0, align 4
@tsc_khz = common dso_local global i32 0, align 4
@TSC_DIVISOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @__lapic_update_tsc_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__lapic_update_tsc_freq(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.clock_event_device*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call %struct.clock_event_device* @this_cpu_ptr(i32* @lapic_events)
  store %struct.clock_event_device* %4, %struct.clock_event_device** %3, align 8
  %5 = load i32, i32* @X86_FEATURE_TSC_DEADLINE_TIMER, align 4
  %6 = call i32 @this_cpu_has(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %16

9:                                                ; preds = %1
  %10 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %11 = load i32, i32* @tsc_khz, align 4
  %12 = load i32, i32* @TSC_DIVISOR, align 4
  %13 = sdiv i32 1000, %12
  %14 = mul nsw i32 %11, %13
  %15 = call i32 @clockevents_update_freq(%struct.clock_event_device* %10, i32 %14)
  br label %16

16:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.clock_event_device* @this_cpu_ptr(i32*) #1

declare dso_local i32 @this_cpu_has(i32) #1

declare dso_local i32 @clockevents_update_freq(%struct.clock_event_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
