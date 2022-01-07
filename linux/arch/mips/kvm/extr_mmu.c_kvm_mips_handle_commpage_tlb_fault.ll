; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mmu.c_kvm_mips_handle_commpage_tlb_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mmu.c_kvm_mips_handle_commpage_tlb_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"No ptep for commpage %lx\0A\00", align 1
@PAGE_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_mips_handle_commpage_tlb_fault(i64 %0, %struct.kvm_vcpu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %5, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32* @kvm_trap_emul_pte_for_gva(%struct.kvm_vcpu* %8, i64 %9)
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @kvm_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %14)
  store i32 -1, i32* %3, align 4
  br label %32

16:                                               ; preds = %2
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @virt_to_phys(i32 %20)
  %22 = call i32 @PFN_DOWN(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @PAGE_SHARED, align 4
  %25 = call i32 @pfn_pte(i32 %23, i32 %24)
  %26 = call i32 @pte_mkdirty(i32 %25)
  %27 = call i32 @pte_mkyoung(i32 %26)
  %28 = load i32*, i32** %7, align 8
  store i32 %27, i32* %28, align 4
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @kvm_mips_host_tlb_inv(%struct.kvm_vcpu* %29, i64 %30, i32 0, i32 1)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %16, %13
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32* @kvm_trap_emul_pte_for_gva(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_err(i8*, i64) #1

declare dso_local i32 @PFN_DOWN(i32) #1

declare dso_local i32 @virt_to_phys(i32) #1

declare dso_local i32 @pte_mkyoung(i32) #1

declare dso_local i32 @pte_mkdirty(i32) #1

declare dso_local i32 @pfn_pte(i32, i32) #1

declare dso_local i32 @kvm_mips_host_tlb_inv(%struct.kvm_vcpu*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
