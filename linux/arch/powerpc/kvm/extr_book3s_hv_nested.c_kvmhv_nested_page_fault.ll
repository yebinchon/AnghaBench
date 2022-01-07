; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_nested_page_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_nested_page_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_run = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_nested_guest* }
%struct.kvm_nested_guest = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kvmhv_nested_page_fault(%struct.kvm_run* %0, %struct.kvm_vcpu* %1) #0 {
  %3 = alloca %struct.kvm_run*, align 8
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_nested_guest*, align 8
  %6 = alloca i64, align 8
  store %struct.kvm_run* %0, %struct.kvm_run** %3, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %4, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %9, align 8
  store %struct.kvm_nested_guest* %10, %struct.kvm_nested_guest** %5, align 8
  %11 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %5, align 8
  %12 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.kvm_run*, %struct.kvm_run** %3, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %16 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %5, align 8
  %17 = call i64 @__kvmhv_nested_page_fault(%struct.kvm_run* %14, %struct.kvm_vcpu* %15, %struct.kvm_nested_guest* %16)
  store i64 %17, i64* %6, align 8
  %18 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %5, align 8
  %19 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = load i64, i64* %6, align 8
  ret i64 %21
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @__kvmhv_nested_page_fault(%struct.kvm_run*, %struct.kvm_vcpu*, %struct.kvm_nested_guest*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
