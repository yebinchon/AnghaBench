; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_arch_destroy_vm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_arch_destroy_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 (%struct.kvm*)* }
%struct.kvm = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@APIC_ACCESS_PAGE_PRIVATE_MEMSLOT = common dso_local global i32 0, align 4
@IDENTITY_PAGETABLE_PRIVATE_MEMSLOT = common dso_local global i32 0, align 4
@TSS_PRIVATE_MEMSLOT = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_arch_destroy_vm(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm*, align 8
  store %struct.kvm* %0, %struct.kvm** %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %4 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.kvm*, %struct.kvm** %2, align 8
  %7 = getelementptr inbounds %struct.kvm, %struct.kvm* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %5, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.kvm*, %struct.kvm** %2, align 8
  %12 = load i32, i32* @APIC_ACCESS_PAGE_PRIVATE_MEMSLOT, align 4
  %13 = call i32 @x86_set_memory_region(%struct.kvm* %11, i32 %12, i32 0, i32 0)
  %14 = load %struct.kvm*, %struct.kvm** %2, align 8
  %15 = load i32, i32* @IDENTITY_PAGETABLE_PRIVATE_MEMSLOT, align 4
  %16 = call i32 @x86_set_memory_region(%struct.kvm* %14, i32 %15, i32 0, i32 0)
  %17 = load %struct.kvm*, %struct.kvm** %2, align 8
  %18 = load i32, i32* @TSS_PRIVATE_MEMSLOT, align 4
  %19 = call i32 @x86_set_memory_region(%struct.kvm* %17, i32 %18, i32 0, i32 0)
  br label %20

20:                                               ; preds = %10, %1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kvm_x86_ops, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32 (%struct.kvm*)*, i32 (%struct.kvm*)** %22, align 8
  %24 = icmp ne i32 (%struct.kvm*)* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kvm_x86_ops, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32 (%struct.kvm*)*, i32 (%struct.kvm*)** %27, align 8
  %29 = load %struct.kvm*, %struct.kvm** %2, align 8
  %30 = call i32 %28(%struct.kvm* %29)
  br label %31

31:                                               ; preds = %25, %20
  %32 = load %struct.kvm*, %struct.kvm** %2, align 8
  %33 = call i32 @kvm_pic_destroy(%struct.kvm* %32)
  %34 = load %struct.kvm*, %struct.kvm** %2, align 8
  %35 = call i32 @kvm_ioapic_destroy(%struct.kvm* %34)
  %36 = load %struct.kvm*, %struct.kvm** %2, align 8
  %37 = call i32 @kvm_free_vcpus(%struct.kvm* %36)
  %38 = load %struct.kvm*, %struct.kvm** %2, align 8
  %39 = getelementptr inbounds %struct.kvm, %struct.kvm* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @rcu_dereference_check(i32 %41, i32 1)
  %43 = call i32 @kvfree(i32 %42)
  %44 = load %struct.kvm*, %struct.kvm** %2, align 8
  %45 = getelementptr inbounds %struct.kvm, %struct.kvm* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.kvm*, %struct.kvm** %2, align 8
  %49 = getelementptr inbounds %struct.kvm, %struct.kvm* %48, i32 0, i32 1
  %50 = call i32 @srcu_dereference_check(i32 %47, i32* %49, i32 1)
  %51 = call i32 @kfree(i32 %50)
  %52 = load %struct.kvm*, %struct.kvm** %2, align 8
  %53 = call i32 @kvm_mmu_uninit_vm(%struct.kvm* %52)
  %54 = load %struct.kvm*, %struct.kvm** %2, align 8
  %55 = call i32 @kvm_page_track_cleanup(%struct.kvm* %54)
  %56 = load %struct.kvm*, %struct.kvm** %2, align 8
  %57 = call i32 @kvm_hv_destroy_vm(%struct.kvm* %56)
  ret void
}

declare dso_local i32 @x86_set_memory_region(%struct.kvm*, i32, i32, i32) #1

declare dso_local i32 @kvm_pic_destroy(%struct.kvm*) #1

declare dso_local i32 @kvm_ioapic_destroy(%struct.kvm*) #1

declare dso_local i32 @kvm_free_vcpus(%struct.kvm*) #1

declare dso_local i32 @kvfree(i32) #1

declare dso_local i32 @rcu_dereference_check(i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @srcu_dereference_check(i32, i32*, i32) #1

declare dso_local i32 @kvm_mmu_uninit_vm(%struct.kvm*) #1

declare dso_local i32 @kvm_page_track_cleanup(%struct.kvm*) #1

declare dso_local i32 @kvm_hv_destroy_vm(%struct.kvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
