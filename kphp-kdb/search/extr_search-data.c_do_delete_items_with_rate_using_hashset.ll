; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_do_delete_items_with_rate_using_hashset.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_do_delete_items_with_rate_using_hashset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.hashset_int = type { i32 }
%struct.list_itemid_entry = type { %struct.list_itemid_entry*, i32 }

@Q_order = common dso_local global i64 0, align 8
@IHE = common dso_local global %struct.TYPE_6__* null, align 8
@universal_tag_hash = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_delete_items_with_rate_using_hashset(%struct.hashset_int* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hashset_int*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.list_itemid_entry*, align 8
  %7 = alloca %struct.list_itemid_entry*, align 8
  %8 = alloca %struct.list_itemid_entry*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  store %struct.hashset_int* %0, %struct.hashset_int** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.list_itemid_entry* null, %struct.list_itemid_entry** %6, align 8
  store %struct.list_itemid_entry* null, %struct.list_itemid_entry** %7, align 8
  store i64 0, i64* @Q_order, align 8
  %11 = call i32 (...) @clear_res()
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @IHE, align 8
  %13 = load i32, i32* @universal_tag_hash, align 4
  %14 = call i32 @ihe_init(%struct.TYPE_6__* %12, i32 %13, i32 1, i32 0)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

17:                                               ; preds = %2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @IHE, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %9, align 8
  br label %19

19:                                               ; preds = %58, %17
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = icmp ne %struct.TYPE_7__* %22, null
  br i1 %23, label %24, label %61

24:                                               ; preds = %19
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @get_rate_item(%struct.TYPE_7__* %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %24
  %33 = load %struct.hashset_int*, %struct.hashset_int** %4, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @hashset_int_get(%struct.hashset_int* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %32
  %38 = call %struct.list_itemid_entry* @zmalloc(i32 16)
  store %struct.list_itemid_entry* %38, %struct.list_itemid_entry** %8, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.list_itemid_entry*, %struct.list_itemid_entry** %8, align 8
  %45 = getelementptr inbounds %struct.list_itemid_entry, %struct.list_itemid_entry* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.list_itemid_entry*, %struct.list_itemid_entry** %8, align 8
  %47 = getelementptr inbounds %struct.list_itemid_entry, %struct.list_itemid_entry* %46, i32 0, i32 0
  store %struct.list_itemid_entry* null, %struct.list_itemid_entry** %47, align 8
  %48 = load %struct.list_itemid_entry*, %struct.list_itemid_entry** %6, align 8
  %49 = icmp ne %struct.list_itemid_entry* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %37
  %51 = load %struct.list_itemid_entry*, %struct.list_itemid_entry** %8, align 8
  %52 = load %struct.list_itemid_entry*, %struct.list_itemid_entry** %7, align 8
  %53 = getelementptr inbounds %struct.list_itemid_entry, %struct.list_itemid_entry* %52, i32 0, i32 0
  store %struct.list_itemid_entry* %51, %struct.list_itemid_entry** %53, align 8
  %54 = load %struct.list_itemid_entry*, %struct.list_itemid_entry** %8, align 8
  store %struct.list_itemid_entry* %54, %struct.list_itemid_entry** %7, align 8
  br label %57

55:                                               ; preds = %37
  %56 = load %struct.list_itemid_entry*, %struct.list_itemid_entry** %8, align 8
  store %struct.list_itemid_entry* %56, %struct.list_itemid_entry** %7, align 8
  store %struct.list_itemid_entry* %56, %struct.list_itemid_entry** %6, align 8
  br label %57

57:                                               ; preds = %55, %50
  br label %58

58:                                               ; preds = %57, %32, %24
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %60 = call i32 @ihe_advance(%struct.TYPE_6__* %59)
  br label %19

61:                                               ; preds = %19
  %62 = load %struct.list_itemid_entry*, %struct.list_itemid_entry** %6, align 8
  %63 = call i32 @do_delete_items_list(%struct.list_itemid_entry* %62)
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %61, %16
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @clear_res(...) #1

declare dso_local i32 @ihe_init(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @get_rate_item(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @hashset_int_get(%struct.hashset_int*, i32) #1

declare dso_local %struct.list_itemid_entry* @zmalloc(i32) #1

declare dso_local i32 @ihe_advance(%struct.TYPE_6__*) #1

declare dso_local i32 @do_delete_items_list(%struct.list_itemid_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
