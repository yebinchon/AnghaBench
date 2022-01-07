; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_mmu_slot_apply_flags.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_mmu_slot_apply_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.kvm*, %struct.kvm_memory_slot*)*, i32 (%struct.kvm*, %struct.kvm_memory_slot*)* }
%struct.kvm = type { i32 }
%struct.kvm_memory_slot = type { i32 }

@KVM_MEM_READONLY = common dso_local global i32 0, align 4
@KVM_MEM_LOG_DIRTY_PAGES = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, %struct.kvm_memory_slot*)* @kvm_mmu_slot_apply_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_mmu_slot_apply_flags(%struct.kvm* %0, %struct.kvm_memory_slot* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_memory_slot*, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot** %4, align 8
  %5 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %6 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @KVM_MEM_READONLY, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.kvm*, %struct.kvm** %3, align 8
  %13 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %14 = call i32 @kvm_mmu_slot_remove_write_access(%struct.kvm* %12, %struct.kvm_memory_slot* %13)
  br label %52

15:                                               ; preds = %2
  %16 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %17 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @KVM_MEM_LOG_DIRTY_PAGES, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %15
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32 (%struct.kvm*, %struct.kvm_memory_slot*)*, i32 (%struct.kvm*, %struct.kvm_memory_slot*)** %24, align 8
  %26 = icmp ne i32 (%struct.kvm*, %struct.kvm_memory_slot*)* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32 (%struct.kvm*, %struct.kvm_memory_slot*)*, i32 (%struct.kvm*, %struct.kvm_memory_slot*)** %29, align 8
  %31 = load %struct.kvm*, %struct.kvm** %3, align 8
  %32 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %33 = call i32 %30(%struct.kvm* %31, %struct.kvm_memory_slot* %32)
  br label %38

34:                                               ; preds = %22
  %35 = load %struct.kvm*, %struct.kvm** %3, align 8
  %36 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %37 = call i32 @kvm_mmu_slot_remove_write_access(%struct.kvm* %35, %struct.kvm_memory_slot* %36)
  br label %38

38:                                               ; preds = %34, %27
  br label %52

39:                                               ; preds = %15
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.kvm*, %struct.kvm_memory_slot*)*, i32 (%struct.kvm*, %struct.kvm_memory_slot*)** %41, align 8
  %43 = icmp ne i32 (%struct.kvm*, %struct.kvm_memory_slot*)* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.kvm*, %struct.kvm_memory_slot*)*, i32 (%struct.kvm*, %struct.kvm_memory_slot*)** %46, align 8
  %48 = load %struct.kvm*, %struct.kvm** %3, align 8
  %49 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %50 = call i32 %47(%struct.kvm* %48, %struct.kvm_memory_slot* %49)
  br label %51

51:                                               ; preds = %44, %39
  br label %52

52:                                               ; preds = %11, %51, %38
  ret void
}

declare dso_local i32 @kvm_mmu_slot_remove_write_access(%struct.kvm*, %struct.kvm_memory_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
