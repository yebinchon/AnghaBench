; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_mmu_hpte.c_kvmppc_mmu_hpte_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_mmu_hpte.c_kvmppc_mmu_hpte_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvmppc_vcpu_book3s = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_mmu_hpte_init(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvmppc_vcpu_book3s*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = call %struct.kvmppc_vcpu_book3s* @to_book3s(%struct.kvm_vcpu* %4)
  store %struct.kvmppc_vcpu_book3s* %5, %struct.kvmppc_vcpu_book3s** %3, align 8
  %6 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %3, align 8
  %7 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %3, align 8
  %10 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ARRAY_SIZE(i32 %11)
  %13 = call i32 @kvmppc_mmu_hpte_init_hash(i32 %8, i32 %12)
  %14 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %3, align 8
  %15 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %3, align 8
  %18 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ARRAY_SIZE(i32 %19)
  %21 = call i32 @kvmppc_mmu_hpte_init_hash(i32 %16, i32 %20)
  %22 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %3, align 8
  %23 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %3, align 8
  %26 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ARRAY_SIZE(i32 %27)
  %29 = call i32 @kvmppc_mmu_hpte_init_hash(i32 %24, i32 %28)
  %30 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %3, align 8
  %31 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %3, align 8
  %34 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ARRAY_SIZE(i32 %35)
  %37 = call i32 @kvmppc_mmu_hpte_init_hash(i32 %32, i32 %36)
  %38 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %3, align 8
  %39 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %38, i32 0, i32 0
  %40 = call i32 @spin_lock_init(i32* %39)
  ret i32 0
}

declare dso_local %struct.kvmppc_vcpu_book3s* @to_book3s(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_mmu_hpte_init_hash(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
