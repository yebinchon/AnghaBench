; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_gfn_to_rmap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_gfn_to_rmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_rmap_head = type { i32 }
%struct.kvm = type { i32 }
%struct.kvm_mmu_page = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kvm_memslots = type { i32 }
%struct.kvm_memory_slot = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvm_rmap_head* (%struct.kvm*, i32, %struct.kvm_mmu_page*)* @gfn_to_rmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvm_rmap_head* @gfn_to_rmap(%struct.kvm* %0, i32 %1, %struct.kvm_mmu_page* %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_mmu_page*, align 8
  %7 = alloca %struct.kvm_memslots*, align 8
  %8 = alloca %struct.kvm_memory_slot*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.kvm_mmu_page* %2, %struct.kvm_mmu_page** %6, align 8
  %9 = load %struct.kvm*, %struct.kvm** %4, align 8
  %10 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %11 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.kvm_memslots* @kvm_memslots_for_spte_role(%struct.kvm* %9, i32 %13)
  store %struct.kvm_memslots* %14, %struct.kvm_memslots** %7, align 8
  %15 = load %struct.kvm_memslots*, %struct.kvm_memslots** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.kvm_memory_slot* @__gfn_to_memslot(%struct.kvm_memslots* %15, i32 %16)
  store %struct.kvm_memory_slot* %17, %struct.kvm_memory_slot** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %20 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %24 = call %struct.kvm_rmap_head* @__gfn_to_rmap(i32 %18, i32 %22, %struct.kvm_memory_slot* %23)
  ret %struct.kvm_rmap_head* %24
}

declare dso_local %struct.kvm_memslots* @kvm_memslots_for_spte_role(%struct.kvm*, i32) #1

declare dso_local %struct.kvm_memory_slot* @__gfn_to_memslot(%struct.kvm_memslots*, i32) #1

declare dso_local %struct.kvm_rmap_head* @__gfn_to_rmap(i32, i32, %struct.kvm_memory_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
