; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_start_sw_period.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_start_sw_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_lapic = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_lapic*)* @start_sw_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_sw_period(%struct.kvm_lapic* %0) #0 {
  %2 = alloca %struct.kvm_lapic*, align 8
  store %struct.kvm_lapic* %0, %struct.kvm_lapic** %2, align 8
  %3 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %4 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %37

9:                                                ; preds = %1
  %10 = call i32 (...) @ktime_get()
  %11 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %12 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @ktime_after(i32 %10, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %9
  %18 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %19 = call i32 @apic_timer_expired(%struct.kvm_lapic* %18)
  %20 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %21 = call i64 @apic_lvtt_oneshot(%struct.kvm_lapic* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %37

24:                                               ; preds = %17
  %25 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %26 = call i32 @advance_periodic_target_expiration(%struct.kvm_lapic* %25)
  br label %27

27:                                               ; preds = %24, %9
  %28 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %29 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %32 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %36 = call i32 @hrtimer_start(i32* %30, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %27, %23, %8
  ret void
}

declare dso_local i64 @ktime_after(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @apic_timer_expired(%struct.kvm_lapic*) #1

declare dso_local i64 @apic_lvtt_oneshot(%struct.kvm_lapic*) #1

declare dso_local i32 @advance_periodic_target_expiration(%struct.kvm_lapic*) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
