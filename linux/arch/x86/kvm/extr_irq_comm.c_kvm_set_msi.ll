; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_irq_comm.c_kvm_set_msi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_irq_comm.c_kvm_set_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_kernel_irq_routing_entry = type { i32 }
%struct.kvm = type { i32 }
%struct.kvm_lapic_irq = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_set_msi(%struct.kvm_kernel_irq_routing_entry* %0, %struct.kvm* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_kernel_irq_routing_entry*, align 8
  %8 = alloca %struct.kvm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.kvm_lapic_irq, align 4
  store %struct.kvm_kernel_irq_routing_entry* %0, %struct.kvm_kernel_irq_routing_entry** %7, align 8
  store %struct.kvm* %1, %struct.kvm** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.kvm*, %struct.kvm** %8, align 8
  %14 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %7, align 8
  %15 = call i64 @kvm_msi_route_invalid(%struct.kvm* %13, %struct.kvm_kernel_irq_routing_entry* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %30

20:                                               ; preds = %5
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store i32 -1, i32* %6, align 4
  br label %30

24:                                               ; preds = %20
  %25 = load %struct.kvm*, %struct.kvm** %8, align 8
  %26 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %7, align 8
  %27 = call i32 @kvm_set_msi_irq(%struct.kvm* %25, %struct.kvm_kernel_irq_routing_entry* %26, %struct.kvm_lapic_irq* %12)
  %28 = load %struct.kvm*, %struct.kvm** %8, align 8
  %29 = call i32 @kvm_irq_delivery_to_apic(%struct.kvm* %28, i32* null, %struct.kvm_lapic_irq* %12, i32* null)
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %24, %23, %17
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i64 @kvm_msi_route_invalid(%struct.kvm*, %struct.kvm_kernel_irq_routing_entry*) #1

declare dso_local i32 @kvm_set_msi_irq(%struct.kvm*, %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_lapic_irq*) #1

declare dso_local i32 @kvm_irq_delivery_to_apic(%struct.kvm*, i32*, %struct.kvm_lapic_irq*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
