; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_start_apic_timer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_start_apic_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_lapic = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_lapic*)* @start_apic_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_apic_timer(%struct.kvm_lapic* %0) #0 {
  %2 = alloca %struct.kvm_lapic*, align 8
  store %struct.kvm_lapic* %0, %struct.kvm_lapic** %2, align 8
  %3 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %4 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = call i32 @atomic_set(i32* %5, i32 0)
  %7 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %8 = call i64 @apic_lvtt_period(%struct.kvm_lapic* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %12 = call i64 @apic_lvtt_oneshot(%struct.kvm_lapic* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10, %1
  %15 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %16 = call i32 @set_target_expiration(%struct.kvm_lapic* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  br label %22

19:                                               ; preds = %14, %10
  %20 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %21 = call i32 @restart_apic_timer(%struct.kvm_lapic* %20)
  br label %22

22:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @apic_lvtt_period(%struct.kvm_lapic*) #1

declare dso_local i64 @apic_lvtt_oneshot(%struct.kvm_lapic*) #1

declare dso_local i32 @set_target_expiration(%struct.kvm_lapic*) #1

declare dso_local i32 @restart_apic_timer(%struct.kvm_lapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
