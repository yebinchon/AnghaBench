; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_flush.c___flush_dcache_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_flush.c___flush_dcache_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__flush_dcache_page(%struct.address_space* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.address_space* %0, %struct.address_space** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %8 = load %struct.page*, %struct.page** %4, align 8
  %9 = call i32 @PageHighMem(%struct.page* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.page*, %struct.page** %4, align 8
  %13 = call i8* @page_address(%struct.page* %12)
  %14 = load %struct.page*, %struct.page** %4, align 8
  %15 = call i32 @page_size(%struct.page* %14)
  %16 = call i32 @__cpuc_flush_dcache_area(i8* %13, i32 %15)
  br label %67

17:                                               ; preds = %2
  %18 = call i64 (...) @cache_is_vipt_nonaliasing()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %17
  store i64 0, i64* %5, align 8
  br label %21

21:                                               ; preds = %36, %20
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.page*, %struct.page** %4, align 8
  %24 = call i64 @compound_nr(%struct.page* %23)
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load %struct.page*, %struct.page** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.page, %struct.page* %27, i64 %28
  %30 = call i8* @kmap_atomic(%struct.page* %29)
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = call i32 @__cpuc_flush_dcache_area(i8* %31, i32 %32)
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @kunmap_atomic(i8* %34)
  br label %36

36:                                               ; preds = %26
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %5, align 8
  br label %21

39:                                               ; preds = %21
  br label %66

40:                                               ; preds = %17
  store i64 0, i64* %5, align 8
  br label %41

41:                                               ; preds = %62, %40
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.page*, %struct.page** %4, align 8
  %44 = call i64 @compound_nr(%struct.page* %43)
  %45 = icmp ult i64 %42, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %41
  %47 = load %struct.page*, %struct.page** %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds %struct.page, %struct.page* %47, i64 %48
  %50 = call i8* @kmap_high_get(%struct.page* %49)
  store i8* %50, i8** %7, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = call i32 @__cpuc_flush_dcache_area(i8* %54, i32 %55)
  %57 = load %struct.page*, %struct.page** %4, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds %struct.page, %struct.page* %57, i64 %58
  %60 = call i32 @kunmap_high(%struct.page* %59)
  br label %61

61:                                               ; preds = %53, %46
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %5, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %5, align 8
  br label %41

65:                                               ; preds = %41
  br label %66

66:                                               ; preds = %65, %39
  br label %67

67:                                               ; preds = %66, %11
  %68 = load %struct.address_space*, %struct.address_space** %3, align 8
  %69 = icmp ne %struct.address_space* %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = call i64 (...) @cache_is_vipt_aliasing()
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load %struct.page*, %struct.page** %4, align 8
  %75 = call i32 @page_to_pfn(%struct.page* %74)
  %76 = load %struct.page*, %struct.page** %4, align 8
  %77 = getelementptr inbounds %struct.page, %struct.page* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @PAGE_SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = call i32 @flush_pfn_alias(i32 %75, i32 %80)
  br label %82

82:                                               ; preds = %73, %70, %67
  ret void
}

declare dso_local i32 @PageHighMem(%struct.page*) #1

declare dso_local i32 @__cpuc_flush_dcache_area(i8*, i32) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @page_size(%struct.page*) #1

declare dso_local i64 @cache_is_vipt_nonaliasing(...) #1

declare dso_local i64 @compound_nr(%struct.page*) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i8* @kmap_high_get(%struct.page*) #1

declare dso_local i32 @kunmap_high(%struct.page*) #1

declare dso_local i64 @cache_is_vipt_aliasing(...) #1

declare dso_local i32 @flush_pfn_alias(i32, i32) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
