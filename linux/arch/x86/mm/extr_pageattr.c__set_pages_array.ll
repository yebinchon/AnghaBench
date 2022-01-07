; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c__set_pages_array.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c__set_pages_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@_PAGE_CACHE_MODE_WC = common dso_local global i32 0, align 4
@_PAGE_CACHE_MODE_UC_MINUS = common dso_local global i32 0, align 4
@_PAGE_CACHE_MASK = common dso_local global i32 0, align 4
@CPA_PAGES_ARRAY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page**, i32, i32)* @_set_pages_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_set_pages_array(%struct.page** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.page**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.page** %0, %struct.page*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %46, %3
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %14
  %19 = load %struct.page**, %struct.page*** %5, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.page*, %struct.page** %19, i64 %21
  %23 = load %struct.page*, %struct.page** %22, align 8
  %24 = call i64 @PageHighMem(%struct.page* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %46

27:                                               ; preds = %18
  %28 = load %struct.page**, %struct.page*** %5, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.page*, %struct.page** %28, i64 %30
  %32 = load %struct.page*, %struct.page** %31, align 8
  %33 = call i64 @page_to_pfn(%struct.page* %32)
  %34 = load i64, i64* @PAGE_SHIFT, align 8
  %35 = shl i64 %33, %34
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @PAGE_SIZE, align 8
  %38 = add i64 %36, %37
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @reserve_memtype(i64 %39, i64 %40, i32 %41, i32* null)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %27
  br label %84

45:                                               ; preds = %27
  br label %46

46:                                               ; preds = %45, %26
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %14

49:                                               ; preds = %14
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @_PAGE_CACHE_MODE_WC, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @_PAGE_CACHE_MODE_UC_MINUS, align 4
  br label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  store i32 %58, i32* %10, align 4
  %59 = load %struct.page**, %struct.page*** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @cachemode2pgprot(i32 %61)
  %63 = call i32 @cpa_set_pages_array(%struct.page** %59, i32 %60, i32 %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %57
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @_PAGE_CACHE_MODE_WC, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @_PAGE_CACHE_MODE_WC, align 4
  %73 = call i32 @cachemode2pgprot(i32 %72)
  %74 = load i32, i32* @_PAGE_CACHE_MASK, align 4
  %75 = call i32 @__pgprot(i32 %74)
  %76 = load i32, i32* @CPA_PAGES_ARRAY, align 4
  %77 = load %struct.page**, %struct.page*** %5, align 8
  %78 = call i32 @change_page_attr_set_clr(i32* null, i32 %71, i32 %73, i32 %75, i32 0, i32 %76, %struct.page** %77)
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %70, %66, %57
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %84

83:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %120

84:                                               ; preds = %82, %44
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %86

86:                                               ; preds = %114, %84
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %117

90:                                               ; preds = %86
  %91 = load %struct.page**, %struct.page*** %5, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.page*, %struct.page** %91, i64 %93
  %95 = load %struct.page*, %struct.page** %94, align 8
  %96 = call i64 @PageHighMem(%struct.page* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %114

99:                                               ; preds = %90
  %100 = load %struct.page**, %struct.page*** %5, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.page*, %struct.page** %100, i64 %102
  %104 = load %struct.page*, %struct.page** %103, align 8
  %105 = call i64 @page_to_pfn(%struct.page* %104)
  %106 = load i64, i64* @PAGE_SHIFT, align 8
  %107 = shl i64 %105, %106
  store i64 %107, i64* %8, align 8
  %108 = load i64, i64* %8, align 8
  %109 = load i64, i64* @PAGE_SIZE, align 8
  %110 = add i64 %108, %109
  store i64 %110, i64* %9, align 8
  %111 = load i64, i64* %8, align 8
  %112 = load i64, i64* %9, align 8
  %113 = call i32 @free_memtype(i64 %111, i64 %112)
  br label %114

114:                                              ; preds = %99, %98
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %86

117:                                              ; preds = %86
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %117, %83
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i64 @PageHighMem(%struct.page*) #1

declare dso_local i64 @page_to_pfn(%struct.page*) #1

declare dso_local i64 @reserve_memtype(i64, i64, i32, i32*) #1

declare dso_local i32 @cpa_set_pages_array(%struct.page**, i32, i32) #1

declare dso_local i32 @cachemode2pgprot(i32) #1

declare dso_local i32 @change_page_attr_set_clr(i32*, i32, i32, i32, i32, i32, %struct.page**) #1

declare dso_local i32 @__pgprot(i32) #1

declare dso_local i32 @free_memtype(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
