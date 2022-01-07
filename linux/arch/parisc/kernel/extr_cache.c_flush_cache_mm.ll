; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_cache.c_flush_cache_mm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_cache.c_flush_cache_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i64, %struct.vm_area_struct*, i32* }
%struct.vm_area_struct = type { i64, i64, i32, %struct.vm_area_struct* }

@CONFIG_SMP = common dso_local global i32 0, align 4
@parisc_cache_flush_threshold = common dso_local global i64 0, align 8
@VM_EXEC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_cache_mm(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %8 = load i32, i32* @CONFIG_SMP, align 4
  %9 = call i32 @IS_ENABLED(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = call i32 (...) @arch_irqs_disabled()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %16 = call i64 @mm_total_size(%struct.mm_struct* %15)
  %17 = load i64, i64* @parisc_cache_flush_threshold, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %21 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 (...) @flush_tlb_all()
  br label %26

26:                                               ; preds = %24, %19
  %27 = call i32 (...) @flush_cache_all()
  br label %143

28:                                               ; preds = %14, %11
  %29 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %30 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @mfsp(i32 3)
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %77

34:                                               ; preds = %28
  %35 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %36 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %35, i32 0, i32 1
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %36, align 8
  store %struct.vm_area_struct* %37, %struct.vm_area_struct** %3, align 8
  br label %38

38:                                               ; preds = %72, %34
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %40 = icmp ne %struct.vm_area_struct* %39, null
  br i1 %40, label %41, label %76

41:                                               ; preds = %38
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %43 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %46 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @flush_user_dcache_range_asm(i64 %44, i64 %47)
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @VM_EXEC, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %41
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %57 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %60 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @flush_user_icache_range_asm(i64 %58, i64 %61)
  br label %63

63:                                               ; preds = %55, %41
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %66 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %69 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @flush_tlb_range(%struct.vm_area_struct* %64, i64 %67, i64 %70)
  br label %72

72:                                               ; preds = %63
  %73 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %74 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %73, i32 0, i32 3
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %74, align 8
  store %struct.vm_area_struct* %75, %struct.vm_area_struct** %3, align 8
  br label %38

76:                                               ; preds = %38
  br label %143

77:                                               ; preds = %28
  %78 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %79 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %4, align 8
  %81 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %82 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %81, i32 0, i32 1
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %82, align 8
  store %struct.vm_area_struct* %83, %struct.vm_area_struct** %3, align 8
  br label %84

84:                                               ; preds = %139, %77
  %85 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %86 = icmp ne %struct.vm_area_struct* %85, null
  br i1 %86, label %87, label %143

87:                                               ; preds = %84
  %88 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %89 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %5, align 8
  br label %91

91:                                               ; preds = %134, %87
  %92 = load i64, i64* %5, align 8
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %94 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ult i64 %92, %95
  br i1 %96, label %97, label %138

97:                                               ; preds = %91
  %98 = load i32*, i32** %4, align 8
  %99 = load i64, i64* %5, align 8
  %100 = call i32* @get_ptep(i32* %98, i64 %99)
  store i32* %100, i32** %7, align 8
  %101 = load i32*, i32** %7, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %97
  br label %134

104:                                              ; preds = %97
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @pte_pfn(i32 %106)
  store i64 %107, i64* %6, align 8
  %108 = load i64, i64* %6, align 8
  %109 = call i32 @pfn_valid(i64 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %104
  br label %134

112:                                              ; preds = %104
  %113 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %114 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @unlikely(i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %112
  %119 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %120 = load i64, i64* %5, align 8
  %121 = call i32 @flush_tlb_page(%struct.vm_area_struct* %119, i64 %120)
  %122 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %123 = load i64, i64* %5, align 8
  %124 = load i64, i64* %6, align 8
  %125 = call i32 @PFN_PHYS(i64 %124)
  %126 = call i32 @__flush_cache_page(%struct.vm_area_struct* %122, i64 %123, i32 %125)
  br label %133

127:                                              ; preds = %112
  %128 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %129 = load i64, i64* %5, align 8
  %130 = load i64, i64* %6, align 8
  %131 = call i32 @PFN_PHYS(i64 %130)
  %132 = call i32 @__purge_cache_page(%struct.vm_area_struct* %128, i64 %129, i32 %131)
  br label %133

133:                                              ; preds = %127, %118
  br label %134

134:                                              ; preds = %133, %111, %103
  %135 = load i64, i64* @PAGE_SIZE, align 8
  %136 = load i64, i64* %5, align 8
  %137 = add i64 %136, %135
  store i64 %137, i64* %5, align 8
  br label %91

138:                                              ; preds = %91
  br label %139

139:                                              ; preds = %138
  %140 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %141 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %140, i32 0, i32 3
  %142 = load %struct.vm_area_struct*, %struct.vm_area_struct** %141, align 8
  store %struct.vm_area_struct* %142, %struct.vm_area_struct** %3, align 8
  br label %84

143:                                              ; preds = %26, %76, %84
  ret void
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @arch_irqs_disabled(...) #1

declare dso_local i64 @mm_total_size(%struct.mm_struct*) #1

declare dso_local i32 @flush_tlb_all(...) #1

declare dso_local i32 @flush_cache_all(...) #1

declare dso_local i64 @mfsp(i32) #1

declare dso_local i32 @flush_user_dcache_range_asm(i64, i64) #1

declare dso_local i32 @flush_user_icache_range_asm(i64, i64) #1

declare dso_local i32 @flush_tlb_range(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i32* @get_ptep(i32*, i64) #1

declare dso_local i64 @pte_pfn(i32) #1

declare dso_local i32 @pfn_valid(i64) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @flush_tlb_page(%struct.vm_area_struct*, i64) #1

declare dso_local i32 @__flush_cache_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @PFN_PHYS(i64) #1

declare dso_local i32 @__purge_cache_page(%struct.vm_area_struct*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
