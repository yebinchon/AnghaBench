; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu.c_kvmppc_set_tlb1map_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu.c_kvmppc_set_tlb1map_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_book3e_206_tlb_entry = type { i32 }
%struct.kvmppc_vcpu_e500 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvm_book3e_206_tlb_entry*)* @kvmppc_set_tlb1map_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_set_tlb1map_range(%struct.kvm_vcpu* %0, %struct.kvm_book3e_206_tlb_entry* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_book3e_206_tlb_entry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.kvmppc_vcpu_e500*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_book3e_206_tlb_entry* %1, %struct.kvm_book3e_206_tlb_entry** %4, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = call %struct.kvmppc_vcpu_e500* @to_e500(%struct.kvm_vcpu* %9)
  store %struct.kvmppc_vcpu_e500* %10, %struct.kvmppc_vcpu_e500** %8, align 8
  %11 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %4, align 8
  %12 = call i32 @get_tlb_v(%struct.kvm_book3e_206_tlb_entry* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %42

15:                                               ; preds = %2
  %16 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %4, align 8
  %17 = call i64 @get_tlb_bytes(%struct.kvm_book3e_206_tlb_entry* %16)
  store i64 %17, i64* %7, align 8
  %18 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %4, align 8
  %19 = call i64 @get_tlb_eaddr(%struct.kvm_book3e_206_tlb_entry* %18)
  %20 = load i64, i64* %7, align 8
  %21 = sub i64 %20, 1
  %22 = xor i64 %21, -1
  %23 = and i64 %19, %22
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %7, align 8
  %26 = add i64 %24, %25
  %27 = sub i64 %26, 1
  store i64 %27, i64* %6, align 8
  %28 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %8, align 8
  %29 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @min(i32 %30, i64 %31)
  %33 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %8, align 8
  %34 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %8, align 8
  %36 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @max(i32 %37, i64 %38)
  %40 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %8, align 8
  %41 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.kvmppc_vcpu_e500* @to_e500(%struct.kvm_vcpu*) #1

declare dso_local i32 @get_tlb_v(%struct.kvm_book3e_206_tlb_entry*) #1

declare dso_local i64 @get_tlb_bytes(%struct.kvm_book3e_206_tlb_entry*) #1

declare dso_local i64 @get_tlb_eaddr(%struct.kvm_book3e_206_tlb_entry*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @max(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
