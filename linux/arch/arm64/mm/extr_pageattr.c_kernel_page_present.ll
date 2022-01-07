; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/mm/extr_pageattr.c_kernel_page_present.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/mm/extr_pageattr.c_kernel_page_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@rodata_full = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kernel_page_present(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %11 = load %struct.page*, %struct.page** %3, align 8
  %12 = call i64 @page_address(%struct.page* %11)
  store i64 %12, i64* %10, align 8
  %13 = call i32 (...) @debug_pagealloc_enabled()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @rodata_full, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %68

19:                                               ; preds = %15, %1
  %20 = load i64, i64* %10, align 8
  %21 = call i32* @pgd_offset_k(i64 %20)
  store i32* %21, i32** %4, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @READ_ONCE(i32 %23)
  %25 = call i64 @pgd_none(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %68

28:                                               ; preds = %19
  %29 = load i32*, i32** %4, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i32* @pud_offset(i32* %29, i64 %30)
  store i32* %31, i32** %5, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @READ_ONCE(i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @pud_none(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %68

39:                                               ; preds = %28
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @pud_sect(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %68

44:                                               ; preds = %39
  %45 = load i32*, i32** %5, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i32* @pmd_offset(i32* %45, i64 %46)
  store i32* %47, i32** %7, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @READ_ONCE(i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i64 @pmd_none(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %68

55:                                               ; preds = %44
  %56 = load i32, i32* %8, align 4
  %57 = call i64 @pmd_sect(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 1, i32* %2, align 4
  br label %68

60:                                               ; preds = %55
  %61 = load i32*, i32** %7, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call i32* @pte_offset_kernel(i32* %61, i64 %62)
  store i32* %63, i32** %9, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @READ_ONCE(i32 %65)
  %67 = call i32 @pte_valid(i32 %66)
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %60, %59, %54, %43, %38, %27, %18
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @debug_pagealloc_enabled(...) #1

declare dso_local i32* @pgd_offset_k(i64) #1

declare dso_local i64 @pgd_none(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_none(i32) #1

declare dso_local i64 @pud_sect(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i64 @pmd_sect(i32) #1

declare dso_local i32* @pte_offset_kernel(i32*, i64) #1

declare dso_local i32 @pte_valid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
