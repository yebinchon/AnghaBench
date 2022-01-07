; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/mm/extr_cache.c_flush_dcache_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/mm/extr_cache.c_flush_dcache_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64, i32 }
%struct.address_space = type { i32 }

@PG_dc_clean = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_dcache_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %6 = call i32 (...) @cache_is_vipt_aliasing()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @PG_dc_clean, align 4
  %10 = load %struct.page*, %struct.page** %2, align 8
  %11 = getelementptr inbounds %struct.page, %struct.page* %10, i32 0, i32 1
  %12 = call i32 @clear_bit(i32 %9, i32* %11)
  br label %50

13:                                               ; preds = %1
  %14 = load %struct.page*, %struct.page** %2, align 8
  %15 = call %struct.address_space* @page_mapping_file(%struct.page* %14)
  store %struct.address_space* %15, %struct.address_space** %3, align 8
  %16 = load %struct.address_space*, %struct.address_space** %3, align 8
  %17 = icmp ne %struct.address_space* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %50

19:                                               ; preds = %13
  %20 = load %struct.address_space*, %struct.address_space** %3, align 8
  %21 = call i32 @mapping_mapped(%struct.address_space* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @PG_dc_clean, align 4
  %25 = load %struct.page*, %struct.page** %2, align 8
  %26 = getelementptr inbounds %struct.page, %struct.page* %25, i32 0, i32 1
  %27 = call i32 @clear_bit(i32 %24, i32* %26)
  br label %50

28:                                               ; preds = %19
  %29 = load %struct.page*, %struct.page** %2, align 8
  %30 = call i64 @page_mapcount(%struct.page* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = load %struct.page*, %struct.page** %2, align 8
  %34 = call i64 @page_address(%struct.page* %33)
  store i64 %34, i64* %4, align 8
  %35 = load %struct.page*, %struct.page** %2, align 8
  %36 = getelementptr inbounds %struct.page, %struct.page* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PAGE_SHIFT, align 8
  %39 = shl i64 %37, %38
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i64 @addr_not_cache_congruent(i64 %40, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %32
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @__flush_dcache_page(i64 %45, i64 %46)
  br label %48

48:                                               ; preds = %44, %32
  br label %49

49:                                               ; preds = %48, %28
  br label %50

50:                                               ; preds = %8, %18, %49, %23
  ret void
}

declare dso_local i32 @cache_is_vipt_aliasing(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local %struct.address_space* @page_mapping_file(%struct.page*) #1

declare dso_local i32 @mapping_mapped(%struct.address_space*) #1

declare dso_local i64 @page_mapcount(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i64 @addr_not_cache_congruent(i64, i64) #1

declare dso_local i32 @__flush_dcache_page(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
