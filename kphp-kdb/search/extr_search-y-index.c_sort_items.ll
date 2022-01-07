; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-index.c_sort_items.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-index.c_sort_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i32, i32, i32 }

@ITEMS_HASH_PRIME = common dso_local global i32 0, align 4
@Items = common dso_local global %struct.item** null, align 8
@FLAG_DELETED = common dso_local global i32 0, align 4
@tot_items = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"found %d items. Deleted %d items.\0A\00", align 1
@del_items = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sort_items() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.item*, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %47, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @ITEMS_HASH_PRIME, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %50

8:                                                ; preds = %4
  %9 = load %struct.item**, %struct.item*** @Items, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.item*, %struct.item** %9, i64 %11
  %13 = load %struct.item*, %struct.item** %12, align 8
  store %struct.item* %13, %struct.item** %3, align 8
  %14 = load %struct.item*, %struct.item** %3, align 8
  %15 = icmp ne %struct.item* %14, null
  br i1 %15, label %16, label %46

16:                                               ; preds = %8
  %17 = load %struct.item*, %struct.item** %3, align 8
  %18 = getelementptr inbounds %struct.item, %struct.item* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @FLAG_DELETED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load %struct.item*, %struct.item** %3, align 8
  %25 = load %struct.item**, %struct.item*** @Items, align 8
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds %struct.item*, %struct.item** %25, i64 %28
  store %struct.item* %24, %struct.item** %29, align 8
  br label %45

30:                                               ; preds = %16
  %31 = load %struct.item*, %struct.item** %3, align 8
  %32 = getelementptr inbounds %struct.item, %struct.item* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load %struct.item*, %struct.item** %3, align 8
  %37 = getelementptr inbounds %struct.item, %struct.item* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %35, %30
  %42 = phi i1 [ false, %30 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  br label %45

45:                                               ; preds = %41, %23
  br label %46

46:                                               ; preds = %45, %8
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %1, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %1, align 4
  br label %4

50:                                               ; preds = %4
  %51 = load i32, i32* %2, align 4
  store i32 %51, i32* @tot_items, align 4
  %52 = load i32, i32* @verbosity, align 4
  %53 = icmp sge i32 %52, 1
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* @stderr, align 4
  %56 = load i32, i32* @tot_items, align 4
  %57 = load i32, i32* @del_items, align 4
  %58 = call i32 @fprintf(i32 %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %50
  store i32 0, i32* @del_items, align 4
  %60 = load i32, i32* %2, align 4
  %61 = sub nsw i32 %60, 1
  %62 = call i32 @qsort_i(i32 0, i32 %61)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @qsort_i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
