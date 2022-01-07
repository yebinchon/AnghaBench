; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_apic_set_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_apic_set_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_lapic* }
%struct.kvm_lapic = type { i32 }
%struct.kvm_lapic_irq = type { i32, i32, i32, i32 }
%struct.dest_map = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_apic_set_irq(%struct.kvm_vcpu* %0, %struct.kvm_lapic_irq* %1, %struct.dest_map* %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_lapic_irq*, align 8
  %6 = alloca %struct.dest_map*, align 8
  %7 = alloca %struct.kvm_lapic*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_lapic_irq* %1, %struct.kvm_lapic_irq** %5, align 8
  store %struct.dest_map* %2, %struct.dest_map** %6, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.kvm_lapic*, %struct.kvm_lapic** %10, align 8
  store %struct.kvm_lapic* %11, %struct.kvm_lapic** %7, align 8
  %12 = load %struct.kvm_lapic*, %struct.kvm_lapic** %7, align 8
  %13 = load %struct.kvm_lapic_irq*, %struct.kvm_lapic_irq** %5, align 8
  %14 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.kvm_lapic_irq*, %struct.kvm_lapic_irq** %5, align 8
  %17 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.kvm_lapic_irq*, %struct.kvm_lapic_irq** %5, align 8
  %20 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.kvm_lapic_irq*, %struct.kvm_lapic_irq** %5, align 8
  %23 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dest_map*, %struct.dest_map** %6, align 8
  %26 = call i32 @__apic_accept_irq(%struct.kvm_lapic* %12, i32 %15, i32 %18, i32 %21, i32 %24, %struct.dest_map* %25)
  ret i32 %26
}

declare dso_local i32 @__apic_accept_irq(%struct.kvm_lapic*, i32, i32, i32, i32, %struct.dest_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
