; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_alloc_table.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_alloc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmap = type { i32, i32 }
%struct.page = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@CRST_ALLOC_ORDER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@_REGION_ENTRY_INVALID = common dso_local global i64 0, align 8
@_REGION_ENTRY_LENGTH = common dso_local global i64 0, align 8
@_REGION_ENTRY_TYPE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gmap*, i64*, i64, i64)* @gmap_alloc_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmap_alloc_table(%struct.gmap* %0, i64* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gmap*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i64*, align 8
  store %struct.gmap* %0, %struct.gmap** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = load i32, i32* @CRST_ALLOC_ORDER, align 4
  %14 = call %struct.page* @alloc_pages(i32 %12, i32 %13)
  store %struct.page* %14, %struct.page** %10, align 8
  %15 = load %struct.page*, %struct.page** %10, align 8
  %16 = icmp ne %struct.page* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %65

20:                                               ; preds = %4
  %21 = load %struct.page*, %struct.page** %10, align 8
  %22 = call i64 @page_to_phys(%struct.page* %21)
  %23 = inttoptr i64 %22 to i64*
  store i64* %23, i64** %11, align 8
  %24 = load i64*, i64** %11, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @crst_table_init(i64* %24, i64 %25)
  %27 = load %struct.gmap*, %struct.gmap** %6, align 8
  %28 = getelementptr inbounds %struct.gmap, %struct.gmap* %27, i32 0, i32 0
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load i64*, i64** %7, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @_REGION_ENTRY_INVALID, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %20
  %36 = load %struct.page*, %struct.page** %10, align 8
  %37 = getelementptr inbounds %struct.page, %struct.page* %36, i32 0, i32 1
  %38 = load %struct.gmap*, %struct.gmap** %6, align 8
  %39 = getelementptr inbounds %struct.gmap, %struct.gmap* %38, i32 0, i32 1
  %40 = call i32 @list_add(i32* %37, i32* %39)
  %41 = load i64*, i64** %11, align 8
  %42 = ptrtoint i64* %41 to i64
  %43 = load i64, i64* @_REGION_ENTRY_LENGTH, align 8
  %44 = or i64 %42, %43
  %45 = load i64*, i64** %7, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @_REGION_ENTRY_TYPE_MASK, align 8
  %48 = and i64 %46, %47
  %49 = or i64 %44, %48
  %50 = load i64*, i64** %7, align 8
  store i64 %49, i64* %50, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.page*, %struct.page** %10, align 8
  %53 = getelementptr inbounds %struct.page, %struct.page* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  store %struct.page* null, %struct.page** %10, align 8
  br label %54

54:                                               ; preds = %35, %20
  %55 = load %struct.gmap*, %struct.gmap** %6, align 8
  %56 = getelementptr inbounds %struct.gmap, %struct.gmap* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock(i32* %56)
  %58 = load %struct.page*, %struct.page** %10, align 8
  %59 = icmp ne %struct.page* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.page*, %struct.page** %10, align 8
  %62 = load i32, i32* @CRST_ALLOC_ORDER, align 4
  %63 = call i32 @__free_pages(%struct.page* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %54
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %17
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i64 @page_to_phys(%struct.page*) #1

declare dso_local i32 @crst_table_init(i64*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
