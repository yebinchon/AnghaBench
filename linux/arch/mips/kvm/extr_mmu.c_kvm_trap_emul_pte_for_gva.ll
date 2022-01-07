; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mmu.c_kvm_trap_emul_pte_for_gva.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mmu.c_kvm_trap_emul_pte_for_gva.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.kvm_mmu_memory_cache }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32* }
%struct.kvm_mmu_memory_cache = type { i32 }

@KVM_MMU_CACHE_MIN_PAGES = common dso_local global i32 0, align 4
@KVM_NR_MEM_OBJS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.kvm_vcpu*, i64)* @kvm_trap_emul_pte_for_gva to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @kvm_trap_emul_pte_for_gva(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.kvm_mmu_memory_cache*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  store %struct.kvm_mmu_memory_cache* %11, %struct.kvm_mmu_memory_cache** %6, align 8
  %12 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %6, align 8
  %13 = load i32, i32* @KVM_MMU_CACHE_MIN_PAGES, align 4
  %14 = load i32, i32* @KVM_NR_MEM_OBJS, align 4
  %15 = call i32 @mmu_topup_memory_cache(%struct.kvm_mmu_memory_cache* %12, i32 %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %40

19:                                               ; preds = %2
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %21 = call i64 @KVM_GUEST_KERNEL_MODE(%struct.kvm_vcpu* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %25 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %7, align 8
  br label %35

29:                                               ; preds = %19
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %7, align 8
  br label %35

35:                                               ; preds = %29, %23
  %36 = load i32*, i32** %7, align 8
  %37 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %6, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32* @kvm_mips_walk_pgd(i32* %36, %struct.kvm_mmu_memory_cache* %37, i64 %38)
  store i32* %39, i32** %3, align 8
  br label %40

40:                                               ; preds = %35, %18
  %41 = load i32*, i32** %3, align 8
  ret i32* %41
}

declare dso_local i32 @mmu_topup_memory_cache(%struct.kvm_mmu_memory_cache*, i32, i32) #1

declare dso_local i64 @KVM_GUEST_KERNEL_MODE(%struct.kvm_vcpu*) #1

declare dso_local i32* @kvm_mips_walk_pgd(i32*, %struct.kvm_mmu_memory_cache*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
