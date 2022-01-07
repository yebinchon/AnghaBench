; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu.c_kvmppc_mmu_book3s_64_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu.c_kvmppc_mmu_book3s_64_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.kvmppc_mmu }
%struct.kvmppc_mmu = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@kvmppc_mmu_book3s_64_mtsrin = common dso_local global i32 0, align 4
@kvmppc_mmu_book3s_64_slbmte = common dso_local global i32 0, align 4
@kvmppc_mmu_book3s_64_slbmfee = common dso_local global i32 0, align 4
@kvmppc_mmu_book3s_64_slbmfev = common dso_local global i32 0, align 4
@kvmppc_mmu_book3s_64_slbfee = common dso_local global i32 0, align 4
@kvmppc_mmu_book3s_64_slbie = common dso_local global i32 0, align 4
@kvmppc_mmu_book3s_64_slbia = common dso_local global i32 0, align 4
@kvmppc_mmu_book3s_64_xlate = common dso_local global i32 0, align 4
@kvmppc_mmu_book3s_64_reset_msr = common dso_local global i32 0, align 4
@kvmppc_mmu_book3s_64_tlbie = common dso_local global i32 0, align 4
@kvmppc_mmu_book3s_64_esid_to_vsid = common dso_local global i32 0, align 4
@kvmppc_mmu_book3s_64_ea_to_vp = common dso_local global i32 0, align 4
@kvmppc_mmu_book3s_64_is_dcbz32 = common dso_local global i32 0, align 4
@BOOK3S_HFLAG_SLB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_mmu_book3s_64_init(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvmppc_mmu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  store %struct.kvmppc_mmu* %6, %struct.kvmppc_mmu** %3, align 8
  %7 = load %struct.kvmppc_mmu*, %struct.kvmppc_mmu** %3, align 8
  %8 = getelementptr inbounds %struct.kvmppc_mmu, %struct.kvmppc_mmu* %7, i32 0, i32 13
  store i32* null, i32** %8, align 8
  %9 = load i32, i32* @kvmppc_mmu_book3s_64_mtsrin, align 4
  %10 = load %struct.kvmppc_mmu*, %struct.kvmppc_mmu** %3, align 8
  %11 = getelementptr inbounds %struct.kvmppc_mmu, %struct.kvmppc_mmu* %10, i32 0, i32 12
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @kvmppc_mmu_book3s_64_slbmte, align 4
  %13 = load %struct.kvmppc_mmu*, %struct.kvmppc_mmu** %3, align 8
  %14 = getelementptr inbounds %struct.kvmppc_mmu, %struct.kvmppc_mmu* %13, i32 0, i32 11
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @kvmppc_mmu_book3s_64_slbmfee, align 4
  %16 = load %struct.kvmppc_mmu*, %struct.kvmppc_mmu** %3, align 8
  %17 = getelementptr inbounds %struct.kvmppc_mmu, %struct.kvmppc_mmu* %16, i32 0, i32 10
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @kvmppc_mmu_book3s_64_slbmfev, align 4
  %19 = load %struct.kvmppc_mmu*, %struct.kvmppc_mmu** %3, align 8
  %20 = getelementptr inbounds %struct.kvmppc_mmu, %struct.kvmppc_mmu* %19, i32 0, i32 9
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @kvmppc_mmu_book3s_64_slbfee, align 4
  %22 = load %struct.kvmppc_mmu*, %struct.kvmppc_mmu** %3, align 8
  %23 = getelementptr inbounds %struct.kvmppc_mmu, %struct.kvmppc_mmu* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @kvmppc_mmu_book3s_64_slbie, align 4
  %25 = load %struct.kvmppc_mmu*, %struct.kvmppc_mmu** %3, align 8
  %26 = getelementptr inbounds %struct.kvmppc_mmu, %struct.kvmppc_mmu* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @kvmppc_mmu_book3s_64_slbia, align 4
  %28 = load %struct.kvmppc_mmu*, %struct.kvmppc_mmu** %3, align 8
  %29 = getelementptr inbounds %struct.kvmppc_mmu, %struct.kvmppc_mmu* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @kvmppc_mmu_book3s_64_xlate, align 4
  %31 = load %struct.kvmppc_mmu*, %struct.kvmppc_mmu** %3, align 8
  %32 = getelementptr inbounds %struct.kvmppc_mmu, %struct.kvmppc_mmu* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @kvmppc_mmu_book3s_64_reset_msr, align 4
  %34 = load %struct.kvmppc_mmu*, %struct.kvmppc_mmu** %3, align 8
  %35 = getelementptr inbounds %struct.kvmppc_mmu, %struct.kvmppc_mmu* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @kvmppc_mmu_book3s_64_tlbie, align 4
  %37 = load %struct.kvmppc_mmu*, %struct.kvmppc_mmu** %3, align 8
  %38 = getelementptr inbounds %struct.kvmppc_mmu, %struct.kvmppc_mmu* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @kvmppc_mmu_book3s_64_esid_to_vsid, align 4
  %40 = load %struct.kvmppc_mmu*, %struct.kvmppc_mmu** %3, align 8
  %41 = getelementptr inbounds %struct.kvmppc_mmu, %struct.kvmppc_mmu* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @kvmppc_mmu_book3s_64_ea_to_vp, align 4
  %43 = load %struct.kvmppc_mmu*, %struct.kvmppc_mmu** %3, align 8
  %44 = getelementptr inbounds %struct.kvmppc_mmu, %struct.kvmppc_mmu* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @kvmppc_mmu_book3s_64_is_dcbz32, align 4
  %46 = load %struct.kvmppc_mmu*, %struct.kvmppc_mmu** %3, align 8
  %47 = getelementptr inbounds %struct.kvmppc_mmu, %struct.kvmppc_mmu* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @BOOK3S_HFLAG_SLB, align 4
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %50 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %48
  store i32 %53, i32* %51, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
