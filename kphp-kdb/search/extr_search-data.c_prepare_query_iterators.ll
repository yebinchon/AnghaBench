; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_prepare_query_iterators.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_prepare_query_iterators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i32, %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__*, %struct.TYPE_5__* }

@qn_false = common dso_local global i64 0, align 8
@MAX_ITEM_ID = common dso_local global i64 0, align 8
@MIN_ITEM_ID = common dso_local global i64 0, align 8
@qn_true = common dso_local global i64 0, align 8
@universal_tag_hash = common dso_local global i32 0, align 4
@qn_word = common dso_local global i64 0, align 8
@Q_words = common dso_local global i64 0, align 8
@MAX_WORDS = common dso_local global i64 0, align 8
@IHE = common dso_local global %struct.TYPE_6__* null, align 8
@reoptimize_flag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prepare_query_iterators(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = icmp ne %struct.TYPE_5__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %135

8:                                                ; preds = %1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 7
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = call i32 @prepare_query_iterators(%struct.TYPE_5__* %11)
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 6
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = call i32 @prepare_query_iterators(%struct.TYPE_5__* %17)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %8
  store i32 -1, i32* %2, align 4
  br label %135

21:                                               ; preds = %14
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @qn_false, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i64, i64* @MAX_ITEM_ID, align 8
  br label %31

29:                                               ; preds = %21
  %30 = load i64, i64* @MIN_ITEM_ID, align 8
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i64 [ %28, %27 ], [ %30, %29 ]
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  store i32 0, i32* %36, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @qn_true, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %31
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @universal_tag_hash, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  br label %64

51:                                               ; preds = %42, %31
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @qn_word, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %51
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = icmp ne %struct.TYPE_6__* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %57, %51
  store i32 0, i32* %2, align 4
  br label %135

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %47
  %65 = load i64, i64* @Q_words, align 8
  %66 = load i64, i64* @MAX_WORDS, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 -1, i32* %2, align 4
  br label %135

69:                                               ; preds = %64
  %70 = load i64, i64* @Q_words, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* @Q_words, align 8
  %72 = trunc i64 %70 to i32
  store i32 %72, i32* %4, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** @IHE, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32 -2, i32* %77, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** @IHE, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, -2
  br i1 %84, label %85, label %94

85:                                               ; preds = %69
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** @IHE, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %88
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ihe_init(%struct.TYPE_6__* %89, i32 %92, i32 0, i32 0)
  br label %94

94:                                               ; preds = %85, %69
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** @IHE, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 %97
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 3
  store %struct.TYPE_6__* %98, %struct.TYPE_6__** %100, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @MAX_ITEM_ID, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %94
  %121 = load i32, i32* @reoptimize_flag, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* @reoptimize_flag, align 4
  %123 = load i64, i64* @qn_false, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  br label %126

126:                                              ; preds = %120, %94
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = and i32 %131, 1
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  store i32 1, i32* %2, align 4
  br label %135

135:                                              ; preds = %126, %68, %62, %20, %7
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @ihe_init(%struct.TYPE_6__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
