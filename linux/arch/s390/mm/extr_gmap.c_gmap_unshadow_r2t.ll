; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_unshadow_r2t.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_unshadow_r2t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmap = type { i32 }
%struct.page = type { i32 }

@_REGION_ENTRY_ORIGIN = common dso_local global i64 0, align 8
@_REGION1_SIZE = common dso_local global i64 0, align 8
@_REGION1_INDEX = common dso_local global i64 0, align 8
@_REGION1_SHIFT = common dso_local global i64 0, align 8
@_ASCE_TYPE_REGION1 = common dso_local global i64 0, align 8
@_REGION1_ENTRY_EMPTY = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@CRST_ALLOC_ORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gmap*, i64)* @gmap_unshadow_r2t to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmap_unshadow_r2t(%struct.gmap* %0, i64 %1) #0 {
  %3 = alloca %struct.gmap*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.page*, align 8
  store %struct.gmap* %0, %struct.gmap** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.gmap*, %struct.gmap** %3, align 8
  %10 = call i32 @gmap_is_shadow(%struct.gmap* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.gmap*, %struct.gmap** %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i64* @gmap_table_walk(%struct.gmap* %15, i64 %16, i32 4)
  store i64* %17, i64** %6, align 8
  %18 = load i64*, i64** %6, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i64*, i64** %6, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @_REGION_ENTRY_ORIGIN, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20, %2
  br label %71

27:                                               ; preds = %20
  %28 = load %struct.gmap*, %struct.gmap** %3, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @_REGION1_SIZE, align 8
  %32 = add i64 %30, %31
  %33 = sub i64 %32, 1
  %34 = call i32 @gmap_call_notifier(%struct.gmap* %28, i64 %29, i64 %33)
  %35 = load i64*, i64** %6, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @_REGION1_INDEX, align 8
  %38 = and i64 %36, %37
  %39 = load i64, i64* @_REGION1_SHIFT, align 8
  %40 = lshr i64 %38, %39
  %41 = sub i64 0, %40
  %42 = getelementptr inbounds i64, i64* %35, i64 %41
  %43 = ptrtoint i64* %42 to i64
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @_ASCE_TYPE_REGION1, align 8
  %46 = or i64 %44, %45
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @gmap_idte_one(i64 %46, i64 %47)
  %49 = load i64*, i64** %6, align 8
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @_REGION_ENTRY_ORIGIN, align 8
  %52 = and i64 %50, %51
  %53 = inttoptr i64 %52 to i64*
  store i64* %53, i64** %7, align 8
  %54 = load i64, i64* @_REGION1_ENTRY_EMPTY, align 8
  %55 = load i64*, i64** %6, align 8
  store i64 %54, i64* %55, align 8
  %56 = load %struct.gmap*, %struct.gmap** %3, align 8
  %57 = load i64, i64* %4, align 8
  %58 = load i64*, i64** %7, align 8
  %59 = call i32 @__gmap_unshadow_r2t(%struct.gmap* %56, i64 %57, i64* %58)
  %60 = load i64*, i64** %7, align 8
  %61 = call i32 @__pa(i64* %60)
  %62 = load i32, i32* @PAGE_SHIFT, align 4
  %63 = ashr i32 %61, %62
  %64 = call %struct.page* @pfn_to_page(i32 %63)
  store %struct.page* %64, %struct.page** %8, align 8
  %65 = load %struct.page*, %struct.page** %8, align 8
  %66 = getelementptr inbounds %struct.page, %struct.page* %65, i32 0, i32 0
  %67 = call i32 @list_del(i32* %66)
  %68 = load %struct.page*, %struct.page** %8, align 8
  %69 = load i32, i32* @CRST_ALLOC_ORDER, align 4
  %70 = call i32 @__free_pages(%struct.page* %68, i32 %69)
  br label %71

71:                                               ; preds = %27, %26
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gmap_is_shadow(%struct.gmap*) #1

declare dso_local i64* @gmap_table_walk(%struct.gmap*, i64, i32) #1

declare dso_local i32 @gmap_call_notifier(%struct.gmap*, i64, i64) #1

declare dso_local i32 @gmap_idte_one(i64, i64) #1

declare dso_local i32 @__gmap_unshadow_r2t(%struct.gmap*, i64, i64*) #1

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
