; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-index.c_delete_item.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-index.c_delete_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i32, i32, i32, i64, i64, i64 }

@FLAG_DELETED = common dso_local global i32 0, align 4
@deleted_text_bytes = common dso_local global i32 0, align 4
@del_items = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @delete_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delete_item(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.item*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call %struct.item* @get_item_f(i64 %5, i32 0)
  store %struct.item* %6, %struct.item** %4, align 8
  %7 = load %struct.item*, %struct.item** %4, align 8
  %8 = icmp ne %struct.item* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.item*, %struct.item** %4, align 8
  %11 = getelementptr inbounds %struct.item, %struct.item* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @FLAG_DELETED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9, %1
  store i32 0, i32* %2, align 4
  br label %56

17:                                               ; preds = %9
  %18 = load i32, i32* @FLAG_DELETED, align 4
  %19 = load %struct.item*, %struct.item** %4, align 8
  %20 = getelementptr inbounds %struct.item, %struct.item* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.item*, %struct.item** %4, align 8
  %24 = getelementptr inbounds %struct.item, %struct.item* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.item*, %struct.item** %4, align 8
  %27 = getelementptr inbounds %struct.item, %struct.item* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %28, 4
  %30 = call i32 @zzfree(i64 %25, i32 %29)
  %31 = load %struct.item*, %struct.item** %4, align 8
  %32 = getelementptr inbounds %struct.item, %struct.item* %31, i32 0, i32 5
  store i64 0, i64* %32, align 8
  %33 = load %struct.item*, %struct.item** %4, align 8
  %34 = getelementptr inbounds %struct.item, %struct.item* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = load %struct.item*, %struct.item** %4, align 8
  %36 = getelementptr inbounds %struct.item, %struct.item* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = load %struct.item*, %struct.item** %4, align 8
  %38 = getelementptr inbounds %struct.item, %struct.item* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.item*, %struct.item** %4, align 8
  %41 = getelementptr inbounds %struct.item, %struct.item* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  %44 = call i32 @zzfree(i64 %39, i32 %43)
  %45 = load %struct.item*, %struct.item** %4, align 8
  %46 = getelementptr inbounds %struct.item, %struct.item* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @deleted_text_bytes, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* @deleted_text_bytes, align 4
  %50 = load %struct.item*, %struct.item** %4, align 8
  %51 = getelementptr inbounds %struct.item, %struct.item* %50, i32 0, i32 2
  store i32 0, i32* %51, align 8
  %52 = load %struct.item*, %struct.item** %4, align 8
  %53 = getelementptr inbounds %struct.item, %struct.item* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* @del_items, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @del_items, align 4
  store i32 1, i32* %2, align 4
  br label %56

56:                                               ; preds = %17, %16
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.item* @get_item_f(i64, i32) #1

declare dso_local i32 @zzfree(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
