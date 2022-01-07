; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache-sh4.c_sh4_flush_cache_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache-sh4.c_sh4_flush_cache_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.flusher_data = type { i64, i64, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i64, i32 }
%struct.page = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@NO_CONTEXT = common dso_local global i64 0, align 8
@_PAGE_PRESENT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@current_cpu_data = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@PG_dcache_clean = common dso_local global i32 0, align 4
@CACHE_OC_ADDRESS_ARRAY = common dso_local global i64 0, align 8
@shm_align_mask = common dso_local global i64 0, align 8
@VM_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sh4_flush_cache_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh4_flush_cache_page(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.flusher_data*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = bitcast i8* %15 to %struct.flusher_data*
  store %struct.flusher_data* %16, %struct.flusher_data** %3, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.flusher_data*, %struct.flusher_data** %3, align 8
  %18 = getelementptr inbounds %struct.flusher_data, %struct.flusher_data* %17, i32 0, i32 2
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %18, align 8
  store %struct.vm_area_struct* %19, %struct.vm_area_struct** %4, align 8
  %20 = load %struct.flusher_data*, %struct.flusher_data** %3, align 8
  %21 = getelementptr inbounds %struct.flusher_data, %struct.flusher_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PAGE_MASK, align 8
  %24 = and i64 %22, %23
  store i64 %24, i64* %6, align 8
  %25 = load %struct.flusher_data*, %struct.flusher_data** %3, align 8
  %26 = getelementptr inbounds %struct.flusher_data, %struct.flusher_data* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @PAGE_SHIFT, align 8
  %30 = shl i64 %28, %29
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call %struct.page* @pfn_to_page(i64 %31)
  store %struct.page* %32, %struct.page** %5, align 8
  %33 = call i32 (...) @smp_processor_id()
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @cpu_context(i32 %33, i64 %36)
  %38 = load i64, i64* @NO_CONTEXT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %1
  br label %129

41:                                               ; preds = %1
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %43 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32* @pgd_offset(i64 %44, i64 %45)
  store i32* %46, i32** %10, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32* @pud_offset(i32* %47, i64 %48)
  store i32* %49, i32** %11, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32* @pmd_offset(i32* %50, i64 %51)
  store i32* %52, i32** %12, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32* @pte_offset_kernel(i32* %53, i64 %54)
  store i32* %55, i32** %13, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pte_val(i32 %57)
  %59 = load i32, i32* @_PAGE_PRESENT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %41
  br label %129

63:                                               ; preds = %41
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %65 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  store i8* null, i8** %14, align 8
  br label %100

72:                                               ; preds = %63
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @current_cpu_data, i32 0, i32 0, i32 0), align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load i32, i32* @PG_dcache_clean, align 4
  %77 = load %struct.page*, %struct.page** %5, align 8
  %78 = getelementptr inbounds %struct.page, %struct.page* %77, i32 0, i32 0
  %79 = call i64 @test_bit(i32 %76, i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load %struct.page*, %struct.page** %5, align 8
  %83 = call i64 @page_mapcount(%struct.page* %82)
  %84 = icmp ne i64 %83, 0
  br label %85

85:                                               ; preds = %81, %75, %72
  %86 = phi i1 [ false, %75 ], [ false, %72 ], [ %84, %81 ]
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load %struct.page*, %struct.page** %5, align 8
  %92 = load i64, i64* %6, align 8
  %93 = call i8* @kmap_coherent(%struct.page* %91, i64 %92)
  store i8* %93, i8** %14, align 8
  br label %97

94:                                               ; preds = %85
  %95 = load %struct.page*, %struct.page** %5, align 8
  %96 = call i8* @kmap_atomic(%struct.page* %95)
  store i8* %96, i8** %14, align 8
  br label %97

97:                                               ; preds = %94, %90
  %98 = load i8*, i8** %14, align 8
  %99 = ptrtoint i8* %98 to i64
  store i64 %99, i64* %6, align 8
  br label %100

100:                                              ; preds = %97, %71
  %101 = load i64, i64* @CACHE_OC_ADDRESS_ARRAY, align 8
  %102 = load i64, i64* %6, align 8
  %103 = load i64, i64* @shm_align_mask, align 8
  %104 = and i64 %102, %103
  %105 = or i64 %101, %104
  %106 = load i64, i64* %8, align 8
  %107 = call i32 @flush_cache_one(i64 %105, i64 %106)
  %108 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %109 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @VM_EXEC, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %100
  %115 = call i32 (...) @flush_icache_all()
  br label %116

116:                                              ; preds = %114, %100
  %117 = load i8*, i8** %14, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %129

119:                                              ; preds = %116
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i8*, i8** %14, align 8
  %124 = call i32 @kunmap_coherent(i8* %123)
  br label %128

125:                                              ; preds = %119
  %126 = load i8*, i8** %14, align 8
  %127 = call i32 @kunmap_atomic(i8* %126)
  br label %128

128:                                              ; preds = %125, %122
  br label %129

129:                                              ; preds = %40, %62, %128, %116
  ret void
}

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i64 @cpu_context(i32, i64) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32* @pgd_offset(i64, i64) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32* @pte_offset_kernel(i32*, i64) #1

declare dso_local i32 @pte_val(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @page_mapcount(%struct.page*) #1

declare dso_local i8* @kmap_coherent(%struct.page*, i64) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @flush_cache_one(i64, i64) #1

declare dso_local i32 @flush_icache_all(...) #1

declare dso_local i32 @kunmap_coherent(i8*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
