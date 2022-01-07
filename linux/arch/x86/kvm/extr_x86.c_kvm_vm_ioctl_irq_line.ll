; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vm_ioctl_irq_line.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vm_ioctl_irq_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_irq_level = type { i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@KVM_USERSPACE_IRQ_SOURCE_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_vm_ioctl_irq_line(%struct.kvm* %0, %struct.kvm_irq_level* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca %struct.kvm_irq_level*, align 8
  %7 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store %struct.kvm_irq_level* %1, %struct.kvm_irq_level** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.kvm*, %struct.kvm** %5, align 8
  %9 = call i32 @irqchip_in_kernel(%struct.kvm* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @ENXIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %27

14:                                               ; preds = %3
  %15 = load %struct.kvm*, %struct.kvm** %5, align 8
  %16 = load i32, i32* @KVM_USERSPACE_IRQ_SOURCE_ID, align 4
  %17 = load %struct.kvm_irq_level*, %struct.kvm_irq_level** %6, align 8
  %18 = getelementptr inbounds %struct.kvm_irq_level, %struct.kvm_irq_level* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.kvm_irq_level*, %struct.kvm_irq_level** %6, align 8
  %21 = getelementptr inbounds %struct.kvm_irq_level, %struct.kvm_irq_level* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @kvm_set_irq(%struct.kvm* %15, i32 %16, i32 %19, i32 %22, i32 %23)
  %25 = load %struct.kvm_irq_level*, %struct.kvm_irq_level** %6, align 8
  %26 = getelementptr inbounds %struct.kvm_irq_level, %struct.kvm_irq_level* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %14, %11
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @irqchip_in_kernel(%struct.kvm*) #1

declare dso_local i32 @kvm_set_irq(%struct.kvm*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
