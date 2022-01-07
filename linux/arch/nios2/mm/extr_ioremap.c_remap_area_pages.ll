; ModuleID = '/home/carl/AnghaBench/linux/arch/nios2/mm/extr_ioremap.c_remap_area_pages.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nios2/mm/extr_ioremap.c_remap_area_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@init_mm = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PGDIR_SIZE = common dso_local global i64 0, align 8
@PGDIR_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64)* @remap_area_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remap_area_pages(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %7, align 8
  %16 = add i64 %14, %15
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = sub i64 %18, %17
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32* @pgd_offset(i32* @init_mm, i64 %20)
  store i32* %21, i32** %10, align 8
  %22 = call i32 (...) @flush_cache_all()
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = call i32 (...) @BUG()
  br label %28

28:                                               ; preds = %26, %4
  br label %29

29:                                               ; preds = %73, %28
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32* @pud_alloc(i32* @init_mm, i32* %32, i64 %33)
  store i32* %34, i32** %12, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  br label %75

38:                                               ; preds = %29
  %39 = load i32*, i32** %12, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i32* @pmd_alloc(i32* @init_mm, i32* %39, i64 %40)
  store i32* %41, i32** %13, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %75

45:                                               ; preds = %38
  %46 = load i32*, i32** %13, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %5, align 8
  %50 = sub i64 %48, %49
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %5, align 8
  %53 = add i64 %51, %52
  %54 = load i64, i64* %8, align 8
  %55 = call i64 @remap_area_pmd(i32* %46, i64 %47, i64 %50, i64 %53, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  br label %75

58:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* @PGDIR_SIZE, align 8
  %61 = add i64 %59, %60
  %62 = load i64, i64* @PGDIR_MASK, align 8
  %63 = and i64 %61, %62
  store i64 %63, i64* %5, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %10, align 8
  br label %66

66:                                               ; preds = %58
  %67 = load i64, i64* %5, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* %11, align 8
  %72 = icmp ult i64 %70, %71
  br label %73

73:                                               ; preds = %69, %66
  %74 = phi i1 [ false, %66 ], [ %72, %69 ]
  br i1 %74, label %29, label %75

75:                                               ; preds = %73, %57, %44, %37
  %76 = call i32 (...) @flush_tlb_all()
  %77 = load i32, i32* %9, align 4
  ret i32 %77
}

declare dso_local i32* @pgd_offset(i32*, i64) #1

declare dso_local i32 @flush_cache_all(...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32* @pud_alloc(i32*, i32*, i64) #1

declare dso_local i32* @pmd_alloc(i32*, i32*, i64) #1

declare dso_local i64 @remap_area_pmd(i32*, i64, i64, i64, i64) #1

declare dso_local i32 @flush_tlb_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
