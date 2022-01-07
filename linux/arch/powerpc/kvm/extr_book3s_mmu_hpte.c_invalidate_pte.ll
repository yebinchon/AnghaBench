; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_mmu_hpte.c_invalidate_pte.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_mmu_hpte.c_invalidate_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.hpte_cache = type { i32, i32, i32, i32, i32, i32 }
%struct.kvmppc_vcpu_book3s = type { i32, i32 }

@free_pte_rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.hpte_cache*)* @invalidate_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @invalidate_pte(%struct.kvm_vcpu* %0, %struct.hpte_cache* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.hpte_cache*, align 8
  %5 = alloca %struct.kvmppc_vcpu_book3s*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.hpte_cache* %1, %struct.hpte_cache** %4, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = call %struct.kvmppc_vcpu_book3s* @to_book3s(%struct.kvm_vcpu* %6)
  store %struct.kvmppc_vcpu_book3s* %7, %struct.kvmppc_vcpu_book3s** %5, align 8
  %8 = load %struct.hpte_cache*, %struct.hpte_cache** %4, align 8
  %9 = call i32 @trace_kvm_book3s_mmu_invalidate(%struct.hpte_cache* %8)
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = load %struct.hpte_cache*, %struct.hpte_cache** %4, align 8
  %12 = call i32 @kvmppc_mmu_invalidate_pte(%struct.kvm_vcpu* %10, %struct.hpte_cache* %11)
  %13 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %5, align 8
  %14 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.hpte_cache*, %struct.hpte_cache** %4, align 8
  %17 = getelementptr inbounds %struct.hpte_cache, %struct.hpte_cache* %16, i32 0, i32 5
  %18 = call i64 @hlist_unhashed(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %5, align 8
  %22 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  br label %48

24:                                               ; preds = %2
  %25 = load %struct.hpte_cache*, %struct.hpte_cache** %4, align 8
  %26 = getelementptr inbounds %struct.hpte_cache, %struct.hpte_cache* %25, i32 0, i32 5
  %27 = call i32 @hlist_del_init_rcu(i32* %26)
  %28 = load %struct.hpte_cache*, %struct.hpte_cache** %4, align 8
  %29 = getelementptr inbounds %struct.hpte_cache, %struct.hpte_cache* %28, i32 0, i32 4
  %30 = call i32 @hlist_del_init_rcu(i32* %29)
  %31 = load %struct.hpte_cache*, %struct.hpte_cache** %4, align 8
  %32 = getelementptr inbounds %struct.hpte_cache, %struct.hpte_cache* %31, i32 0, i32 3
  %33 = call i32 @hlist_del_init_rcu(i32* %32)
  %34 = load %struct.hpte_cache*, %struct.hpte_cache** %4, align 8
  %35 = getelementptr inbounds %struct.hpte_cache, %struct.hpte_cache* %34, i32 0, i32 2
  %36 = call i32 @hlist_del_init_rcu(i32* %35)
  %37 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %5, align 8
  %38 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 4
  %41 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %5, align 8
  %42 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock(i32* %42)
  %44 = load %struct.hpte_cache*, %struct.hpte_cache** %4, align 8
  %45 = getelementptr inbounds %struct.hpte_cache, %struct.hpte_cache* %44, i32 0, i32 0
  %46 = load i32, i32* @free_pte_rcu, align 4
  %47 = call i32 @call_rcu(i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %24, %20
  ret void
}

declare dso_local %struct.kvmppc_vcpu_book3s* @to_book3s(%struct.kvm_vcpu*) #1

declare dso_local i32 @trace_kvm_book3s_mmu_invalidate(%struct.hpte_cache*) #1

declare dso_local i32 @kvmppc_mmu_invalidate_pte(%struct.kvm_vcpu*, %struct.hpte_cache*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @hlist_unhashed(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @hlist_del_init_rcu(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
