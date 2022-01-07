; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_cache.c___flush_dcache_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_cache.c___flush_dcache_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__flush_dcache_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %5 = load %struct.page*, %struct.page** %2, align 8
  %6 = call %struct.address_space* @page_mapping_file(%struct.page* %5)
  store %struct.address_space* %6, %struct.address_space** %3, align 8
  %7 = load %struct.address_space*, %struct.address_space** %3, align 8
  %8 = icmp ne %struct.address_space* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.address_space*, %struct.address_space** %3, align 8
  %11 = call i32 @mapping_mapped(%struct.address_space* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load %struct.page*, %struct.page** %2, align 8
  %15 = call i32 @SetPageDcacheDirty(%struct.page* %14)
  br label %36

16:                                               ; preds = %9, %1
  %17 = load %struct.page*, %struct.page** %2, align 8
  %18 = call i64 @PageHighMem(%struct.page* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.page*, %struct.page** %2, align 8
  %22 = call i64 @kmap_atomic(%struct.page* %21)
  store i64 %22, i64* %4, align 8
  br label %26

23:                                               ; preds = %16
  %24 = load %struct.page*, %struct.page** %2, align 8
  %25 = call i64 @page_address(%struct.page* %24)
  store i64 %25, i64* %4, align 8
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @flush_data_cache_page(i64 %27)
  %29 = load %struct.page*, %struct.page** %2, align 8
  %30 = call i64 @PageHighMem(%struct.page* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i64, i64* %4, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @__kunmap_atomic(i8* %34)
  br label %36

36:                                               ; preds = %13, %32, %26
  ret void
}

declare dso_local %struct.address_space* @page_mapping_file(%struct.page*) #1

declare dso_local i32 @mapping_mapped(%struct.address_space*) #1

declare dso_local i32 @SetPageDcacheDirty(%struct.page*) #1

declare dso_local i64 @PageHighMem(%struct.page*) #1

declare dso_local i64 @kmap_atomic(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @flush_data_cache_page(i64) #1

declare dso_local i32 @__kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
