; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_emulate_tlbie_lpid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_emulate_tlbie_lpid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.kvm* }
%struct.kvm = type { i32 }
%struct.kvm_nested_guest = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvm_nested_guest*, i32)* @kvmhv_emulate_tlbie_lpid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmhv_emulate_tlbie_lpid(%struct.kvm_vcpu* %0, %struct.kvm_nested_guest* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_nested_guest*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_nested_guest* %1, %struct.kvm_nested_guest** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = load %struct.kvm*, %struct.kvm** %9, align 8
  store %struct.kvm* %10, %struct.kvm** %7, align 8
  %11 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %5, align 8
  %12 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %38 [
    i32 0, label %15
    i32 1, label %34
    i32 2, label %35
  ]

15:                                               ; preds = %3
  %16 = load %struct.kvm*, %struct.kvm** %7, align 8
  %17 = getelementptr inbounds %struct.kvm, %struct.kvm* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.kvm*, %struct.kvm** %7, align 8
  %20 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %5, align 8
  %21 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %5, align 8
  %24 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @kvmppc_free_pgtable_radix(%struct.kvm* %19, i32 %22, i32 %25)
  %27 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %5, align 8
  %28 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @kvmhv_flush_lpid(i32 %29)
  %31 = load %struct.kvm*, %struct.kvm** %7, align 8
  %32 = getelementptr inbounds %struct.kvm, %struct.kvm* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  br label %39

34:                                               ; preds = %3
  br label %39

35:                                               ; preds = %3
  %36 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %5, align 8
  %37 = call i32 @kvmhv_flush_nested(%struct.kvm_nested_guest* %36)
  br label %39

38:                                               ; preds = %3
  br label %39

39:                                               ; preds = %38, %35, %34, %15
  %40 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %5, align 8
  %41 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @kvmppc_free_pgtable_radix(%struct.kvm*, i32, i32) #1

declare dso_local i32 @kvmhv_flush_lpid(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kvmhv_flush_nested(%struct.kvm_nested_guest*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
