; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_mpic.c_kvm_set_msi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_mpic.c_kvm_set_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_kernel_irq_routing_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.kvm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.openpic* }
%struct.openpic = type { i32 }

@MSIIR_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_set_msi(%struct.kvm_kernel_irq_routing_entry* %0, %struct.kvm* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.kvm_kernel_irq_routing_entry*, align 8
  %7 = alloca %struct.kvm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.openpic*, align 8
  %12 = alloca i64, align 8
  store %struct.kvm_kernel_irq_routing_entry* %0, %struct.kvm_kernel_irq_routing_entry** %6, align 8
  store %struct.kvm* %1, %struct.kvm** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.kvm*, %struct.kvm** %7, align 8
  %14 = getelementptr inbounds %struct.kvm, %struct.kvm* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.openpic*, %struct.openpic** %15, align 8
  store %struct.openpic* %16, %struct.openpic** %11, align 8
  %17 = load %struct.openpic*, %struct.openpic** %11, align 8
  %18 = getelementptr inbounds %struct.openpic, %struct.openpic* %17, i32 0, i32 0
  %19 = load i64, i64* %12, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.kvm*, %struct.kvm** %7, align 8
  %22 = getelementptr inbounds %struct.kvm, %struct.kvm* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.openpic*, %struct.openpic** %23, align 8
  %25 = load i32, i32* @MSIIR_OFFSET, align 4
  %26 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %6, align 8
  %27 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @openpic_msi_write(%struct.openpic* %24, i32 %25, i32 %29)
  %31 = load %struct.openpic*, %struct.openpic** %11, align 8
  %32 = getelementptr inbounds %struct.openpic, %struct.openpic* %31, i32 0, i32 0
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @openpic_msi_write(%struct.openpic*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
