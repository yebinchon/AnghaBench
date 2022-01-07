; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_clear_dirty_pt_masked.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_clear_dirty_pt_masked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_memory_slot = type { i64 }
%struct.kvm_rmap_head = type { i32 }

@PT_PAGE_TABLE_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_mmu_clear_dirty_pt_masked(%struct.kvm* %0, %struct.kvm_memory_slot* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca %struct.kvm_memory_slot*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.kvm_rmap_head*, align 8
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  br label %10

10:                                               ; preds = %13, %4
  %11 = load i64, i64* %8, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %10
  %14 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %15 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %7, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i64, i64* %8, align 8
  %20 = call i64 @__ffs(i64 %19)
  %21 = add nsw i64 %18, %20
  %22 = load i32, i32* @PT_PAGE_TABLE_LEVEL, align 4
  %23 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %24 = call %struct.kvm_rmap_head* @__gfn_to_rmap(i64 %21, i32 %22, %struct.kvm_memory_slot* %23)
  store %struct.kvm_rmap_head* %24, %struct.kvm_rmap_head** %9, align 8
  %25 = load %struct.kvm*, %struct.kvm** %5, align 8
  %26 = load %struct.kvm_rmap_head*, %struct.kvm_rmap_head** %9, align 8
  %27 = call i32 @__rmap_clear_dirty(%struct.kvm* %25, %struct.kvm_rmap_head* %26)
  %28 = load i64, i64* %8, align 8
  %29 = sub i64 %28, 1
  %30 = load i64, i64* %8, align 8
  %31 = and i64 %30, %29
  store i64 %31, i64* %8, align 8
  br label %10

32:                                               ; preds = %10
  ret void
}

declare dso_local %struct.kvm_rmap_head* @__gfn_to_rmap(i64, i32, %struct.kvm_memory_slot*) #1

declare dso_local i64 @__ffs(i64) #1

declare dso_local i32 @__rmap_clear_dirty(%struct.kvm*, %struct.kvm_rmap_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
