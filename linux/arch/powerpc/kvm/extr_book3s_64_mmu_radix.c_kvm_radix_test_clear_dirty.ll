; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_kvm_radix_test_clear_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_kvm_radix_test_clear_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.kvm_memory_slot = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@_PAGE_DIRTY = common dso_local global i32 0, align 4
@PTE_RPN_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvm_memory_slot*, i32)* @kvm_radix_test_clear_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_radix_test_clear_dirty(%struct.kvm* %0, %struct.kvm_memory_slot* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_memory_slot*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %15 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @PAGE_SHIFT, align 8
  %22 = shl i64 %20, %21
  store i64 %22, i64* %8, align 8
  store i32 0, i32* %11, align 4
  %23 = load %struct.kvm*, %struct.kvm** %4, align 8
  %24 = getelementptr inbounds %struct.kvm, %struct.kvm* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %8, align 8
  %28 = call i32* @__find_linux_pte(i32 %26, i64 %27, i32* null, i32* %10)
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %93

31:                                               ; preds = %3
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @pte_present(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %93

36:                                               ; preds = %31
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @pte_dirty(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %93

41:                                               ; preds = %36
  store i32 1, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  %46 = zext i32 %45 to i64
  %47 = load i64, i64* @PAGE_SHIFT, align 8
  %48 = sub i64 %46, %47
  %49 = trunc i64 %48 to i32
  %50 = shl i32 1, %49
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %44, %41
  %52 = load %struct.kvm*, %struct.kvm** %4, align 8
  %53 = getelementptr inbounds %struct.kvm, %struct.kvm* %52, i32 0, i32 0
  %54 = call i32 @spin_lock(i32* %53)
  %55 = load %struct.kvm*, %struct.kvm** %4, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* @_PAGE_DIRTY, align 4
  %58 = load i64, i64* %8, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i64 @kvmppc_radix_update_pte(%struct.kvm* %55, i32* %56, i32 %57, i32 0, i64 %58, i32 %59)
  store i64 %60, i64* %12, align 8
  %61 = load %struct.kvm*, %struct.kvm** %4, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.kvm*, %struct.kvm** %4, align 8
  %65 = getelementptr inbounds %struct.kvm, %struct.kvm* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @kvmppc_radix_tlbie_page(%struct.kvm* %61, i64 %62, i32 %63, i32 %67)
  %69 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %70 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %75 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = sub i64 %73, %77
  %79 = getelementptr inbounds i64, i64* %72, i64 %78
  store i64* %79, i64** %13, align 8
  %80 = load %struct.kvm*, %struct.kvm** %4, align 8
  %81 = load i64*, i64** %13, align 8
  %82 = load i32, i32* @_PAGE_DIRTY, align 4
  %83 = load i64, i64* %12, align 8
  %84 = load i64, i64* @PTE_RPN_MASK, align 8
  %85 = and i64 %83, %84
  %86 = load i32, i32* %10, align 4
  %87 = zext i32 %86 to i64
  %88 = shl i64 1, %87
  %89 = call i32 @kvmhv_update_nest_rmap_rc_list(%struct.kvm* %80, i64* %81, i32 %82, i32 0, i64 %85, i64 %88)
  %90 = load %struct.kvm*, %struct.kvm** %4, align 8
  %91 = getelementptr inbounds %struct.kvm, %struct.kvm* %90, i32 0, i32 0
  %92 = call i32 @spin_unlock(i32* %91)
  br label %93

93:                                               ; preds = %51, %36, %31, %3
  %94 = load i32, i32* %11, align 4
  ret i32 %94
}

declare dso_local i32* @__find_linux_pte(i32, i64, i32*, i32*) #1

declare dso_local i64 @pte_present(i32) #1

declare dso_local i64 @pte_dirty(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @kvmppc_radix_update_pte(%struct.kvm*, i32*, i32, i32, i64, i32) #1

declare dso_local i32 @kvmppc_radix_tlbie_page(%struct.kvm*, i64, i32, i32) #1

declare dso_local i32 @kvmhv_update_nest_rmap_rc_list(%struct.kvm*, i64*, i32, i32, i64, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
