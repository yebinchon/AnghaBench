; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_time.c_xen_vcpuop_set_next_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_time.c_xen_vcpuop_set_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }
%struct.vcpu_set_singleshot_timer = type { i64, i32 }

@VCPUOP_set_singleshot_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.clock_event_device*)* @xen_vcpuop_set_next_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_vcpuop_set_next_event(i64 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vcpu_set_singleshot_timer, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %8 = call i32 (...) @smp_processor_id()
  store i32 %8, i32* %5, align 4
  %9 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %10 = call i32 @clockevent_state_oneshot(%struct.clock_event_device* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @get_abs_timeout(i64 %15)
  %17 = getelementptr inbounds %struct.vcpu_set_singleshot_timer, %struct.vcpu_set_singleshot_timer* %6, i32 0, i32 1
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.vcpu_set_singleshot_timer, %struct.vcpu_set_singleshot_timer* %6, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @VCPUOP_set_singleshot_timer, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @xen_vcpu_nr(i32 %20)
  %22 = call i32 @HYPERVISOR_vcpu_op(i32 %19, i32 %21, %struct.vcpu_set_singleshot_timer* %6)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load i32, i32* %7, align 4
  ret i32 %27
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @clockevent_state_oneshot(%struct.clock_event_device*) #1

declare dso_local i32 @get_abs_timeout(i64) #1

declare dso_local i32 @HYPERVISOR_vcpu_op(i32, i32, %struct.vcpu_set_singleshot_timer*) #1

declare dso_local i32 @xen_vcpu_nr(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
