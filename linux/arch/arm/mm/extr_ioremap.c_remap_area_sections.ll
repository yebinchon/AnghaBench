; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_ioremap.c_remap_area_sections.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_ioremap.c_remap_area_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_type = type { i32 }

@SZ_1M = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PMD_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, %struct.mem_type*)* @remap_area_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remap_area_sections(i64 %0, i64 %1, i64 %2, %struct.mem_type* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mem_type*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.mem_type* %3, %struct.mem_type** %8, align 8
  %14 = load i64, i64* %5, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %7, align 8
  %17 = add i64 %15, %16
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @unmap_area_sections(i64 %18, i64 %19)
  %21 = load i64, i64* %9, align 8
  %22 = call i32* @pgd_offset_k(i64 %21)
  store i32* %22, i32** %11, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i32* @pud_offset(i32* %23, i64 %24)
  store i32* %25, i32** %12, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32* @pmd_offset(i32* %26, i64 %27)
  store i32* %28, i32** %13, align 8
  br label %29

29:                                               ; preds = %65, %4
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @__pfn_to_phys(i64 %30)
  %32 = load %struct.mem_type*, %struct.mem_type** %8, align 8
  %33 = getelementptr inbounds %struct.mem_type, %struct.mem_type* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %31, %34
  %36 = call i32 @__pmd(i32 %35)
  %37 = load i32*, i32** %13, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %36, i32* %38, align 4
  %39 = load i64, i64* @SZ_1M, align 8
  %40 = load i64, i64* @PAGE_SHIFT, align 8
  %41 = lshr i64 %39, %40
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @__pfn_to_phys(i64 %44)
  %46 = load %struct.mem_type*, %struct.mem_type** %8, align 8
  %47 = getelementptr inbounds %struct.mem_type, %struct.mem_type* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %45, %48
  %50 = call i32 @__pmd(i32 %49)
  %51 = load i32*, i32** %13, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 %50, i32* %52, align 4
  %53 = load i64, i64* @SZ_1M, align 8
  %54 = load i64, i64* @PAGE_SHIFT, align 8
  %55 = lshr i64 %53, %54
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %6, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = call i32 @flush_pmd_entry(i32* %58)
  %60 = load i64, i64* @PMD_SIZE, align 8
  %61 = load i64, i64* %9, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %9, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  store i32* %64, i32** %13, align 8
  br label %65

65:                                               ; preds = %29
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* %10, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %29, label %69

69:                                               ; preds = %65
  ret i32 0
}

declare dso_local i32 @unmap_area_sections(i64, i64) #1

declare dso_local i32* @pgd_offset_k(i64) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @__pmd(i32) #1

declare dso_local i32 @__pfn_to_phys(i64) #1

declare dso_local i32 @flush_pmd_entry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
