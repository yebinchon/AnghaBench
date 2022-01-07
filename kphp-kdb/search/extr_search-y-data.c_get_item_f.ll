; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_get_item_f.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_get_item_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@ITEMS_HASH_PRIME = common dso_local global i64 0, align 8
@Items = common dso_local global %struct.TYPE_7__** null, align 8
@tot_items = common dso_local global i32 0, align 4
@MAX_ITEMS = common dso_local global i32 0, align 4
@tot_freed_deleted_items = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i64, i32)* @get_item_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @get_item_f(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i64, i64* %4, align 8
  %11 = icmp sle i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %119

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @ITEMS_HASH_PRIME, align 8
  %16 = srem i64 %14, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @ITEMS_HASH_PRIME, align 8
  %20 = sub nsw i64 %19, 1
  %21 = srem i64 %18, %20
  %22 = add nsw i64 1, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %117 [
    i32 128, label %25
    i32 129, label %57
  ]

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %55, %25
  %27 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @Items, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %27, i64 %29
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %9, align 8
  %32 = icmp ne %struct.TYPE_7__* %31, null
  br i1 %32, label %33, label %56

33:                                               ; preds = %26
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %4, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %3, align 8
  br label %119

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* @ITEMS_HASH_PRIME, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load i64, i64* @ITEMS_HASH_PRIME, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = sub nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %49, %41
  br label %26

56:                                               ; preds = %26
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %119

57:                                               ; preds = %13
  br label %58

58:                                               ; preds = %84, %57
  %59 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @Items, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %59, i64 %61
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %9, align 8
  %64 = icmp ne %struct.TYPE_7__* %63, null
  br i1 %64, label %65, label %85

65:                                               ; preds = %58
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %67 = call i32 @ITEM_DELETED(%struct.TYPE_7__* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %85

70:                                               ; preds = %65
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* @ITEMS_HASH_PRIME, align 8
  %77 = icmp sge i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = load i64, i64* @ITEMS_HASH_PRIME, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = sub nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %78, %70
  br label %58

85:                                               ; preds = %69, %58
  %86 = load i32, i32* @tot_items, align 4
  %87 = load i32, i32* @MAX_ITEMS, align 4
  %88 = icmp sge i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %119

90:                                               ; preds = %85
  %91 = call %struct.TYPE_7__* @zmalloc0(i32 8)
  store %struct.TYPE_7__* %91, %struct.TYPE_7__** %8, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %93 = icmp ne %struct.TYPE_7__* %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %95, %struct.TYPE_7__** %3, align 8
  br label %119

96:                                               ; preds = %90
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %98 = icmp ne %struct.TYPE_7__* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %101 = call i32 @zfree(%struct.TYPE_7__* %100, i32 8)
  %102 = load i32, i32* @tot_freed_deleted_items, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* @tot_freed_deleted_items, align 4
  br label %107

104:                                              ; preds = %96
  %105 = load i32, i32* @tot_items, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* @tot_items, align 4
  br label %107

107:                                              ; preds = %104, %99
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %109 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @Items, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %109, i64 %111
  store %struct.TYPE_7__* %108, %struct.TYPE_7__** %112, align 8
  %113 = load i64, i64* %4, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %116, %struct.TYPE_7__** %3, align 8
  br label %119

117:                                              ; preds = %13
  %118 = call i32 @assert(i32 0)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %119

119:                                              ; preds = %117, %107, %94, %89, %56, %39, %12
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %120
}

declare dso_local i32 @ITEM_DELETED(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @zmalloc0(i32) #1

declare dso_local i32 @zfree(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
