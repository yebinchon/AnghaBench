; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_apic_set_eoi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_apic_set_eoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_lapic = type { i32 }
%struct.TYPE_2__ = type { i32 }

@KVM_REQ_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_lapic*)* @apic_set_eoi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apic_set_eoi(%struct.kvm_lapic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_lapic*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm_lapic* %0, %struct.kvm_lapic** %3, align 8
  %5 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %6 = call i32 @apic_find_highest_isr(%struct.kvm_lapic* %5)
  store i32 %6, i32* %4, align 4
  %7 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @trace_kvm_eoi(%struct.kvm_lapic* %7, i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %45

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %17 = call i32 @apic_clear_isr(i32 %15, %struct.kvm_lapic* %16)
  %18 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %19 = call i32 @apic_update_ppr(%struct.kvm_lapic* %18)
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %22 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_2__* @vcpu_to_synic(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @test_bit(i32 %20, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %14
  %30 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %31 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @kvm_hv_synic_send_eoi(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %14
  %36 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @kvm_ioapic_send_eoi(%struct.kvm_lapic* %36, i32 %37)
  %39 = load i32, i32* @KVM_REQ_EVENT, align 4
  %40 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %41 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @kvm_make_request(i32 %39, i32 %42)
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %35, %12
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @apic_find_highest_isr(%struct.kvm_lapic*) #1

declare dso_local i32 @trace_kvm_eoi(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @apic_clear_isr(i32, %struct.kvm_lapic*) #1

declare dso_local i32 @apic_update_ppr(%struct.kvm_lapic*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local %struct.TYPE_2__* @vcpu_to_synic(i32) #1

declare dso_local i32 @kvm_hv_synic_send_eoi(i32, i32) #1

declare dso_local i32 @kvm_ioapic_send_eoi(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @kvm_make_request(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
