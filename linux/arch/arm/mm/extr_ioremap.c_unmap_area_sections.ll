; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_ioremap.c_unmap_area_sections.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_ioremap.c_unmap_area_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@SZ_1M = common dso_local global i32 0, align 4
@init_mm = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@PMD_TYPE_MASK = common dso_local global i32 0, align 4
@PMD_TYPE_TABLE = common dso_local global i32 0, align 4
@PMD_SIZE = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @unmap_area_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmap_area_sections(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i64, i64* %3, align 8
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i32, i32* @SZ_1M, align 4
  %15 = sub nsw i32 %14, 1
  %16 = xor i32 %15, -1
  %17 = sext i32 %16 to i64
  %18 = and i64 %13, %17
  %19 = add i64 %12, %18
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @flush_cache_vunmap(i64 %20, i64 %21)
  %23 = load i64, i64* %5, align 8
  %24 = call i32* @pgd_offset_k(i64 %23)
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32* @pud_offset(i32* %25, i64 %26)
  store i32* %27, i32** %8, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32* @pmd_offset(i32* %28, i64 %29)
  store i32* %30, i32** %9, align 8
  br label %31

31:                                               ; preds = %59, %2
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @pmd_none(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %31
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @pmd_clear(i32* %38)
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @init_mm, i32 0, i32 0, i32 0), align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @init_mm, i32 0, i32 0, i32 0), align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @pmd_val(i32 %42)
  %44 = load i32, i32* @PMD_TYPE_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @PMD_TYPE_TABLE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @pmd_page_vaddr(i32 %49)
  %51 = call i32 @pte_free_kernel(%struct.TYPE_9__* @init_mm, i32 %50)
  br label %52

52:                                               ; preds = %48, %37
  br label %53

53:                                               ; preds = %52, %31
  %54 = load i64, i64* @PMD_SIZE, align 8
  %55 = load i64, i64* %5, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %5, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  store i32* %58, i32** %9, align 8
  br label %59

59:                                               ; preds = %53
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %31, label %63

63:                                               ; preds = %59
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @init_mm, i32 0, i32 0, i32 0), align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %63
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = call i32 @__check_vmalloc_seq(%struct.TYPE_11__* %75)
  br label %77

77:                                               ; preds = %72, %63
  %78 = load i64, i64* %3, align 8
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @flush_tlb_kernel_range(i64 %78, i64 %79)
  ret void
}

declare dso_local i32 @flush_cache_vunmap(i64, i64) #1

declare dso_local i32* @pgd_offset_k(i64) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @pmd_none(i32) #1

declare dso_local i32 @pmd_clear(i32*) #1

declare dso_local i32 @pmd_val(i32) #1

declare dso_local i32 @pte_free_kernel(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @pmd_page_vaddr(i32) #1

declare dso_local i32 @__check_vmalloc_seq(%struct.TYPE_11__*) #1

declare dso_local i32 @flush_tlb_kernel_range(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
