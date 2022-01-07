; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu.c_kvmppc_e500_gtlbe_invalidate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu.c_kvmppc_e500_gtlbe_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_vcpu_e500 = type { i32 }
%struct.kvm_book3e_206_tlb_entry = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvmppc_vcpu_e500*, i32, i32)* @kvmppc_e500_gtlbe_invalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_e500_gtlbe_invalidate(%struct.kvmppc_vcpu_e500* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvmppc_vcpu_e500*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvm_book3e_206_tlb_entry*, align 8
  store %struct.kvmppc_vcpu_e500* %0, %struct.kvmppc_vcpu_e500** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.kvm_book3e_206_tlb_entry* @get_entry(%struct.kvmppc_vcpu_e500* %9, i32 %10, i32 %11)
  store %struct.kvm_book3e_206_tlb_entry* %12, %struct.kvm_book3e_206_tlb_entry** %8, align 8
  %13 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %8, align 8
  %14 = call i32 @get_tlb_iprot(%struct.kvm_book3e_206_tlb_entry* %13)
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %32

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %5, align 8
  %23 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %8, align 8
  %24 = call i64 @kvmppc_need_recalc_tlb1map_range(%struct.kvmppc_vcpu_e500* %22, %struct.kvm_book3e_206_tlb_entry* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %5, align 8
  %28 = call i32 @kvmppc_recalc_tlb1map_range(%struct.kvmppc_vcpu_e500* %27)
  br label %29

29:                                               ; preds = %26, %21, %18
  %30 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %8, align 8
  %31 = getelementptr inbounds %struct.kvm_book3e_206_tlb_entry, %struct.kvm_book3e_206_tlb_entry* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %29, %17
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.kvm_book3e_206_tlb_entry* @get_entry(%struct.kvmppc_vcpu_e500*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @get_tlb_iprot(%struct.kvm_book3e_206_tlb_entry*) #1

declare dso_local i64 @kvmppc_need_recalc_tlb1map_range(%struct.kvmppc_vcpu_e500*, %struct.kvm_book3e_206_tlb_entry*) #1

declare dso_local i32 @kvmppc_recalc_tlb1map_range(%struct.kvmppc_vcpu_e500*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
