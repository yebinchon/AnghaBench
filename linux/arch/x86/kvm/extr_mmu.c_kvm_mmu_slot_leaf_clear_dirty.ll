; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_slot_leaf_clear_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_slot_leaf_clear_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, i32 }
%struct.kvm_memory_slot = type { i32, i32 }

@__rmap_clear_dirty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_mmu_slot_leaf_clear_dirty(%struct.kvm* %0, %struct.kvm_memory_slot* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_memory_slot*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot** %4, align 8
  %6 = load %struct.kvm*, %struct.kvm** %3, align 8
  %7 = getelementptr inbounds %struct.kvm, %struct.kvm* %6, i32 0, i32 1
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.kvm*, %struct.kvm** %3, align 8
  %10 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %11 = load i32, i32* @__rmap_clear_dirty, align 4
  %12 = call i32 @slot_handle_leaf(%struct.kvm* %9, %struct.kvm_memory_slot* %10, i32 %11, i32 0)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.kvm*, %struct.kvm** %3, align 8
  %14 = getelementptr inbounds %struct.kvm, %struct.kvm* %13, i32 0, i32 1
  %15 = call i32 @spin_unlock(i32* %14)
  %16 = load %struct.kvm*, %struct.kvm** %3, align 8
  %17 = getelementptr inbounds %struct.kvm, %struct.kvm* %16, i32 0, i32 0
  %18 = call i32 @lockdep_assert_held(i32* %17)
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load %struct.kvm*, %struct.kvm** %3, align 8
  %23 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %24 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %27 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @kvm_flush_remote_tlbs_with_address(%struct.kvm* %22, i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %21, %2
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @slot_handle_leaf(%struct.kvm*, %struct.kvm_memory_slot*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @kvm_flush_remote_tlbs_with_address(%struct.kvm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
