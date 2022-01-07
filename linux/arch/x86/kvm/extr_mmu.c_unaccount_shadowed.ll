; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_unaccount_shadowed.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_unaccount_shadowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.kvm_mmu_page = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.kvm_memslots = type { i32 }
%struct.kvm_memory_slot = type { i32 }

@PT_PAGE_TABLE_LEVEL = common dso_local global i64 0, align 8
@KVM_PAGE_TRACK_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, %struct.kvm_mmu_page*)* @unaccount_shadowed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unaccount_shadowed(%struct.kvm* %0, %struct.kvm_mmu_page* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_mmu_page*, align 8
  %5 = alloca %struct.kvm_memslots*, align 8
  %6 = alloca %struct.kvm_memory_slot*, align 8
  %7 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.kvm_mmu_page* %1, %struct.kvm_mmu_page** %4, align 8
  %8 = load %struct.kvm*, %struct.kvm** %3, align 8
  %9 = getelementptr inbounds %struct.kvm, %struct.kvm* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %10, align 4
  %13 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %14 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.kvm*, %struct.kvm** %3, align 8
  %17 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %18 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call %struct.kvm_memslots* @kvm_memslots_for_spte_role(%struct.kvm* %16, i64 %20)
  store %struct.kvm_memslots* %21, %struct.kvm_memslots** %5, align 8
  %22 = load %struct.kvm_memslots*, %struct.kvm_memslots** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.kvm_memory_slot* @__gfn_to_memslot(%struct.kvm_memslots* %22, i32 %23)
  store %struct.kvm_memory_slot* %24, %struct.kvm_memory_slot** %6, align 8
  %25 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %26 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PT_PAGE_TABLE_LEVEL, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load %struct.kvm*, %struct.kvm** %3, align 8
  %33 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @KVM_PAGE_TRACK_WRITE, align 4
  call void @kvm_slot_page_track_remove_page(%struct.kvm* %32, %struct.kvm_memory_slot* %33, i32 %34, i32 %35)
  br label %40

36:                                               ; preds = %2
  %37 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @kvm_mmu_gfn_allow_lpage(%struct.kvm_memory_slot* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %31
  ret void
}

declare dso_local %struct.kvm_memslots* @kvm_memslots_for_spte_role(%struct.kvm*, i64) #1

declare dso_local %struct.kvm_memory_slot* @__gfn_to_memslot(%struct.kvm_memslots*, i32) #1

declare dso_local void @kvm_slot_page_track_remove_page(%struct.kvm*, %struct.kvm_memory_slot*, i32, i32) #1

declare dso_local i32 @kvm_mmu_gfn_allow_lpage(%struct.kvm_memory_slot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
