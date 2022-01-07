; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_shadow_pgt_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_shadow_pgt_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmap = type { i32 }
%struct.page = type { i64 }

@_SEGMENT_ENTRY_INVALID = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@GMAP_SHADOW_FAKE_TABLE = common dso_local global i64 0, align 8
@_SEGMENT_ENTRY_PROTECT = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gmap_shadow_pgt_lookup(%struct.gmap* %0, i64 %1, i64* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.gmap*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  store %struct.gmap* %0, %struct.gmap** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.gmap*, %struct.gmap** %6, align 8
  %15 = call i32 @gmap_is_shadow(%struct.gmap* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.gmap*, %struct.gmap** %6, align 8
  %21 = getelementptr inbounds %struct.gmap, %struct.gmap* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.gmap*, %struct.gmap** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i64* @gmap_table_walk(%struct.gmap* %23, i64 %24, i32 1)
  store i64* %25, i64** %11, align 8
  %26 = load i64*, i64** %11, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %28, label %66

28:                                               ; preds = %5
  %29 = load i64*, i64** %11, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @_SEGMENT_ENTRY_INVALID, align 8
  %32 = and i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %66, label %34

34:                                               ; preds = %28
  %35 = load i64*, i64** %11, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PAGE_SHIFT, align 8
  %38 = lshr i64 %36, %37
  %39 = call %struct.page* @pfn_to_page(i64 %38)
  store %struct.page* %39, %struct.page** %12, align 8
  %40 = load %struct.page*, %struct.page** %12, align 8
  %41 = getelementptr inbounds %struct.page, %struct.page* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @GMAP_SHADOW_FAKE_TABLE, align 8
  %44 = xor i64 %43, -1
  %45 = and i64 %42, %44
  %46 = load i64*, i64** %8, align 8
  store i64 %45, i64* %46, align 8
  %47 = load i64*, i64** %11, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @_SEGMENT_ENTRY_PROTECT, align 8
  %50 = and i64 %48, %49
  %51 = icmp ne i64 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = load i32*, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  %56 = load %struct.page*, %struct.page** %12, align 8
  %57 = getelementptr inbounds %struct.page, %struct.page* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @GMAP_SHADOW_FAKE_TABLE, align 8
  %60 = and i64 %58, %59
  %61 = icmp ne i64 %60, 0
  %62 = xor i1 %61, true
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = load i32*, i32** %10, align 8
  store i32 %64, i32* %65, align 4
  store i32 0, i32* %13, align 4
  br label %69

66:                                               ; preds = %28, %5
  %67 = load i32, i32* @EAGAIN, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %66, %34
  %70 = load %struct.gmap*, %struct.gmap** %6, align 8
  %71 = getelementptr inbounds %struct.gmap, %struct.gmap* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = load i32, i32* %13, align 4
  ret i32 %73
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gmap_is_shadow(%struct.gmap*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64* @gmap_table_walk(%struct.gmap*, i64, i32) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
