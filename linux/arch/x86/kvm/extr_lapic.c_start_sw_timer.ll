; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_start_sw_timer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_start_sw_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_lapic = type { %struct.TYPE_2__*, %struct.kvm_timer }
%struct.TYPE_2__ = type { i32 }
%struct.kvm_timer = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_lapic*)* @start_sw_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_sw_timer(%struct.kvm_lapic* %0) #0 {
  %2 = alloca %struct.kvm_lapic*, align 8
  %3 = alloca %struct.kvm_timer*, align 8
  store %struct.kvm_lapic* %0, %struct.kvm_lapic** %2, align 8
  %4 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %5 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %4, i32 0, i32 1
  store %struct.kvm_timer* %5, %struct.kvm_timer** %3, align 8
  %6 = call i32 (...) @preemptible()
  %7 = call i32 @WARN_ON(i32 %6)
  %8 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %9 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.kvm_timer, %struct.kvm_timer* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %15 = call i32 @cancel_hv_timer(%struct.kvm_lapic* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %18 = call i64 @apic_lvtt_period(%struct.kvm_lapic* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = load %struct.kvm_timer*, %struct.kvm_timer** %3, align 8
  %22 = getelementptr inbounds %struct.kvm_timer, %struct.kvm_timer* %21, i32 0, i32 0
  %23 = call i64 @atomic_read(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %52

26:                                               ; preds = %20, %16
  %27 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %28 = call i64 @apic_lvtt_period(%struct.kvm_lapic* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %32 = call i64 @apic_lvtt_oneshot(%struct.kvm_lapic* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30, %26
  %35 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %36 = call i32 @start_sw_period(%struct.kvm_lapic* %35)
  br label %45

37:                                               ; preds = %30
  %38 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %39 = call i64 @apic_lvtt_tscdeadline(%struct.kvm_lapic* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %43 = call i32 @start_sw_tscdeadline(%struct.kvm_lapic* %42)
  br label %44

44:                                               ; preds = %41, %37
  br label %45

45:                                               ; preds = %44, %34
  %46 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %47 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @trace_kvm_hv_timer_state(i32 %50, i32 0)
  br label %52

52:                                               ; preds = %45, %25
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @preemptible(...) #1

declare dso_local i32 @cancel_hv_timer(%struct.kvm_lapic*) #1

declare dso_local i64 @apic_lvtt_period(%struct.kvm_lapic*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @apic_lvtt_oneshot(%struct.kvm_lapic*) #1

declare dso_local i32 @start_sw_period(%struct.kvm_lapic*) #1

declare dso_local i64 @apic_lvtt_tscdeadline(%struct.kvm_lapic*) #1

declare dso_local i32 @start_sw_tscdeadline(%struct.kvm_lapic*) #1

declare dso_local i32 @trace_kvm_hv_timer_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
