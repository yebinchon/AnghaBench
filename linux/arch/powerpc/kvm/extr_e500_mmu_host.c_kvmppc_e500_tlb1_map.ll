; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu_host.c_kvmppc_e500_tlb1_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu_host.c_kvmppc_e500_tlb1_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_vcpu_e500 = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.tlbe_ref }
%struct.tlbe_ref = type { i32 }
%struct.kvm_book3e_206_tlb_entry = type { i32 }

@BOOK3E_PAGESZ_4K = common dso_local global i64 0, align 8
@E500_TLB_TLB0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvmppc_vcpu_e500*, i32, i32, %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry*, i32)* @kvmppc_e500_tlb1_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_e500_tlb1_map(%struct.kvmppc_vcpu_e500* %0, i32 %1, i32 %2, %struct.kvm_book3e_206_tlb_entry* %3, %struct.kvm_book3e_206_tlb_entry* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvmppc_vcpu_e500*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.kvm_book3e_206_tlb_entry*, align 8
  %12 = alloca %struct.kvm_book3e_206_tlb_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.tlbe_ref*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.kvmppc_vcpu_e500* %0, %struct.kvmppc_vcpu_e500** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.kvm_book3e_206_tlb_entry* %3, %struct.kvm_book3e_206_tlb_entry** %11, align 8
  store %struct.kvm_book3e_206_tlb_entry* %4, %struct.kvm_book3e_206_tlb_entry** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %8, align 8
  %18 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %19, i64 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %13, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store %struct.tlbe_ref* %25, %struct.tlbe_ref** %14, align 8
  %26 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %11, align 8
  %30 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %12, align 8
  %31 = load %struct.tlbe_ref*, %struct.tlbe_ref** %14, align 8
  %32 = call i32 @kvmppc_e500_shadow_map(%struct.kvmppc_vcpu_e500* %26, i32 %27, i32 %28, %struct.kvm_book3e_206_tlb_entry* %29, i32 1, %struct.kvm_book3e_206_tlb_entry* %30, %struct.tlbe_ref* %31)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %6
  %36 = load i32, i32* %16, align 4
  store i32 %36, i32* %7, align 4
  br label %70

37:                                               ; preds = %6
  %38 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %12, align 8
  %39 = call i64 @get_tlb_tsize(%struct.kvm_book3e_206_tlb_entry* %38)
  %40 = load i64, i64* @BOOK3E_PAGESZ_4K, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  %43 = load i32, i32* @E500_TLB_TLB0, align 4
  %44 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %8, align 8
  %45 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %46, i64 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.tlbe_ref, %struct.tlbe_ref* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %43
  store i32 %55, i32* %53, align 4
  %56 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %8, align 8
  %57 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %11, align 8
  %58 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %12, align 8
  %59 = call i32 @write_stlbe(%struct.kvmppc_vcpu_e500* %56, %struct.kvm_book3e_206_tlb_entry* %57, %struct.kvm_book3e_206_tlb_entry* %58, i32 0, i32 0)
  store i32 0, i32* %7, align 4
  br label %70

60:                                               ; preds = %37
  %61 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %8, align 8
  %62 = load %struct.tlbe_ref*, %struct.tlbe_ref** %14, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @kvmppc_e500_tlb1_map_tlb1(%struct.kvmppc_vcpu_e500* %61, %struct.tlbe_ref* %62, i32 %63)
  store i32 %64, i32* %15, align 4
  %65 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %8, align 8
  %66 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %11, align 8
  %67 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %12, align 8
  %68 = load i32, i32* %15, align 4
  %69 = call i32 @write_stlbe(%struct.kvmppc_vcpu_e500* %65, %struct.kvm_book3e_206_tlb_entry* %66, %struct.kvm_book3e_206_tlb_entry* %67, i32 1, i32 %68)
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %60, %42, %35
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @kvmppc_e500_shadow_map(%struct.kvmppc_vcpu_e500*, i32, i32, %struct.kvm_book3e_206_tlb_entry*, i32, %struct.kvm_book3e_206_tlb_entry*, %struct.tlbe_ref*) #1

declare dso_local i64 @get_tlb_tsize(%struct.kvm_book3e_206_tlb_entry*) #1

declare dso_local i32 @write_stlbe(%struct.kvmppc_vcpu_e500*, %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry*, i32, i32) #1

declare dso_local i32 @kvmppc_e500_tlb1_map_tlb1(%struct.kvmppc_vcpu_e500*, %struct.tlbe_ref*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
