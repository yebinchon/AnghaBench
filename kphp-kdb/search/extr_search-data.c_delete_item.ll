; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_delete_item.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_delete_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.index_item = type { i32 }

@ONLY_FIND = common dso_local global i32 0, align 4
@FLAG_DELETED = common dso_local global i32 0, align 4
@mod_items = common dso_local global i32 0, align 4
@del_items = common dso_local global i32 0, align 4
@del_item_instances = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @delete_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delete_item(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.index_item*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i32, i32* @ONLY_FIND, align 4
  %8 = call %struct.TYPE_5__* @get_item_f(i64 %6, i32 %7)
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call %struct.index_item* @get_idx_item(i64 %9)
  store %struct.index_item* %10, %struct.index_item** %5, align 8
  %11 = load %struct.index_item*, %struct.index_item** %5, align 8
  %12 = icmp ne %struct.index_item* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  %14 = load i32, i32* @FLAG_DELETED, align 4
  %15 = load %struct.index_item*, %struct.index_item** %5, align 8
  %16 = getelementptr inbounds %struct.index_item, %struct.index_item* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* @mod_items, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @mod_items, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.index_item*, %struct.index_item** %5, align 8
  %27 = bitcast %struct.index_item* %26 to %struct.TYPE_5__*
  %28 = load %struct.index_item*, %struct.index_item** %5, align 8
  %29 = call i32* @get_index_item_words_ptr(%struct.index_item* %28, i32 0)
  %30 = call i32 @item_clear_wordlist(%struct.TYPE_5__* %27, i32* %29)
  store i32 1, i32* %2, align 4
  br label %53

31:                                               ; preds = %1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = icmp ne %struct.TYPE_5__* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @FLAG_DELETED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34, %31
  store i32 0, i32* %2, align 4
  br label %53

42:                                               ; preds = %34
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = call i32 @delete_item_rates(%struct.TYPE_5__* %43)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = call i32 @item_clear_wordlist(%struct.TYPE_5__* %45, i32* %47)
  %49 = load i32, i32* @del_items, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @del_items, align 4
  %51 = load i32, i32* @del_item_instances, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @del_item_instances, align 4
  store i32 1, i32* %2, align 4
  br label %53

53:                                               ; preds = %42, %41, %13
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.TYPE_5__* @get_item_f(i64, i32) #1

declare dso_local %struct.index_item* @get_idx_item(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @item_clear_wordlist(%struct.TYPE_5__*, i32*) #1

declare dso_local i32* @get_index_item_words_ptr(%struct.index_item*, i32) #1

declare dso_local i32 @delete_item_rates(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
