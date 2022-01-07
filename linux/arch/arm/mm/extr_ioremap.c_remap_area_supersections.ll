; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_ioremap.c_remap_area_supersections.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_ioremap.c_remap_area_supersections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_type = type { i64 }

@PMD_SECT_SUPER = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PMD_SIZE = common dso_local global i64 0, align 8
@SUPERSECTION_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, %struct.mem_type*)* @remap_area_supersections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remap_area_supersections(i64 %0, i64 %1, i64 %2, %struct.mem_type* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mem_type*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.mem_type* %3, %struct.mem_type** %8, align 8
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %7, align 8
  %19 = add i64 %17, %18
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @unmap_area_sections(i64 %20, i64 %21)
  %23 = load i64, i64* %5, align 8
  %24 = call i32* @pgd_offset_k(i64 %23)
  store i32* %24, i32** %11, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i32* @pud_offset(i32* %25, i64 %26)
  store i32* %27, i32** %12, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32* @pmd_offset(i32* %28, i64 %29)
  store i32* %30, i32** %13, align 8
  br label %31

31:                                               ; preds = %78, %4
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @__pfn_to_phys(i64 %32)
  %34 = load %struct.mem_type*, %struct.mem_type** %8, align 8
  %35 = getelementptr inbounds %struct.mem_type, %struct.mem_type* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = or i64 %33, %36
  %38 = load i64, i64* @PMD_SECT_SUPER, align 8
  %39 = or i64 %37, %38
  store i64 %39, i64* %14, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i32, i32* @PAGE_SHIFT, align 4
  %42 = sub nsw i32 32, %41
  %43 = zext i32 %42 to i64
  %44 = lshr i64 %40, %43
  %45 = and i64 %44, 15
  %46 = shl i64 %45, 20
  %47 = load i64, i64* %14, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %14, align 8
  store i64 0, i64* %15, align 8
  br label %49

49:                                               ; preds = %68, %31
  %50 = load i64, i64* %15, align 8
  %51 = icmp ult i64 %50, 8
  br i1 %51, label %52, label %71

52:                                               ; preds = %49
  %53 = load i64, i64* %14, align 8
  %54 = call i32 @__pmd(i64 %53)
  %55 = load i32*, i32** %13, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 %54, i32* %56, align 4
  %57 = load i64, i64* %14, align 8
  %58 = call i32 @__pmd(i64 %57)
  %59 = load i32*, i32** %13, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 %58, i32* %60, align 4
  %61 = load i32*, i32** %13, align 8
  %62 = call i32 @flush_pmd_entry(i32* %61)
  %63 = load i64, i64* @PMD_SIZE, align 8
  %64 = load i64, i64* %9, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %9, align 8
  %66 = load i32*, i32** %13, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  store i32* %67, i32** %13, align 8
  br label %68

68:                                               ; preds = %52
  %69 = load i64, i64* %15, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %15, align 8
  br label %49

71:                                               ; preds = %49
  %72 = load i32, i32* @SUPERSECTION_SIZE, align 4
  %73 = load i32, i32* @PAGE_SHIFT, align 4
  %74 = ashr i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %6, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %6, align 8
  br label %78

78:                                               ; preds = %71
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* %10, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %31, label %82

82:                                               ; preds = %78
  ret i32 0
}

declare dso_local i32 @unmap_area_sections(i64, i64) #1

declare dso_local i32* @pgd_offset_k(i64) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @__pfn_to_phys(i64) #1

declare dso_local i32 @__pmd(i64) #1

declare dso_local i32 @flush_pmd_entry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
