; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_kvmppc_set_dirty_from_hpte.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_kvmppc_set_dirty_from_hpte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_memory_slot = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, i64, i64)* @kvmppc_set_dirty_from_hpte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_set_dirty_from_hpte(%struct.kvm* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.kvm_memory_slot*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @kvmppc_actual_pgsz(i64 %10, i64 %11)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %9, align 8
  %15 = call i64 @hpte_rpn(i64 %13, i64 %14)
  store i64 %15, i64* %8, align 8
  %16 = load %struct.kvm*, %struct.kvm** %4, align 8
  %17 = call i32 @kvm_memslots_raw(%struct.kvm* %16)
  %18 = load i64, i64* %8, align 8
  %19 = call %struct.kvm_memory_slot* @__gfn_to_memslot(i32 %17, i64 %18)
  store %struct.kvm_memory_slot* %19, %struct.kvm_memory_slot** %7, align 8
  %20 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %7, align 8
  %21 = icmp ne %struct.kvm_memory_slot* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %3
  %23 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %7, align 8
  %24 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @kvmppc_update_dirty_map(%struct.kvm_memory_slot* %28, i64 %29, i64 %30)
  br label %32

32:                                               ; preds = %27, %22, %3
  ret void
}

declare dso_local i64 @kvmppc_actual_pgsz(i64, i64) #1

declare dso_local i64 @hpte_rpn(i64, i64) #1

declare dso_local %struct.kvm_memory_slot* @__gfn_to_memslot(i32, i64) #1

declare dso_local i32 @kvm_memslots_raw(%struct.kvm*) #1

declare dso_local i32 @kvmppc_update_dirty_map(%struct.kvm_memory_slot*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
