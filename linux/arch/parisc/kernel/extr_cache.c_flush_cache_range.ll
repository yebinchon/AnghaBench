; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_cache.c_flush_cache_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_cache.c_flush_cache_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32* }

@CONFIG_SMP = common dso_local global i32 0, align 4
@parisc_cache_flush_threshold = common dso_local global i64 0, align 8
@VM_EXEC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_cache_range(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* @CONFIG_SMP, align 4
  %12 = call i32 @IS_ENABLED(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = call i32 (...) @arch_irqs_disabled()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %14, %3
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %5, align 8
  %20 = sub i64 %18, %19
  %21 = load i64, i64* @parisc_cache_flush_threshold, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @flush_tlb_range(%struct.vm_area_struct* %31, i64 %32, i64 %33)
  br label %35

35:                                               ; preds = %30, %23
  %36 = call i32 (...) @flush_cache_all()
  br label %122

37:                                               ; preds = %17, %14
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @mfsp(i32 3)
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %37
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @flush_user_dcache_range_asm(i64 %46, i64 %47)
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @VM_EXEC, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @flush_user_icache_range_asm(i64 %56, i64 %57)
  br label %59

59:                                               ; preds = %55, %45
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @flush_tlb_range(%struct.vm_area_struct* %60, i64 %61, i64 %62)
  br label %122

64:                                               ; preds = %37
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %66 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %65, i32 0, i32 3
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %7, align 8
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %71 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %8, align 8
  br label %73

73:                                               ; preds = %118, %64
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %76 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ult i64 %74, %77
  br i1 %78, label %79, label %122

79:                                               ; preds = %73
  %80 = load i32*, i32** %7, align 8
  %81 = load i64, i64* %8, align 8
  %82 = call i32* @get_ptep(i32* %80, i64 %81)
  store i32* %82, i32** %10, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  br label %118

86:                                               ; preds = %79
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @pte_pfn(i32 %88)
  store i64 %89, i64* %9, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call i64 @pfn_valid(i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %117

93:                                               ; preds = %86
  %94 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %95 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %94, i32 0, i32 3
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @unlikely(i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %93
  %102 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %103 = load i64, i64* %8, align 8
  %104 = call i32 @flush_tlb_page(%struct.vm_area_struct* %102, i64 %103)
  %105 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %106 = load i64, i64* %8, align 8
  %107 = load i64, i64* %9, align 8
  %108 = call i32 @PFN_PHYS(i64 %107)
  %109 = call i32 @__flush_cache_page(%struct.vm_area_struct* %105, i64 %106, i32 %108)
  br label %116

110:                                              ; preds = %93
  %111 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %112 = load i64, i64* %8, align 8
  %113 = load i64, i64* %9, align 8
  %114 = call i32 @PFN_PHYS(i64 %113)
  %115 = call i32 @__purge_cache_page(%struct.vm_area_struct* %111, i64 %112, i32 %114)
  br label %116

116:                                              ; preds = %110, %101
  br label %117

117:                                              ; preds = %116, %86
  br label %118

118:                                              ; preds = %117, %85
  %119 = load i64, i64* @PAGE_SIZE, align 8
  %120 = load i64, i64* %8, align 8
  %121 = add i64 %120, %119
  store i64 %121, i64* %8, align 8
  br label %73

122:                                              ; preds = %35, %59, %73
  ret void
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @arch_irqs_disabled(...) #1

declare dso_local i32 @flush_tlb_range(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @flush_cache_all(...) #1

declare dso_local i64 @mfsp(i32) #1

declare dso_local i32 @flush_user_dcache_range_asm(i64, i64) #1

declare dso_local i32 @flush_user_icache_range_asm(i64, i64) #1

declare dso_local i32* @get_ptep(i32*, i64) #1

declare dso_local i64 @pte_pfn(i32) #1

declare dso_local i64 @pfn_valid(i64) #1

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
