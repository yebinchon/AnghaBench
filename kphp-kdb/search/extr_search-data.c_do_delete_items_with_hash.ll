; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_do_delete_items_with_hash.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_do_delete_items_with_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.list_itemid_entry = type { %struct.list_itemid_entry*, i32 }

@Q_order = common dso_local global i64 0, align 8
@IHE = common dso_local global %struct.TYPE_6__* null, align 8
@universal_tag_hash = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_delete_items_with_hash(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.list_itemid_entry*, align 8
  %5 = alloca %struct.list_itemid_entry*, align 8
  %6 = alloca %struct.list_itemid_entry*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.list_itemid_entry* null, %struct.list_itemid_entry** %4, align 8
  store %struct.list_itemid_entry* null, %struct.list_itemid_entry** %5, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

11:                                               ; preds = %1
  store i64 0, i64* @Q_order, align 8
  %12 = call i32 (...) @clear_res()
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @IHE, align 8
  %14 = load i32, i32* @universal_tag_hash, align 4
  %15 = call i32 @ihe_init(%struct.TYPE_6__* %13, i32 %14, i32 1, i32 0)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %59

18:                                               ; preds = %11
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @IHE, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %7, align 8
  br label %20

20:                                               ; preds = %53, %18
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = icmp ne %struct.TYPE_7__* %23, null
  br i1 %24, label %25, label %56

25:                                               ; preds = %20
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = call i64 @get_hash_item(%struct.TYPE_7__* %28)
  %30 = load i64, i64* %3, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %25
  %33 = call %struct.list_itemid_entry* @zmalloc(i32 16)
  store %struct.list_itemid_entry* %33, %struct.list_itemid_entry** %6, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.list_itemid_entry*, %struct.list_itemid_entry** %6, align 8
  %40 = getelementptr inbounds %struct.list_itemid_entry, %struct.list_itemid_entry* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.list_itemid_entry*, %struct.list_itemid_entry** %6, align 8
  %42 = getelementptr inbounds %struct.list_itemid_entry, %struct.list_itemid_entry* %41, i32 0, i32 0
  store %struct.list_itemid_entry* null, %struct.list_itemid_entry** %42, align 8
  %43 = load %struct.list_itemid_entry*, %struct.list_itemid_entry** %4, align 8
  %44 = icmp ne %struct.list_itemid_entry* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %32
  %46 = load %struct.list_itemid_entry*, %struct.list_itemid_entry** %6, align 8
  %47 = load %struct.list_itemid_entry*, %struct.list_itemid_entry** %5, align 8
  %48 = getelementptr inbounds %struct.list_itemid_entry, %struct.list_itemid_entry* %47, i32 0, i32 0
  store %struct.list_itemid_entry* %46, %struct.list_itemid_entry** %48, align 8
  %49 = load %struct.list_itemid_entry*, %struct.list_itemid_entry** %6, align 8
  store %struct.list_itemid_entry* %49, %struct.list_itemid_entry** %5, align 8
  br label %52

50:                                               ; preds = %32
  %51 = load %struct.list_itemid_entry*, %struct.list_itemid_entry** %6, align 8
  store %struct.list_itemid_entry* %51, %struct.list_itemid_entry** %5, align 8
  store %struct.list_itemid_entry* %51, %struct.list_itemid_entry** %4, align 8
  br label %52

52:                                               ; preds = %50, %45
  br label %53

53:                                               ; preds = %52, %25
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = call i32 @ihe_advance(%struct.TYPE_6__* %54)
  br label %20

56:                                               ; preds = %20
  %57 = load %struct.list_itemid_entry*, %struct.list_itemid_entry** %4, align 8
  %58 = call i32 @do_delete_items_list(%struct.list_itemid_entry* %57)
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %56, %17, %10
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @clear_res(...) #1

declare dso_local i32 @ihe_init(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i64 @get_hash_item(%struct.TYPE_7__*) #1

declare dso_local %struct.list_itemid_entry* @zmalloc(i32) #1

declare dso_local i32 @ihe_advance(%struct.TYPE_6__*) #1

declare dso_local i32 @do_delete_items_list(%struct.list_itemid_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
