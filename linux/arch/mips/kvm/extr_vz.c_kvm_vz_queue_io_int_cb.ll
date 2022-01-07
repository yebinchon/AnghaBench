; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_queue_io_int_cb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_queue_io_int_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_mips_interrupt = type { i64 }

@MIPS_EXC_INT_IO = common dso_local global i32 0, align 4
@MIPS_EXC_INT_IPI_1 = common dso_local global i32 0, align 4
@MIPS_EXC_INT_IPI_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvm_mips_interrupt*)* @kvm_vz_queue_io_int_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_vz_queue_io_int_cb(%struct.kvm_vcpu* %0, %struct.kvm_mips_interrupt* %1) #0 {
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
  switch i32 %10, label %23 [
    i32 2, label %11
    i32 3, label %15
    i32 4, label %19
  ]

11:                                               ; preds = %2
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %13 = load i32, i32* @MIPS_EXC_INT_IO, align 4
  %14 = call i32 @kvm_vz_queue_irq(%struct.kvm_vcpu* %12, i32 %13)
  br label %24

15:                                               ; preds = %2
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = load i32, i32* @MIPS_EXC_INT_IPI_1, align 4
  %18 = call i32 @kvm_vz_queue_irq(%struct.kvm_vcpu* %16, i32 %17)
  br label %24

19:                                               ; preds = %2
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %21 = load i32, i32* @MIPS_EXC_INT_IPI_2, align 4
  %22 = call i32 @kvm_vz_queue_irq(%struct.kvm_vcpu* %20, i32 %21)
  br label %24

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23, %19, %15, %11
  ret void
}

declare dso_local i32 @kvm_vz_queue_irq(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
