; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_top_heap_insert_uri_optimized.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_top_heap_insert_uri_optimized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, %struct.cache_uri** }
%struct.cache_uri = type { i32* }
%struct.amortization_counter = type { i64 }

@heap_acounter_off = common dso_local global i64 0, align 8
@heap_foreach = common dso_local global %struct.TYPE_2__* null, align 8
@tbl_foreach = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_uri*)* @cache_top_heap_insert_uri_optimized to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_top_heap_insert_uri_optimized(%struct.cache_uri* %0) #0 {
  %2 = alloca %struct.cache_uri*, align 8
  %3 = alloca %struct.amortization_counter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cache_uri* %0, %struct.cache_uri** %2, align 8
  %6 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %7 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @heap_acounter_off, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = bitcast i32* %10 to %struct.amortization_counter*
  store %struct.amortization_counter* %11, %struct.amortization_counter** %3, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @heap_foreach, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @heap_foreach, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %66

22:                                               ; preds = %1
  %23 = load i32, i32* @tbl_foreach, align 4
  %24 = load %struct.amortization_counter*, %struct.amortization_counter** %3, align 8
  %25 = call i32 @amortization_counter_update(i32 %23, %struct.amortization_counter* %24)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @heap_foreach, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %43, %22
  %31 = load i32, i32* %4, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %58

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = ashr i32 %34, 1
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @GET_HEAP_VALUE(i32 %36)
  %38 = load %struct.amortization_counter*, %struct.amortization_counter** %3, align 8
  %39 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sle i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %58

43:                                               ; preds = %33
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @heap_foreach, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load %struct.cache_uri**, %struct.cache_uri*** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.cache_uri*, %struct.cache_uri** %46, i64 %48
  %50 = load %struct.cache_uri*, %struct.cache_uri** %49, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @heap_foreach, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load %struct.cache_uri**, %struct.cache_uri*** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.cache_uri*, %struct.cache_uri** %53, i64 %55
  store %struct.cache_uri* %50, %struct.cache_uri** %56, align 8
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %4, align 4
  br label %30

58:                                               ; preds = %42, %30
  %59 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @heap_foreach, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load %struct.cache_uri**, %struct.cache_uri*** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.cache_uri*, %struct.cache_uri** %62, i64 %64
  store %struct.cache_uri* %59, %struct.cache_uri** %65, align 8
  br label %143

66:                                               ; preds = %1
  %67 = call i64 @GET_HEAP_VALUE(i32 1)
  %68 = load %struct.amortization_counter*, %struct.amortization_counter** %3, align 8
  %69 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %67, %70
  %72 = zext i1 %71 to i32
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %142

75:                                               ; preds = %66
  %76 = load i32, i32* @tbl_foreach, align 4
  %77 = load %struct.amortization_counter*, %struct.amortization_counter** %3, align 8
  %78 = call i32 @amortization_counter_update(i32 %76, %struct.amortization_counter* %77)
  %79 = call i64 @GET_HEAP_VALUE(i32 1)
  %80 = load %struct.amortization_counter*, %struct.amortization_counter** %3, align 8
  %81 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %79, %82
  br i1 %83, label %84, label %141

84:                                               ; preds = %75
  store i32 1, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %118
  %86 = load i32, i32* %4, align 4
  %87 = shl i32 %86, 1
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @heap_foreach, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp sgt i32 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %133

94:                                               ; preds = %85
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @heap_foreach, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %94
  %101 = load i32, i32* %5, align 4
  %102 = call i64 @GET_HEAP_VALUE(i32 %101)
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  %105 = call i64 @GET_HEAP_VALUE(i32 %104)
  %106 = icmp sgt i64 %102, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %107, %100, %94
  %111 = load %struct.amortization_counter*, %struct.amortization_counter** %3, align 8
  %112 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = call i64 @GET_HEAP_VALUE(i32 %114)
  %116 = icmp sle i64 %113, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  br label %133

118:                                              ; preds = %110
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** @heap_foreach, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 2
  %121 = load %struct.cache_uri**, %struct.cache_uri*** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.cache_uri*, %struct.cache_uri** %121, i64 %123
  %125 = load %struct.cache_uri*, %struct.cache_uri** %124, align 8
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** @heap_foreach, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  %128 = load %struct.cache_uri**, %struct.cache_uri*** %127, align 8
  %129 = load i32, i32* %4, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.cache_uri*, %struct.cache_uri** %128, i64 %130
  store %struct.cache_uri* %125, %struct.cache_uri** %131, align 8
  %132 = load i32, i32* %5, align 4
  store i32 %132, i32* %4, align 4
  br label %85

133:                                              ; preds = %117, %93
  %134 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** @heap_foreach, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 2
  %137 = load %struct.cache_uri**, %struct.cache_uri*** %136, align 8
  %138 = load i32, i32* %4, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.cache_uri*, %struct.cache_uri** %137, i64 %139
  store %struct.cache_uri* %134, %struct.cache_uri** %140, align 8
  br label %141

141:                                              ; preds = %133, %75
  br label %142

142:                                              ; preds = %141, %66
  br label %143

143:                                              ; preds = %142, %58
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @amortization_counter_update(i32, %struct.amortization_counter*) #1

declare dso_local i64 @GET_HEAP_VALUE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
