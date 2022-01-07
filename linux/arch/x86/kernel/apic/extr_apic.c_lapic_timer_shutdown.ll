; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_apic.c_lapic_timer_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_apic.c_lapic_timer_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@CLOCK_EVT_FEAT_DUMMY = common dso_local global i32 0, align 4
@APIC_LVTT = common dso_local global i32 0, align 4
@APIC_LVT_MASKED = common dso_local global i32 0, align 4
@LOCAL_TIMER_VECTOR = common dso_local global i32 0, align 4
@APIC_TMICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clock_event_device*)* @lapic_timer_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lapic_timer_shutdown(%struct.clock_event_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clock_event_device*, align 8
  %4 = alloca i32, align 4
  store %struct.clock_event_device* %0, %struct.clock_event_device** %3, align 8
  %5 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %6 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @CLOCK_EVT_FEAT_DUMMY, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

12:                                               ; preds = %1
  %13 = load i32, i32* @APIC_LVTT, align 4
  %14 = call i32 @apic_read(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @APIC_LVT_MASKED, align 4
  %16 = load i32, i32* @LOCAL_TIMER_VECTOR, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @APIC_LVTT, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @apic_write(i32 %20, i32 %21)
  %23 = load i32, i32* @APIC_TMICT, align 4
  %24 = call i32 @apic_write(i32 %23, i32 0)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %12, %11
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @apic_read(i32) #1

declare dso_local i32 @apic_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
