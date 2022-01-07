; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_apic_sync_pv_eoi_from_guest.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_apic_sync_pv_eoi_from_guest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_lapic = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvm_lapic*)* @apic_sync_pv_eoi_from_guest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apic_sync_pv_eoi_from_guest(%struct.kvm_vcpu* %0, %struct.kvm_lapic* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_lapic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_lapic* %1, %struct.kvm_lapic** %4, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = call i32 @pv_eoi_enabled(%struct.kvm_vcpu* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %14 = call i32 @pv_eoi_get_pending(%struct.kvm_vcpu* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = call i32 @pv_eoi_clr_pending(%struct.kvm_vcpu* %15)
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %26

20:                                               ; preds = %2
  %21 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %22 = call i32 @apic_set_eoi(%struct.kvm_lapic* %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @trace_kvm_pv_eoi(%struct.kvm_lapic* %23, i32 %24)
  br label %26

26:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pv_eoi_enabled(%struct.kvm_vcpu*) #1

declare dso_local i32 @pv_eoi_get_pending(%struct.kvm_vcpu*) #1

declare dso_local i32 @pv_eoi_clr_pending(%struct.kvm_vcpu*) #1

declare dso_local i32 @apic_set_eoi(%struct.kvm_lapic*) #1

declare dso_local i32 @trace_kvm_pv_eoi(%struct.kvm_lapic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
