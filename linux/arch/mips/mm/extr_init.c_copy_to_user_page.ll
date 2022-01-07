; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_init.c_copy_to_user_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_init.c_copy_to_user_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }

@cpu_has_dc_aliases = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@VM_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_to_user_page(%struct.vm_area_struct* %0, %struct.page* %1, i64 %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load i64, i64* @cpu_has_dc_aliases, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %6
  %17 = load %struct.page*, %struct.page** %8, align 8
  %18 = call i64 @page_mapcount(%struct.page* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = load %struct.page*, %struct.page** %8, align 8
  %22 = call i32 @Page_dcache_dirty(%struct.page* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %20
  %25 = load %struct.page*, %struct.page** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i8* @kmap_coherent(%struct.page* %25, i64 %26)
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @PAGE_MASK, align 8
  %30 = xor i64 %29, -1
  %31 = and i64 %28, %30
  %32 = getelementptr i8, i8* %27, i64 %31
  store i8* %32, i8** %13, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = load i64, i64* %12, align 8
  %36 = call i32 @memcpy(i8* %33, i8* %34, i64 %35)
  %37 = call i32 (...) @kunmap_coherent()
  br label %49

38:                                               ; preds = %20, %16, %6
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @memcpy(i8* %39, i8* %40, i64 %41)
  %43 = load i64, i64* @cpu_has_dc_aliases, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load %struct.page*, %struct.page** %8, align 8
  %47 = call i32 @SetPageDcacheDirty(%struct.page* %46)
  br label %48

48:                                               ; preds = %45, %38
  br label %49

49:                                               ; preds = %48, %24
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @VM_EXEC, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load %struct.page*, %struct.page** %8, align 8
  %60 = call i32 @page_to_pfn(%struct.page* %59)
  %61 = call i32 @flush_cache_page(%struct.vm_area_struct* %57, i64 %58, i32 %60)
  br label %62

62:                                               ; preds = %56, %49
  ret void
}

declare dso_local i64 @page_mapcount(%struct.page*) #1

declare dso_local i32 @Page_dcache_dirty(%struct.page*) #1

declare dso_local i8* @kmap_coherent(%struct.page*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @kunmap_coherent(...) #1

declare dso_local i32 @SetPageDcacheDirty(%struct.page*) #1

declare dso_local i32 @flush_cache_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
