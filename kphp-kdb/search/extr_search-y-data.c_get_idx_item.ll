; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_get_idx_item.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_get_idx_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_item = type { i64, i32 }

@idx_items = common dso_local global i32 0, align 4
@IndexItems = common dso_local global %struct.index_item* null, align 8
@FLAG_DELETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.index_item* (i64)* @get_idx_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.index_item* @get_idx_item(i64 %0) #0 {
  %2 = alloca %struct.index_item*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 -1, i32* %4, align 4
  %7 = load i32, i32* @idx_items, align 4
  store i32 %7, i32* %5, align 4
  br label %8

8:                                                ; preds = %30, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sub nsw i32 %9, %10
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %31

13:                                               ; preds = %8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %14, %15
  %17 = ashr i32 %16, 1
  store i32 %17, i32* %6, align 4
  %18 = load %struct.index_item*, %struct.index_item** @IndexItems, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.index_item, %struct.index_item* %18, i64 %20
  %22 = getelementptr inbounds %struct.index_item, %struct.index_item* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = icmp sle i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %13
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %4, align 4
  br label %30

28:                                               ; preds = %13
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %28, %26
  br label %8

31:                                               ; preds = %8
  %32 = load i32, i32* %4, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %31
  %35 = load %struct.index_item*, %struct.index_item** @IndexItems, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.index_item, %struct.index_item* %35, i64 %37
  %39 = getelementptr inbounds %struct.index_item, %struct.index_item* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %3, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %34
  %44 = load %struct.index_item*, %struct.index_item** @IndexItems, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.index_item, %struct.index_item* %44, i64 %46
  %48 = getelementptr inbounds %struct.index_item, %struct.index_item* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @FLAG_DELETED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %43
  %54 = load %struct.index_item*, %struct.index_item** @IndexItems, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.index_item, %struct.index_item* %54, i64 %56
  store %struct.index_item* %57, %struct.index_item** %2, align 8
  br label %59

58:                                               ; preds = %43, %34, %31
  store %struct.index_item* null, %struct.index_item** %2, align 8
  br label %59

59:                                               ; preds = %58, %53
  %60 = load %struct.index_item*, %struct.index_item** %2, align 8
  ret %struct.index_item* %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
