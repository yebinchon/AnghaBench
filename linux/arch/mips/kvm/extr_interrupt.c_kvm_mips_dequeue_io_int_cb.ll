; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_interrupt.c_kvm_mips_dequeue_io_int_cb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_interrupt.c_kvm_mips_dequeue_io_int_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kvm_mips_interrupt = type { i64 }

@C_IRQ0 = common dso_local global i32 0, align 4
@MIPS_EXC_INT_IO = common dso_local global i32 0, align 4
@C_IRQ1 = common dso_local global i32 0, align 4
@MIPS_EXC_INT_IPI_1 = common dso_local global i32 0, align 4
@C_IRQ2 = common dso_local global i32 0, align 4
@MIPS_EXC_INT_IPI_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_mips_dequeue_io_int_cb(%struct.kvm_vcpu* %0, %struct.kvm_mips_interrupt* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_mips_interrupt*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_mips_interrupt* %1, %struct.kvm_mips_interrupt** %4, align 8
  %6 = load %struct.kvm_mips_interrupt*, %struct.kvm_mips_interrupt** %4, align 8
  %7 = getelementptr inbounds %struct.kvm_mips_interrupt, %struct.kvm_mips_interrupt* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %41 [
    i32 -2, label %11
    i32 -3, label %21
    i32 -4, label %31
  ]

11:                                               ; preds = %2
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @C_IRQ0, align 4
  %17 = call i32 @kvm_clear_c0_guest_cause(i32 %15, i32 %16)
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %19 = load i32, i32* @MIPS_EXC_INT_IO, align 4
  %20 = call i32 @kvm_mips_dequeue_irq(%struct.kvm_vcpu* %18, i32 %19)
  br label %42

21:                                               ; preds = %2
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @C_IRQ1, align 4
  %27 = call i32 @kvm_clear_c0_guest_cause(i32 %25, i32 %26)
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %29 = load i32, i32* @MIPS_EXC_INT_IPI_1, align 4
  %30 = call i32 @kvm_mips_dequeue_irq(%struct.kvm_vcpu* %28, i32 %29)
  br label %42

31:                                               ; preds = %2
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %33 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @C_IRQ2, align 4
  %37 = call i32 @kvm_clear_c0_guest_cause(i32 %35, i32 %36)
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %39 = load i32, i32* @MIPS_EXC_INT_IPI_2, align 4
  %40 = call i32 @kvm_mips_dequeue_irq(%struct.kvm_vcpu* %38, i32 %39)
  br label %42

41:                                               ; preds = %2
  br label %42

42:                                               ; preds = %41, %31, %21, %11
  ret void
}

declare dso_local i32 @kvm_clear_c0_guest_cause(i32, i32) #1

declare dso_local i32 @kvm_mips_dequeue_irq(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
