; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mmu.c_kvm_mips_map_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mmu.c_kvm_mips_map_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__, %struct.kvm* }
%struct.TYPE_2__ = type { %struct.kvm_mmu_memory_cache }
%struct.kvm_mmu_memory_cache = type { i32 }
%struct.kvm = type { i64, i32, i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@KVM_MMU_CACHE_MIN_PAGES = common dso_local global i32 0, align 4
@KVM_NR_MEM_OBJS = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@_PAGE_PRESENT = common dso_local global i64 0, align 8
@__READABLE = common dso_local global i64 0, align 8
@_page_cachable_default = common dso_local global i64 0, align 8
@_PAGE_WRITE = common dso_local global i64 0, align 8
@__WRITEABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i64, i32, i32*, i32*)* @kvm_mips_map_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_mips_map_page(%struct.kvm_vcpu* %0, i64 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.kvm*, align 8
  %12 = alloca %struct.kvm_mmu_memory_cache*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 1
  %25 = load %struct.kvm*, %struct.kvm** %24, align 8
  store %struct.kvm* %25, %struct.kvm** %11, align 8
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store %struct.kvm_mmu_memory_cache* %28, %struct.kvm_mmu_memory_cache** %12, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @PAGE_SHIFT, align 8
  %31 = lshr i64 %29, %30
  store i64 %31, i64* %13, align 8
  %32 = load %struct.kvm*, %struct.kvm** %11, align 8
  %33 = getelementptr inbounds %struct.kvm, %struct.kvm* %32, i32 0, i32 1
  %34 = call i32 @srcu_read_lock(i32* %33)
  store i32 %34, i32* %14, align 4
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @_kvm_mips_map_page_fast(%struct.kvm_vcpu* %35, i64 %36, i32 %37, i32* %38, i32* %39)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %5
  br label %142

44:                                               ; preds = %5
  %45 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %12, align 8
  %46 = load i32, i32* @KVM_MMU_CACHE_MIN_PAGES, align 4
  %47 = load i32, i32* @KVM_NR_MEM_OBJS, align 4
  %48 = call i32 @mmu_topup_memory_cache(%struct.kvm_mmu_memory_cache* %45, i32 %46, i32 %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %142

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %76, %52
  %54 = load %struct.kvm*, %struct.kvm** %11, align 8
  %55 = getelementptr inbounds %struct.kvm, %struct.kvm* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %22, align 8
  %57 = call i32 (...) @smp_rmb()
  %58 = load %struct.kvm*, %struct.kvm** %11, align 8
  %59 = load i64, i64* %13, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @gfn_to_pfn_prot(%struct.kvm* %58, i64 %59, i32 %60, i32* %20)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = call i64 @is_error_noslot_pfn(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = load i32, i32* @EFAULT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %15, align 4
  br label %142

68:                                               ; preds = %53
  %69 = load %struct.kvm*, %struct.kvm** %11, align 8
  %70 = getelementptr inbounds %struct.kvm, %struct.kvm* %69, i32 0, i32 2
  %71 = call i32 @spin_lock(i32* %70)
  %72 = load %struct.kvm*, %struct.kvm** %11, align 8
  %73 = load i64, i64* %22, align 8
  %74 = call i64 @mmu_notifier_retry(%struct.kvm* %72, i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %68
  %77 = load %struct.kvm*, %struct.kvm** %11, align 8
  %78 = getelementptr inbounds %struct.kvm, %struct.kvm* %77, i32 0, i32 2
  %79 = call i32 @spin_unlock(i32* %78)
  %80 = load i32, i32* %16, align 4
  %81 = call i32 @kvm_release_pfn_clean(i32 %80)
  br label %53

82:                                               ; preds = %68
  %83 = load %struct.kvm*, %struct.kvm** %11, align 8
  %84 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %12, align 8
  %85 = load i64, i64* %7, align 8
  %86 = call i32* @kvm_mips_pte_for_gpa(%struct.kvm* %83, %struct.kvm_mmu_memory_cache* %84, i64 %85)
  store i32* %86, i32** %17, align 8
  %87 = load i64, i64* @_PAGE_PRESENT, align 8
  %88 = load i64, i64* @__READABLE, align 8
  %89 = or i64 %87, %88
  %90 = load i64, i64* @_page_cachable_default, align 8
  %91 = or i64 %89, %90
  store i64 %91, i64* %21, align 8
  %92 = load i32, i32* %20, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %82
  %95 = load i64, i64* @_PAGE_WRITE, align 8
  %96 = load i64, i64* %21, align 8
  %97 = or i64 %96, %95
  store i64 %97, i64* %21, align 8
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %94
  %101 = load i64, i64* @__WRITEABLE, align 8
  %102 = load i64, i64* %21, align 8
  %103 = or i64 %102, %101
  store i64 %103, i64* %21, align 8
  %104 = load %struct.kvm*, %struct.kvm** %11, align 8
  %105 = load i64, i64* %13, align 8
  %106 = call i32 @mark_page_dirty(%struct.kvm* %104, i64 %105)
  %107 = load i32, i32* %16, align 4
  %108 = call i32 @kvm_set_pfn_dirty(i32 %107)
  br label %109

109:                                              ; preds = %100, %94
  br label %110

110:                                              ; preds = %109, %82
  %111 = load i32, i32* %16, align 4
  %112 = load i64, i64* %21, align 8
  %113 = call i32 @__pgprot(i64 %112)
  %114 = call i32 @pfn_pte(i32 %111, i32 %113)
  store i32 %114, i32* %18, align 4
  %115 = load i32*, i32** %17, align 8
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %19, align 4
  %117 = load i32*, i32** %17, align 8
  %118 = load i32, i32* %18, align 4
  %119 = call i32 @set_pte(i32* %117, i32 %118)
  store i32 0, i32* %15, align 4
  %120 = load i32*, i32** %9, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %110
  %123 = load i32*, i32** %17, align 8
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %9, align 8
  store i32 %124, i32* %125, align 4
  br label %126

126:                                              ; preds = %122, %110
  %127 = load i32*, i32** %10, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load i32*, i32** %17, align 8
  %131 = call i32* @ptep_buddy(i32* %130)
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %10, align 8
  store i32 %132, i32* %133, align 4
  br label %134

134:                                              ; preds = %129, %126
  %135 = load %struct.kvm*, %struct.kvm** %11, align 8
  %136 = getelementptr inbounds %struct.kvm, %struct.kvm* %135, i32 0, i32 2
  %137 = call i32 @spin_unlock(i32* %136)
  %138 = load i32, i32* %16, align 4
  %139 = call i32 @kvm_release_pfn_clean(i32 %138)
  %140 = load i32, i32* %16, align 4
  %141 = call i32 @kvm_set_pfn_accessed(i32 %140)
  br label %142

142:                                              ; preds = %134, %65, %51, %43
  %143 = load %struct.kvm*, %struct.kvm** %11, align 8
  %144 = getelementptr inbounds %struct.kvm, %struct.kvm* %143, i32 0, i32 1
  %145 = load i32, i32* %14, align 4
  %146 = call i32 @srcu_read_unlock(i32* %144, i32 %145)
  %147 = load i32, i32* %15, align 4
  ret i32 %147
}

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local i32 @_kvm_mips_map_page_fast(%struct.kvm_vcpu*, i64, i32, i32*, i32*) #1

declare dso_local i32 @mmu_topup_memory_cache(%struct.kvm_mmu_memory_cache*, i32, i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @gfn_to_pfn_prot(%struct.kvm*, i64, i32, i32*) #1

declare dso_local i64 @is_error_noslot_pfn(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @mmu_notifier_retry(%struct.kvm*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kvm_release_pfn_clean(i32) #1

declare dso_local i32* @kvm_mips_pte_for_gpa(%struct.kvm*, %struct.kvm_mmu_memory_cache*, i64) #1

declare dso_local i32 @mark_page_dirty(%struct.kvm*, i64) #1

declare dso_local i32 @kvm_set_pfn_dirty(i32) #1

declare dso_local i32 @pfn_pte(i32, i32) #1

declare dso_local i32 @__pgprot(i64) #1

declare dso_local i32 @set_pte(i32*, i32) #1

declare dso_local i32* @ptep_buddy(i32*) #1

declare dso_local i32 @kvm_set_pfn_accessed(i32) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
