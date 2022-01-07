; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_do_delete_items_with_hash_using_hashset.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_do_delete_items_with_hash_using_hashset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.hashset_ll = type { i32 }
%struct.list_itemid_entry = type { %struct.list_itemid_entry*, i32 }

@Q_order = common dso_local global i64 0, align 8
@IHE = common dso_local global %struct.TYPE_6__* null, align 8
@universal_tag_hash = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_delete_items_with_hash_using_hashset(%struct.hashset_ll* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hashset_ll*, align 8
  %4 = alloca %struct.list_itemid_entry*, align 8
  %5 = alloca %struct.list_itemid_entry*, align 8
  %6 = alloca %struct.list_itemid_entry*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  store %struct.hashset_ll* %0, %struct.hashset_ll** %3, align 8
  store %struct.list_itemid_entry* null, %struct.list_itemid_entry** %4, align 8
  store %struct.list_itemid_entry* null, %struct.list_itemid_entry** %5, align 8
  store i64 0, i64* @Q_order, align 8
  %9 = call i32 (...) @clear_res()
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @IHE, align 8
  %11 = load i32, i32* @universal_tag_hash, align 4
  %12 = call i32 @ihe_init(%struct.TYPE_6__* %10, i32 %11, i32 1, i32 0)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

15:                                               ; preds = %1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @IHE, align 8
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %7, align 8
  br label %17

17:                                               ; preds = %55, %15
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = icmp ne %struct.TYPE_7__* %20, null
  br i1 %21, label %22, label %58

22:                                               ; preds = %17
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = call i64 @get_hash_item(%struct.TYPE_7__* %25)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %22
  %30 = load %struct.hashset_ll*, %struct.hashset_ll** %3, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @hashset_ll_get(%struct.hashset_ll* %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %29
  %35 = call %struct.list_itemid_entry* @zmalloc(i32 16)
  store %struct.list_itemid_entry* %35, %struct.list_itemid_entry** %6, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.list_itemid_entry*, %struct.list_itemid_entry** %6, align 8
  %42 = getelementptr inbounds %struct.list_itemid_entry, %struct.list_itemid_entry* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.list_itemid_entry*, %struct.list_itemid_entry** %6, align 8
  %44 = getelementptr inbounds %struct.list_itemid_entry, %struct.list_itemid_entry* %43, i32 0, i32 0
  store %struct.list_itemid_entry* null, %struct.list_itemid_entry** %44, align 8
  %45 = load %struct.list_itemid_entry*, %struct.list_itemid_entry** %4, align 8
  %46 = icmp ne %struct.list_itemid_entry* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %34
  %48 = load %struct.list_itemid_entry*, %struct.list_itemid_entry** %6, align 8
  %49 = load %struct.list_itemid_entry*, %struct.list_itemid_entry** %5, align 8
  %50 = getelementptr inbounds %struct.list_itemid_entry, %struct.list_itemid_entry* %49, i32 0, i32 0
  store %struct.list_itemid_entry* %48, %struct.list_itemid_entry** %50, align 8
  %51 = load %struct.list_itemid_entry*, %struct.list_itemid_entry** %6, align 8
  store %struct.list_itemid_entry* %51, %struct.list_itemid_entry** %5, align 8
  br label %54

52:                                               ; preds = %34
  %53 = load %struct.list_itemid_entry*, %struct.list_itemid_entry** %6, align 8
  store %struct.list_itemid_entry* %53, %struct.list_itemid_entry** %5, align 8
  store %struct.list_itemid_entry* %53, %struct.list_itemid_entry** %4, align 8
  br label %54

54:                                               ; preds = %52, %47
  br label %55

55:                                               ; preds = %54, %29, %22
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %57 = call i32 @ihe_advance(%struct.TYPE_6__* %56)
  br label %17

58:                                               ; preds = %17
  %59 = load %struct.list_itemid_entry*, %struct.list_itemid_entry** %4, align 8
  %60 = call i32 @do_delete_items_list(%struct.list_itemid_entry* %59)
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %58, %14
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @clear_res(...) #1

declare dso_local i32 @ihe_init(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i64 @get_hash_item(%struct.TYPE_7__*) #1

declare dso_local i64 @hashset_ll_get(%struct.hashset_ll*, i64) #1

declare dso_local %struct.list_itemid_entry* @zmalloc(i32) #1

declare dso_local i32 @ihe_advance(%struct.TYPE_6__*) #1

declare dso_local i32 @do_delete_items_list(%struct.list_itemid_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
