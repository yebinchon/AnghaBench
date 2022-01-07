; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s.c_kvmppc_core_queue_data_storage.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s.c_kvmppc_core_queue_data_storage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@BOOK3S_INTERRUPT_DATA_STORAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_core_queue_data_storage(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @kvmppc_set_dar(%struct.kvm_vcpu* %7, i32 %8)
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @kvmppc_set_dsisr(%struct.kvm_vcpu* %10, i32 %11)
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %14 = load i32, i32* @BOOK3S_INTERRUPT_DATA_STORAGE, align 4
  %15 = call i32 @kvmppc_inject_interrupt(%struct.kvm_vcpu* %13, i32 %14, i32 0)
  ret void
}

declare dso_local i32 @kvmppc_set_dar(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_set_dsisr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_inject_interrupt(%struct.kvm_vcpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
