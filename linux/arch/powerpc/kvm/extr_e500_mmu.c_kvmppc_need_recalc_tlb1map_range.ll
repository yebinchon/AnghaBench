; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu.c_kvmppc_need_recalc_tlb1map_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu.c_kvmppc_need_recalc_tlb1map_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_vcpu_e500 = type { i64, i64 }
%struct.kvm_book3e_206_tlb_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvmppc_vcpu_e500*, %struct.kvm_book3e_206_tlb_entry*)* @kvmppc_need_recalc_tlb1map_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_need_recalc_tlb1map_range(%struct.kvmppc_vcpu_e500* %0, %struct.kvm_book3e_206_tlb_entry* %1) #0 {
  %3 = alloca %struct.kvmppc_vcpu_e500*, align 8
  %4 = alloca %struct.kvm_book3e_206_tlb_entry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.kvmppc_vcpu_e500* %0, %struct.kvmppc_vcpu_e500** %3, align 8
  store %struct.kvm_book3e_206_tlb_entry* %1, %struct.kvm_book3e_206_tlb_entry** %4, align 8
  %8 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %4, align 8
  %9 = call i64 @get_tlb_bytes(%struct.kvm_book3e_206_tlb_entry* %8)
  store i64 %9, i64* %7, align 8
  %10 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %4, align 8
  %11 = call i64 @get_tlb_eaddr(%struct.kvm_book3e_206_tlb_entry* %10)
  %12 = load i64, i64* %7, align 8
  %13 = sub i64 %12, 1
  %14 = xor i64 %13, -1
  %15 = and i64 %11, %14
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %7, align 8
  %18 = add i64 %16, %17
  %19 = sub i64 %18, 1
  store i64 %19, i64* %6, align 8
  %20 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %3, align 8
  %21 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %2
  %26 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %3, align 8
  %27 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %28, %29
  br label %31

31:                                               ; preds = %25, %2
  %32 = phi i1 [ true, %2 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  ret i32 %33
}

declare dso_local i64 @get_tlb_bytes(%struct.kvm_book3e_206_tlb_entry*) #1

declare dso_local i64 @get_tlb_eaddr(%struct.kvm_book3e_206_tlb_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
