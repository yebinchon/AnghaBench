; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_do_delete_item.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_do_delete_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_search_delete_item = type { i64 }

@LEV_SEARCH_DELETE_ITEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_delete_item(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.lev_search_delete_item*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i32 @fits(i64 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

9:                                                ; preds = %1
  %10 = load i32, i32* @LEV_SEARCH_DELETE_ITEM, align 4
  %11 = call %struct.lev_search_delete_item* @alloc_log_event(i32 %10, i32 12, i32 0)
  store %struct.lev_search_delete_item* %11, %struct.lev_search_delete_item** %4, align 8
  %12 = load %struct.lev_search_delete_item*, %struct.lev_search_delete_item** %4, align 8
  %13 = call i32 @assert(%struct.lev_search_delete_item* %12)
  %14 = load i64, i64* %3, align 8
  %15 = load %struct.lev_search_delete_item*, %struct.lev_search_delete_item** %4, align 8
  %16 = getelementptr inbounds %struct.lev_search_delete_item, %struct.lev_search_delete_item* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @delete_item(i64 %17)
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %9, %8
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @fits(i64) #1

declare dso_local %struct.lev_search_delete_item* @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @assert(%struct.lev_search_delete_item*) #1

declare dso_local i32 @delete_item(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
