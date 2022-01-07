; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-tx39.c_tx39_flush_cache_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-tx39.c_tx39_flush_cache_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32, %struct.mm_struct* }

@VM_EXEC = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@_PAGE_PRESENT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@_PAGE_VALID = common dso_local global i32 0, align 4
@cpu_has_dc_aliases = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*, i64, i64)* @tx39_flush_cache_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx39_flush_cache_page(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @VM_EXEC, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 1
  %20 = load %struct.mm_struct*, %struct.mm_struct** %19, align 8
  store %struct.mm_struct* %20, %struct.mm_struct** %8, align 8
  %21 = call i32 (...) @smp_processor_id()
  %22 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %23 = call i64 @cpu_context(i32 %21, %struct.mm_struct* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %93

26:                                               ; preds = %3
  %27 = load i64, i64* @PAGE_MASK, align 8
  %28 = load i64, i64* %5, align 8
  %29 = and i64 %28, %27
  store i64 %29, i64* %5, align 8
  %30 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32* @pgd_offset(%struct.mm_struct* %30, i64 %31)
  store i32* %32, i32** %9, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i32* @pud_offset(i32* %33, i64 %34)
  store i32* %35, i32** %10, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32* @pmd_offset(i32* %36, i64 %37)
  store i32* %38, i32** %11, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i32* @pte_offset(i32* %39, i64 %40)
  store i32* %41, i32** %12, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pte_val(i32 %43)
  %45 = load i32, i32* @_PAGE_PRESENT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %26
  br label %93

49:                                               ; preds = %26
  %50 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load %struct.mm_struct*, %struct.mm_struct** %52, align 8
  %54 = icmp eq %struct.mm_struct* %50, %53
  br i1 %54, label %55, label %78

55:                                               ; preds = %49
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pte_val(i32 %57)
  %59 = load i32, i32* @_PAGE_VALID, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %55
  %63 = load i64, i64* @cpu_has_dc_aliases, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65, %62
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @tx39_blast_dcache_page(i64 %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i64, i64* %5, align 8
  %76 = call i32 @tx39_blast_icache_page(i64 %75)
  br label %77

77:                                               ; preds = %74, %71
  br label %93

78:                                               ; preds = %55, %49
  %79 = load i64, i64* @cpu_has_dc_aliases, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81, %78
  %85 = load i64, i64* %5, align 8
  %86 = call i32 @tx39_blast_dcache_page_indexed(i64 %85)
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i64, i64* %5, align 8
  %92 = call i32 @tx39_blast_icache_page_indexed(i64 %91)
  br label %93

93:                                               ; preds = %25, %48, %77, %90, %87
  ret void
}

declare dso_local i64 @cpu_context(i32, %struct.mm_struct*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32* @pte_offset(i32*, i64) #1

declare dso_local i32 @pte_val(i32) #1

declare dso_local i32 @tx39_blast_dcache_page(i64) #1

declare dso_local i32 @tx39_blast_icache_page(i64) #1

declare dso_local i32 @tx39_blast_dcache_page_indexed(i64) #1

declare dso_local i32 @tx39_blast_icache_page_indexed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
