; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_mmu_hpte.c_kvmppc_mmu_hpte_cache_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_mmu_hpte.c_kvmppc_mmu_hpte_cache_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.hpte_cache = type { i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.kvmppc_vcpu_book3s = type { i32, i32, i32*, i32*, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_mmu_hpte_cache_map(%struct.kvm_vcpu* %0, %struct.hpte_cache* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.hpte_cache*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.kvmppc_vcpu_book3s*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.hpte_cache* %1, %struct.hpte_cache** %4, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = call %struct.kvmppc_vcpu_book3s* @to_book3s(%struct.kvm_vcpu* %7)
  store %struct.kvmppc_vcpu_book3s* %8, %struct.kvmppc_vcpu_book3s** %6, align 8
  %9 = load %struct.hpte_cache*, %struct.hpte_cache** %4, align 8
  %10 = call i32 @trace_kvm_book3s_mmu_map(%struct.hpte_cache* %9)
  %11 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %6, align 8
  %12 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.hpte_cache*, %struct.hpte_cache** %4, align 8
  %15 = getelementptr inbounds %struct.hpte_cache, %struct.hpte_cache* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @kvmppc_mmu_hash_pte(i32 %17)
  store i64 %18, i64* %5, align 8
  %19 = load %struct.hpte_cache*, %struct.hpte_cache** %4, align 8
  %20 = getelementptr inbounds %struct.hpte_cache, %struct.hpte_cache* %19, i32 0, i32 5
  %21 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %6, align 8
  %22 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %21, i32 0, i32 6
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = call i32 @hlist_add_head_rcu(i32* %20, i32* %25)
  %27 = load %struct.hpte_cache*, %struct.hpte_cache** %4, align 8
  %28 = getelementptr inbounds %struct.hpte_cache, %struct.hpte_cache* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @kvmppc_mmu_hash_pte_long(i32 %30)
  store i64 %31, i64* %5, align 8
  %32 = load %struct.hpte_cache*, %struct.hpte_cache** %4, align 8
  %33 = getelementptr inbounds %struct.hpte_cache, %struct.hpte_cache* %32, i32 0, i32 4
  %34 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %6, align 8
  %35 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %34, i32 0, i32 5
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = call i32 @hlist_add_head_rcu(i32* %33, i32* %38)
  %40 = load %struct.hpte_cache*, %struct.hpte_cache** %4, align 8
  %41 = getelementptr inbounds %struct.hpte_cache, %struct.hpte_cache* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @kvmppc_mmu_hash_vpte(i32 %43)
  store i64 %44, i64* %5, align 8
  %45 = load %struct.hpte_cache*, %struct.hpte_cache** %4, align 8
  %46 = getelementptr inbounds %struct.hpte_cache, %struct.hpte_cache* %45, i32 0, i32 3
  %47 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %6, align 8
  %48 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = call i32 @hlist_add_head_rcu(i32* %46, i32* %51)
  %53 = load %struct.hpte_cache*, %struct.hpte_cache** %4, align 8
  %54 = getelementptr inbounds %struct.hpte_cache, %struct.hpte_cache* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @kvmppc_mmu_hash_vpte_long(i32 %56)
  store i64 %57, i64* %5, align 8
  %58 = load %struct.hpte_cache*, %struct.hpte_cache** %4, align 8
  %59 = getelementptr inbounds %struct.hpte_cache, %struct.hpte_cache* %58, i32 0, i32 2
  %60 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %6, align 8
  %61 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = call i32 @hlist_add_head_rcu(i32* %59, i32* %64)
  %66 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %6, align 8
  %67 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %6, align 8
  %71 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock(i32* %71)
  ret void
}

declare dso_local %struct.kvmppc_vcpu_book3s* @to_book3s(%struct.kvm_vcpu*) #1

declare dso_local i32 @trace_kvm_book3s_mmu_map(%struct.hpte_cache*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @kvmppc_mmu_hash_pte(i32) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i64 @kvmppc_mmu_hash_pte_long(i32) #1

declare dso_local i64 @kvmppc_mmu_hash_vpte(i32) #1

declare dso_local i64 @kvmppc_mmu_hash_vpte_long(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
