; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu.c_vcpu_mmu_geometry_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu.c_vcpu_mmu_geometry_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.kvm_book3e_206_tlb_params = type { i32*, i32* }

@TLBnCFG_N_ENTRY = common dso_local global i32 0, align 4
@TLBnCFG_ASSOC = common dso_local global i32 0, align 4
@TLBnCFG_ASSOC_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_book3e_206_tlb_params*)* @vcpu_mmu_geometry_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcpu_mmu_geometry_update(%struct.kvm_vcpu* %0, %struct.kvm_book3e_206_tlb_params* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_book3e_206_tlb_params*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_book3e_206_tlb_params* %1, %struct.kvm_book3e_206_tlb_params** %4, align 8
  %5 = load i32, i32* @TLBnCFG_N_ENTRY, align 4
  %6 = load i32, i32* @TLBnCFG_ASSOC, align 4
  %7 = or i32 %5, %6
  %8 = xor i32 %7, -1
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %8
  store i32 %15, i32* %13, align 4
  %16 = load %struct.kvm_book3e_206_tlb_params*, %struct.kvm_book3e_206_tlb_params** %4, align 8
  %17 = getelementptr inbounds %struct.kvm_book3e_206_tlb_params, %struct.kvm_book3e_206_tlb_params* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %20, 2048
  br i1 %21, label %22, label %35

22:                                               ; preds = %2
  %23 = load %struct.kvm_book3e_206_tlb_params*, %struct.kvm_book3e_206_tlb_params** %4, align 8
  %24 = getelementptr inbounds %struct.kvm_book3e_206_tlb_params, %struct.kvm_book3e_206_tlb_params* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %29 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %27
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %22, %2
  %36 = load %struct.kvm_book3e_206_tlb_params*, %struct.kvm_book3e_206_tlb_params** %4, align 8
  %37 = getelementptr inbounds %struct.kvm_book3e_206_tlb_params, %struct.kvm_book3e_206_tlb_params* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @TLBnCFG_ASSOC_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %44 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %42
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @TLBnCFG_N_ENTRY, align 4
  %51 = load i32, i32* @TLBnCFG_ASSOC, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %55 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %53
  store i32 %60, i32* %58, align 4
  %61 = load %struct.kvm_book3e_206_tlb_params*, %struct.kvm_book3e_206_tlb_params** %4, align 8
  %62 = getelementptr inbounds %struct.kvm_book3e_206_tlb_params, %struct.kvm_book3e_206_tlb_params* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %67 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %65
  store i32 %72, i32* %70, align 4
  %73 = load %struct.kvm_book3e_206_tlb_params*, %struct.kvm_book3e_206_tlb_params** %4, align 8
  %74 = getelementptr inbounds %struct.kvm_book3e_206_tlb_params, %struct.kvm_book3e_206_tlb_params* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @TLBnCFG_ASSOC_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %81 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %79
  store i32 %86, i32* %84, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
