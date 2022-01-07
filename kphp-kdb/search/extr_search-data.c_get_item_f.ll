; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_get_item_f.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_get_item_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@items_short_ids = common dso_local global i64 0, align 8
@ITEMS_HASH_PRIME = common dso_local global i32 0, align 4
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
  br label %130

13:                                               ; preds = %2
  %14 = load i64, i64* @items_short_ids, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @SHORT_ID(i64 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @ITEMS_HASH_PRIME, align 4
  %21 = srem i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @ITEMS_HASH_PRIME, align 4
  %24 = sub nsw i32 %23, 1
  %25 = srem i32 %22, %24
  %26 = add nsw i32 1, %25
  store i32 %26, i32* %7, align 4
  br label %40

27:                                               ; preds = %13
  %28 = load i64, i64* %4, align 8
  %29 = load i32, i32* @ITEMS_HASH_PRIME, align 4
  %30 = sext i32 %29 to i64
  %31 = srem i64 %28, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %6, align 4
  %33 = load i64, i64* %4, align 8
  %34 = load i32, i32* @ITEMS_HASH_PRIME, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = srem i64 %33, %36
  %38 = add nsw i64 1, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %27, %16
  %41 = load i32, i32* %5, align 4
  switch i32 %41, label %128 [
    i32 128, label %42
    i32 129, label %71
  ]

42:                                               ; preds = %40
  br label %43

43:                                               ; preds = %69, %42
  %44 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @Items, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %44, i64 %46
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  store %struct.TYPE_7__* %48, %struct.TYPE_7__** %9, align 8
  %49 = icmp ne %struct.TYPE_7__* %48, null
  br i1 %49, label %50, label %70

50:                                               ; preds = %43
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %4, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %57, %struct.TYPE_7__** %3, align 8
  br label %130

58:                                               ; preds = %50
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @ITEMS_HASH_PRIME, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32, i32* @ITEMS_HASH_PRIME, align 4
  %67 = load i32, i32* %6, align 4
  %68 = sub nsw i32 %67, %66
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %65, %58
  br label %43

70:                                               ; preds = %43
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %130

71:                                               ; preds = %40
  br label %72

72:                                               ; preds = %95, %71
  %73 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @Items, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %73, i64 %75
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  store %struct.TYPE_7__* %77, %struct.TYPE_7__** %9, align 8
  %78 = icmp ne %struct.TYPE_7__* %77, null
  br i1 %78, label %79, label %96

79:                                               ; preds = %72
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %81 = call i32 @ITEM_DELETED(%struct.TYPE_7__* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %96

84:                                               ; preds = %79
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @ITEMS_HASH_PRIME, align 4
  %90 = icmp sge i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %84
  %92 = load i32, i32* @ITEMS_HASH_PRIME, align 4
  %93 = load i32, i32* %6, align 4
  %94 = sub nsw i32 %93, %92
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %91, %84
  br label %72

96:                                               ; preds = %83, %72
  %97 = load i32, i32* @tot_items, align 4
  %98 = load i32, i32* @MAX_ITEMS, align 4
  %99 = icmp sge i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %130

101:                                              ; preds = %96
  %102 = call %struct.TYPE_7__* @zzmalloc0(i32 8)
  store %struct.TYPE_7__* %102, %struct.TYPE_7__** %8, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %104 = icmp ne %struct.TYPE_7__* %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %106, %struct.TYPE_7__** %3, align 8
  br label %130

107:                                              ; preds = %101
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %109 = icmp ne %struct.TYPE_7__* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %112 = call i32 @zzfree(%struct.TYPE_7__* %111, i32 8)
  %113 = load i32, i32* @tot_freed_deleted_items, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* @tot_freed_deleted_items, align 4
  br label %118

115:                                              ; preds = %107
  %116 = load i32, i32* @tot_items, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* @tot_items, align 4
  br label %118

118:                                              ; preds = %115, %110
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %120 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @Items, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %120, i64 %122
  store %struct.TYPE_7__* %119, %struct.TYPE_7__** %123, align 8
  %124 = load i64, i64* %4, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %127, %struct.TYPE_7__** %3, align 8
  br label %130

128:                                              ; preds = %40
  %129 = call i32 @assert(i32 0)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %130

130:                                              ; preds = %128, %118, %105, %100, %70, %56, %12
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %131
}

declare dso_local i32 @SHORT_ID(i64) #1

declare dso_local i32 @ITEM_DELETED(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @zzmalloc0(i32) #1

declare dso_local i32 @zzfree(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
