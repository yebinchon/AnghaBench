; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_dma-mapping.c_dma_cache_maint_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_dma-mapping.c_dma_cache_maint_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i64, i64, i32, void (i8*, i64, i32)*)* @dma_cache_maint_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_cache_maint_page(%struct.page* %0, i64 %1, i64 %2, i32 %3, void (i8*, i64, i32)* %4) #0 {
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca void (i8*, i64, i32)*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.page* %0, %struct.page** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store void (i8*, i64, i32)* %4, void (i8*, i64, i32)** %10, align 8
  %15 = load i64, i64* %8, align 8
  store i64 %15, i64* %12, align 8
  %16 = load %struct.page*, %struct.page** %6, align 8
  %17 = call i64 @page_to_pfn(%struct.page* %16)
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @PAGE_SIZE, align 8
  %20 = udiv i64 %18, %19
  %21 = add i64 %17, %20
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* @PAGE_SIZE, align 8
  %23 = load i64, i64* %7, align 8
  %24 = urem i64 %23, %22
  store i64 %24, i64* %7, align 8
  br label %25

25:                                               ; preds = %87, %5
  %26 = load i64, i64* %12, align 8
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %11, align 8
  %28 = call %struct.page* @pfn_to_page(i64 %27)
  store %struct.page* %28, %struct.page** %6, align 8
  %29 = load %struct.page*, %struct.page** %6, align 8
  %30 = call i64 @PageHighMem(%struct.page* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %72

32:                                               ; preds = %25
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %33, %34
  %36 = load i64, i64* @PAGE_SIZE, align 8
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i64, i64* @PAGE_SIZE, align 8
  %40 = load i64, i64* %7, align 8
  %41 = sub i64 %39, %40
  store i64 %41, i64* %13, align 8
  br label %42

42:                                               ; preds = %38, %32
  %43 = call i64 (...) @cache_is_vipt_nonaliasing()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load %struct.page*, %struct.page** %6, align 8
  %47 = call i8* @kmap_atomic(%struct.page* %46)
  store i8* %47, i8** %14, align 8
  %48 = load void (i8*, i64, i32)*, void (i8*, i64, i32)** %10, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr i8, i8* %49, i64 %50
  %52 = load i64, i64* %13, align 8
  %53 = load i32, i32* %9, align 4
  call void %48(i8* %51, i64 %52, i32 %53)
  %54 = load i8*, i8** %14, align 8
  %55 = call i32 @kunmap_atomic(i8* %54)
  br label %71

56:                                               ; preds = %42
  %57 = load %struct.page*, %struct.page** %6, align 8
  %58 = call i8* @kmap_high_get(%struct.page* %57)
  store i8* %58, i8** %14, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = load void (i8*, i64, i32)*, void (i8*, i64, i32)** %10, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr i8, i8* %63, i64 %64
  %66 = load i64, i64* %13, align 8
  %67 = load i32, i32* %9, align 4
  call void %62(i8* %65, i64 %66, i32 %67)
  %68 = load %struct.page*, %struct.page** %6, align 8
  %69 = call i32 @kunmap_high(%struct.page* %68)
  br label %70

70:                                               ; preds = %61, %56
  br label %71

71:                                               ; preds = %70, %45
  br label %81

72:                                               ; preds = %25
  %73 = load %struct.page*, %struct.page** %6, align 8
  %74 = call i8* @page_address(%struct.page* %73)
  %75 = load i64, i64* %7, align 8
  %76 = getelementptr i8, i8* %74, i64 %75
  store i8* %76, i8** %14, align 8
  %77 = load void (i8*, i64, i32)*, void (i8*, i64, i32)** %10, align 8
  %78 = load i8*, i8** %14, align 8
  %79 = load i64, i64* %13, align 8
  %80 = load i32, i32* %9, align 4
  call void %77(i8* %78, i64 %79, i32 %80)
  br label %81

81:                                               ; preds = %72, %71
  store i64 0, i64* %7, align 8
  %82 = load i64, i64* %11, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %11, align 8
  %84 = load i64, i64* %13, align 8
  %85 = load i64, i64* %12, align 8
  %86 = sub i64 %85, %84
  store i64 %86, i64* %12, align 8
  br label %87

87:                                               ; preds = %81
  %88 = load i64, i64* %12, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %25, label %90

90:                                               ; preds = %87
  ret void
}

declare dso_local i64 @page_to_pfn(%struct.page*) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i64 @PageHighMem(%struct.page*) #1

declare dso_local i64 @cache_is_vipt_nonaliasing(...) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i8* @kmap_high_get(%struct.page*) #1

declare dso_local i32 @kunmap_high(%struct.page*) #1

declare dso_local i8* @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
