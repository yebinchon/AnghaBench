; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_ihe_skip_advance1_fast.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_ihe_skip_advance1_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_item = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__*, i32, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i64, %struct.search_list_decoder, i32 (%struct.TYPE_9__*, i32)*, i32 }
%struct.search_list_decoder = type { i64, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32 (%struct.TYPE_11__*)* }

@IndexItems = common dso_local global %struct.index_item* null, align 8
@FLAG_DELETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i64)* @ihe_skip_advance1_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ihe_skip_advance1_fast(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.search_list_decoder*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.index_item*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %117

16:                                               ; preds = %2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  store %struct.search_list_decoder* %19, %struct.search_list_decoder** %5, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %6, align 8
  %22 = load %struct.search_list_decoder*, %struct.search_list_decoder** %5, align 8
  %23 = getelementptr inbounds %struct.search_list_decoder, %struct.search_list_decoder* %22, i32 0, i32 2
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @list_interpolative_ext_forward_decode_item(%struct.TYPE_11__* %24, i64 %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %16
  %34 = load %struct.search_list_decoder*, %struct.search_list_decoder** %5, align 8
  %35 = getelementptr inbounds %struct.search_list_decoder, %struct.search_list_decoder* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %37, align 8
  br label %117

38:                                               ; preds = %16
  %39 = load %struct.search_list_decoder*, %struct.search_list_decoder** %5, align 8
  %40 = getelementptr inbounds %struct.search_list_decoder, %struct.search_list_decoder* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.search_list_decoder*, %struct.search_list_decoder** %5, align 8
  %43 = getelementptr inbounds %struct.search_list_decoder, %struct.search_list_decoder* %42, i32 0, i32 2
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %41, %46
  %48 = load %struct.search_list_decoder*, %struct.search_list_decoder** %5, align 8
  %49 = getelementptr inbounds %struct.search_list_decoder, %struct.search_list_decoder* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %100, %38
  %51 = load %struct.index_item*, %struct.index_item** @IndexItems, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.index_item, %struct.index_item* %51, i64 %54
  store %struct.index_item* %55, %struct.index_item** %7, align 8
  %56 = load %struct.index_item*, %struct.index_item** %7, align 8
  %57 = getelementptr inbounds %struct.index_item, %struct.index_item* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @FLAG_DELETED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %90, label %62

62:                                               ; preds = %50
  %63 = load %struct.index_item*, %struct.index_item** %7, align 8
  %64 = bitcast %struct.index_item* %63 to %struct.TYPE_8__*
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  store %struct.TYPE_8__* %64, %struct.TYPE_8__** %66, align 8
  %67 = load %struct.index_item*, %struct.index_item** %7, align 8
  %68 = getelementptr inbounds %struct.index_item, %struct.index_item* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %73, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.search_list_decoder, %struct.search_list_decoder* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %79, 1
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.search_list_decoder, %struct.search_list_decoder* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %80, %84
  %86 = trunc i64 %85 to i32
  %87 = call i32 %74(%struct.TYPE_9__* %75, i32 %86)
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  br label %117

90:                                               ; preds = %50
  %91 = load %struct.search_list_decoder*, %struct.search_list_decoder** %5, align 8
  %92 = getelementptr inbounds %struct.search_list_decoder, %struct.search_list_decoder* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp sle i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load %struct.search_list_decoder*, %struct.search_list_decoder** %5, align 8
  %97 = getelementptr inbounds %struct.search_list_decoder, %struct.search_list_decoder* %96, i32 0, i32 0
  store i64 0, i64* %97, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %99, align 8
  br label %117

100:                                              ; preds = %90
  %101 = load %struct.search_list_decoder*, %struct.search_list_decoder** %5, align 8
  %102 = getelementptr inbounds %struct.search_list_decoder, %struct.search_list_decoder* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, -1
  store i64 %104, i64* %102, align 8
  %105 = load %struct.search_list_decoder*, %struct.search_list_decoder** %5, align 8
  %106 = getelementptr inbounds %struct.search_list_decoder, %struct.search_list_decoder* %105, i32 0, i32 2
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %108, align 8
  %110 = load %struct.search_list_decoder*, %struct.search_list_decoder** %5, align 8
  %111 = getelementptr inbounds %struct.search_list_decoder, %struct.search_list_decoder* %110, i32 0, i32 2
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = call i32 %109(%struct.TYPE_11__* %112)
  %114 = sext i32 %113 to i64
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  br label %50

117:                                              ; preds = %95, %62, %33, %15
  ret void
}

declare dso_local i64 @list_interpolative_ext_forward_decode_item(%struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
