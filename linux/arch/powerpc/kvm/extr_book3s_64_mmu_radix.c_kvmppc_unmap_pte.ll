; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_kvmppc_unmap_pte.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_kvmppc_unmap_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.kvm_memory_slot = type { i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@PMD_SHIFT = common dso_local global i32 0, align 4
@PUD_SHIFT = common dso_local global i32 0, align 4
@PTE_RPN_MASK = common dso_local global i64 0, align 8
@_PAGE_DIRTY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_unmap_pte(%struct.kvm* %0, i32* %1, i64 %2, i32 %3, %struct.kvm_memory_slot* %4, i32 %5) #0 {
  %7 = alloca %struct.kvm*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.kvm_memory_slot*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.kvm_memory_slot* %4, %struct.kvm_memory_slot** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @PAGE_SHIFT, align 8
  %19 = lshr i64 %17, %18
  store i64 %19, i64* %14, align 8
  %20 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %20, i64* %15, align 8
  %21 = load %struct.kvm*, %struct.kvm** %7, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i64 @kvmppc_radix_update_pte(%struct.kvm* %21, i32* %22, i64 -1, i32 0, i64 %23, i32 %24)
  store i64 %25, i64* %13, align 8
  %26 = load %struct.kvm*, %struct.kvm** %7, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @kvmppc_radix_tlbie_page(%struct.kvm* %26, i64 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.kvm*, %struct.kvm** %7, align 8
  %33 = getelementptr inbounds %struct.kvm, %struct.kvm* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %31, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %6
  br label %106

38:                                               ; preds = %6
  %39 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %11, align 8
  %40 = icmp ne %struct.kvm_memory_slot* %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %38
  %42 = load %struct.kvm*, %struct.kvm** %7, align 8
  %43 = load i64, i64* %14, align 8
  %44 = call %struct.kvm_memory_slot* @gfn_to_memslot(%struct.kvm* %42, i64 %43)
  store %struct.kvm_memory_slot* %44, %struct.kvm_memory_slot** %11, align 8
  %45 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %11, align 8
  %46 = icmp ne %struct.kvm_memory_slot* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  br label %106

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %38
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %77

52:                                               ; preds = %49
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  %55 = shl i64 1, %54
  store i64 %55, i64* %15, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @PMD_SHIFT, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load %struct.kvm*, %struct.kvm** %7, align 8
  %61 = getelementptr inbounds %struct.kvm, %struct.kvm* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %62, align 4
  br label %76

65:                                               ; preds = %52
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @PUD_SHIFT, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load %struct.kvm*, %struct.kvm** %7, align 8
  %71 = getelementptr inbounds %struct.kvm, %struct.kvm* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %69, %65
  br label %76

76:                                               ; preds = %75, %59
  br label %77

77:                                               ; preds = %76, %49
  %78 = load i64, i64* %15, align 8
  %79 = sub i64 %78, 1
  %80 = xor i64 %79, -1
  %81 = load i64, i64* %9, align 8
  %82 = and i64 %81, %80
  store i64 %82, i64* %9, align 8
  %83 = load i64, i64* %13, align 8
  %84 = load i64, i64* @PTE_RPN_MASK, align 8
  %85 = and i64 %83, %84
  store i64 %85, i64* %16, align 8
  %86 = load %struct.kvm*, %struct.kvm** %7, align 8
  %87 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %11, align 8
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* %16, align 8
  %90 = load i64, i64* %15, align 8
  %91 = call i32 @kvmhv_remove_nest_rmap_range(%struct.kvm* %86, %struct.kvm_memory_slot* %87, i64 %88, i64 %89, i64 %90)
  %92 = load i64, i64* %13, align 8
  %93 = load i64, i64* @_PAGE_DIRTY, align 8
  %94 = and i64 %92, %93
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %77
  %97 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %11, align 8
  %98 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %11, align 8
  %103 = load i64, i64* %14, align 8
  %104 = load i64, i64* %15, align 8
  %105 = call i32 @kvmppc_update_dirty_map(%struct.kvm_memory_slot* %102, i64 %103, i64 %104)
  br label %106

106:                                              ; preds = %37, %47, %101, %96, %77
  ret void
}

declare dso_local i64 @kvmppc_radix_update_pte(%struct.kvm*, i32*, i64, i32, i64, i32) #1

declare dso_local i32 @kvmppc_radix_tlbie_page(%struct.kvm*, i64, i32, i32) #1

declare dso_local %struct.kvm_memory_slot* @gfn_to_memslot(%struct.kvm*, i64) #1

declare dso_local i32 @kvmhv_remove_nest_rmap_range(%struct.kvm*, %struct.kvm_memory_slot*, i64, i64, i64) #1

declare dso_local i32 @kvmppc_update_dirty_map(%struct.kvm_memory_slot*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
