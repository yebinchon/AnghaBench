; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c___gmap_unshadow_r3t.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c___gmap_unshadow_r3t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmap = type { i32 }
%struct.page = type { i32 }

@_CRST_ENTRIES = common dso_local global i32 0, align 4
@_REGION_ENTRY_ORIGIN = common dso_local global i64 0, align 8
@_REGION3_ENTRY_EMPTY = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@CRST_ALLOC_ORDER = common dso_local global i32 0, align 4
@_REGION3_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gmap*, i64, i64*)* @__gmap_unshadow_r3t to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__gmap_unshadow_r3t(%struct.gmap* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.gmap*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  store %struct.gmap* %0, %struct.gmap** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load %struct.gmap*, %struct.gmap** %4, align 8
  %11 = call i32 @gmap_is_shadow(%struct.gmap* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %59, %3
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @_CRST_ENTRIES, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %65

20:                                               ; preds = %16
  %21 = load i64*, i64** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @_REGION_ENTRY_ORIGIN, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  br label %59

30:                                               ; preds = %20
  %31 = load i64*, i64** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @_REGION_ENTRY_ORIGIN, align 8
  %37 = and i64 %35, %36
  %38 = inttoptr i64 %37 to i64*
  store i64* %38, i64** %7, align 8
  %39 = load i64, i64* @_REGION3_ENTRY_EMPTY, align 8
  %40 = load i64*, i64** %6, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  store i64 %39, i64* %43, align 8
  %44 = load %struct.gmap*, %struct.gmap** %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64*, i64** %7, align 8
  %47 = call i32 @__gmap_unshadow_sgt(%struct.gmap* %44, i64 %45, i64* %46)
  %48 = load i64*, i64** %7, align 8
  %49 = call i32 @__pa(i64* %48)
  %50 = load i32, i32* @PAGE_SHIFT, align 4
  %51 = ashr i32 %49, %50
  %52 = call %struct.page* @pfn_to_page(i32 %51)
  store %struct.page* %52, %struct.page** %8, align 8
  %53 = load %struct.page*, %struct.page** %8, align 8
  %54 = getelementptr inbounds %struct.page, %struct.page* %53, i32 0, i32 0
  %55 = call i32 @list_del(i32* %54)
  %56 = load %struct.page*, %struct.page** %8, align 8
  %57 = load i32, i32* @CRST_ALLOC_ORDER, align 4
  %58 = call i32 @__free_pages(%struct.page* %56, i32 %57)
  br label %59

59:                                               ; preds = %30, %29
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  %62 = load i64, i64* @_REGION3_SIZE, align 8
  %63 = load i64, i64* %5, align 8
  %64 = add i64 %63, %62
  store i64 %64, i64* %5, align 8
  br label %16

65:                                               ; preds = %16
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gmap_is_shadow(%struct.gmap*) #1

declare dso_local i32 @__gmap_unshadow_sgt(%struct.gmap*, i64, i64*) #1

declare dso_local %struct.page* @pfn_to_page(i32) #1

declare dso_local i32 @__pa(i64*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
