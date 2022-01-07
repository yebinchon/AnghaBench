; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu_host.c_kvmppc_e500_ref_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu_host.c_kvmppc_e500_ref_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlbe_ref = type { i32, i32 }
%struct.kvm_book3e_206_tlb_entry = type { i32 }

@E500_TLB_VALID = common dso_local global i32 0, align 4
@MAS2_ATTRIB_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tlbe_ref*, %struct.kvm_book3e_206_tlb_entry*, i32, i32)* @kvmppc_e500_ref_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_e500_ref_setup(%struct.tlbe_ref* %0, %struct.kvm_book3e_206_tlb_entry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tlbe_ref*, align 8
  %6 = alloca %struct.kvm_book3e_206_tlb_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tlbe_ref* %0, %struct.tlbe_ref** %5, align 8
  store %struct.kvm_book3e_206_tlb_entry* %1, %struct.kvm_book3e_206_tlb_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.tlbe_ref*, %struct.tlbe_ref** %5, align 8
  %11 = getelementptr inbounds %struct.tlbe_ref, %struct.tlbe_ref* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @E500_TLB_VALID, align 4
  %13 = load %struct.tlbe_ref*, %struct.tlbe_ref** %5, align 8
  %14 = getelementptr inbounds %struct.tlbe_ref, %struct.tlbe_ref* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %6, align 8
  %16 = getelementptr inbounds %struct.kvm_book3e_206_tlb_entry, %struct.kvm_book3e_206_tlb_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MAS2_ATTRIB_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* %8, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.tlbe_ref*, %struct.tlbe_ref** %5, align 8
  %23 = getelementptr inbounds %struct.tlbe_ref, %struct.tlbe_ref* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @kvm_set_pfn_accessed(i32 %26)
  %28 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %6, align 8
  %29 = call i64 @tlbe_is_writable(%struct.kvm_book3e_206_tlb_entry* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @kvm_set_pfn_dirty(i32 %32)
  br label %34

34:                                               ; preds = %31, %4
  ret void
}

declare dso_local i32 @kvm_set_pfn_accessed(i32) #1

declare dso_local i64 @tlbe_is_writable(%struct.kvm_book3e_206_tlb_entry*) #1

declare dso_local i32 @kvm_set_pfn_dirty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
