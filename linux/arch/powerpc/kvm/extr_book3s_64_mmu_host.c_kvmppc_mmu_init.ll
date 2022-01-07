; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_host.c_kvmppc_mmu_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_host.c_kvmppc_mmu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvmppc_vcpu_book3s = type { i32*, i32, i32, i32 }

@ESID_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_mmu_init(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvmppc_vcpu_book3s*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = call %struct.kvmppc_vcpu_book3s* @to_book3s(%struct.kvm_vcpu* %6)
  store %struct.kvmppc_vcpu_book3s* %7, %struct.kvmppc_vcpu_book3s** %4, align 8
  %8 = call i32 (...) @hash__alloc_context_id()
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %45

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %4, align 8
  %15 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %13, i32* %17, align 4
  %18 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %4, align 8
  %19 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  %24 = load i32, i32* @ESID_BITS, align 4
  %25 = shl i32 %23, %24
  %26 = sub nsw i32 %25, 1
  %27 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %4, align 8
  %28 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %4, align 8
  %30 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ESID_BITS, align 4
  %35 = shl i32 %33, %34
  %36 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %4, align 8
  %37 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %4, align 8
  %39 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %4, align 8
  %42 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %44 = call i32 @kvmppc_mmu_hpte_init(%struct.kvm_vcpu* %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %12, %11
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.kvmppc_vcpu_book3s* @to_book3s(%struct.kvm_vcpu*) #1

declare dso_local i32 @hash__alloc_context_id(...) #1

declare dso_local i32 @kvmppc_mmu_hpte_init(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
