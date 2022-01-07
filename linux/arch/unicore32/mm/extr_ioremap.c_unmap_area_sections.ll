; ModuleID = '/home/carl/AnghaBench/linux/arch/unicore32/mm/extr_ioremap.c_unmap_area_sections.c'
source_filename = "/home/carl/AnghaBench/linux/arch/unicore32/mm/extr_ioremap.c_unmap_area_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SZ_4M = common dso_local global i32 0, align 4
@PMD_TYPE_MASK = common dso_local global i32 0, align 4
@PMD_TYPE_TABLE = common dso_local global i32 0, align 4
@init_mm = common dso_local global i32 0, align 4
@PGDIR_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @unmap_area_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmap_area_sections(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* %3, align 8
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i32, i32* @SZ_4M, align 4
  %14 = sub nsw i32 %13, 1
  %15 = xor i32 %14, -1
  %16 = sext i32 %15 to i64
  %17 = and i64 %12, %16
  %18 = add i64 %11, %17
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @flush_cache_vunmap(i64 %19, i64 %20)
  %22 = load i64, i64* %5, align 8
  %23 = call i32* @pgd_offset_k(i64 %22)
  store i32* %23, i32** %7, align 8
  br label %24

24:                                               ; preds = %53, %2
  %25 = load i32*, i32** %7, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32* @pmd_offset(i32* %25, i64 %26)
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @pmd_none(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %24
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @pmd_clear(i32* %34)
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @pmd_val(i32 %36)
  %38 = load i32, i32* @PMD_TYPE_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @PMD_TYPE_TABLE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @pmd_page_vaddr(i32 %43)
  %45 = call i32 @pte_free_kernel(i32* @init_mm, i32 %44)
  br label %46

46:                                               ; preds = %42, %33
  br label %47

47:                                               ; preds = %46, %24
  %48 = load i64, i64* @PGDIR_SIZE, align 8
  %49 = load i64, i64* %5, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %5, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %7, align 8
  br label %53

53:                                               ; preds = %47
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %24, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @flush_tlb_kernel_range(i64 %58, i64 %59)
  ret void
}

declare dso_local i32 @flush_cache_vunmap(i64, i64) #1

declare dso_local i32* @pgd_offset_k(i64) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @pmd_none(i32) #1

declare dso_local i32 @pmd_clear(i32*) #1

declare dso_local i32 @pmd_val(i32) #1

declare dso_local i32 @pte_free_kernel(i32*, i32) #1

declare dso_local i32 @pmd_page_vaddr(i32) #1

declare dso_local i32 @flush_tlb_kernel_range(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
