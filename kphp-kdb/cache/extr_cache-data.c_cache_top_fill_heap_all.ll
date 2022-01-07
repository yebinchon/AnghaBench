; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_top_fill_heap_all.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_top_fill_heap_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_uri = type { i32 }
%struct.TYPE_2__ = type { i64, i64 }

@CACHE_URI_BUCKETS = common dso_local global i32 0, align 4
@cache_features_mask = common dso_local global i32 0, align 4
@CACHE_FEATURE_LONG_QUERIES = common dso_local global i32 0, align 4
@list_cached = common dso_local global %struct.cache_uri* null, align 8
@list_uncached = common dso_local global %struct.cache_uri* null, align 8
@heap_acounter_id = common dso_local global i64 0, align 8
@acounter_uncached_bucket_id = common dso_local global i64 0, align 8
@heap_foreach = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Skipping buckets from %d to 0.\0A\00", align 1
@CACHE_FEATURE_FAST_BOTTOM_ACCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @cache_top_fill_heap_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_top_fill_heap_all(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_uri*, align 8
  %5 = alloca %struct.cache_uri*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp sge i32 %6, 1000000
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = sdiv i32 %9, 1000000
  %11 = sub nsw i32 %10, 0
  store i32 %11, i32* %2, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @CACHE_URI_BUCKETS, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @CACHE_URI_BUCKETS, align 4
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %16, %12
  %20 = load i32, i32* @cache_features_mask, align 4
  %21 = load i32, i32* @CACHE_FEATURE_LONG_QUERIES, align 4
  %22 = and i32 %20, %21
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* @CACHE_URI_BUCKETS, align 4
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %85, %19
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %2, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %88

30:                                               ; preds = %26
  %31 = load %struct.cache_uri*, %struct.cache_uri** @list_cached, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %31, i64 %33
  store %struct.cache_uri* %34, %struct.cache_uri** %5, align 8
  %35 = load %struct.cache_uri*, %struct.cache_uri** %5, align 8
  %36 = call %struct.cache_uri* @PNEXT(%struct.cache_uri* %35)
  store %struct.cache_uri* %36, %struct.cache_uri** %4, align 8
  br label %37

37:                                               ; preds = %44, %30
  %38 = load %struct.cache_uri*, %struct.cache_uri** %4, align 8
  %39 = load %struct.cache_uri*, %struct.cache_uri** %5, align 8
  %40 = icmp ne %struct.cache_uri* %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load %struct.cache_uri*, %struct.cache_uri** %4, align 8
  %43 = call i32 @cache_top_heap_insert_uri_optimized(%struct.cache_uri* %42)
  br label %44

44:                                               ; preds = %41
  %45 = load %struct.cache_uri*, %struct.cache_uri** %4, align 8
  %46 = call %struct.cache_uri* @PNEXT(%struct.cache_uri* %45)
  store %struct.cache_uri* %46, %struct.cache_uri** %4, align 8
  br label %37

47:                                               ; preds = %37
  %48 = load %struct.cache_uri*, %struct.cache_uri** @list_uncached, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %48, i64 %50
  store %struct.cache_uri* %51, %struct.cache_uri** %5, align 8
  %52 = load %struct.cache_uri*, %struct.cache_uri** %5, align 8
  %53 = call %struct.cache_uri* @PNEXT(%struct.cache_uri* %52)
  store %struct.cache_uri* %53, %struct.cache_uri** %4, align 8
  br label %54

54:                                               ; preds = %61, %47
  %55 = load %struct.cache_uri*, %struct.cache_uri** %4, align 8
  %56 = load %struct.cache_uri*, %struct.cache_uri** %5, align 8
  %57 = icmp ne %struct.cache_uri* %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load %struct.cache_uri*, %struct.cache_uri** %4, align 8
  %60 = call i32 @cache_top_heap_insert_uri_optimized(%struct.cache_uri* %59)
  br label %61

61:                                               ; preds = %58
  %62 = load %struct.cache_uri*, %struct.cache_uri** %4, align 8
  %63 = call %struct.cache_uri* @PNEXT(%struct.cache_uri* %62)
  store %struct.cache_uri* %63, %struct.cache_uri** %4, align 8
  br label %54

64:                                               ; preds = %54
  %65 = load i64, i64* @heap_acounter_id, align 8
  %66 = load i64, i64* @acounter_uncached_bucket_id, align 8
  %67 = icmp sle i64 %65, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %64
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @heap_foreach, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @heap_foreach, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %68
  %77 = call i32 @GET_HEAP_VALUE(i32 1)
  %78 = load i32, i32* %3, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* %3, align 4
  %82 = sub nsw i32 %81, 1
  %83 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %88

84:                                               ; preds = %76, %68, %64
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %3, align 4
  br label %26

88:                                               ; preds = %80, %26
  %89 = load i32, i32* @cache_features_mask, align 4
  %90 = load i32, i32* @CACHE_FEATURE_FAST_BOTTOM_ACCESS, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %118

93:                                               ; preds = %88
  br label %94

94:                                               ; preds = %114, %93
  %95 = load i32, i32* %3, align 4
  %96 = icmp sge i32 %95, 0
  br i1 %96, label %97, label %117

97:                                               ; preds = %94
  %98 = load %struct.cache_uri*, %struct.cache_uri** @list_cached, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %98, i64 %100
  store %struct.cache_uri* %101, %struct.cache_uri** %5, align 8
  %102 = load %struct.cache_uri*, %struct.cache_uri** %5, align 8
  %103 = call %struct.cache_uri* @PNEXT(%struct.cache_uri* %102)
  store %struct.cache_uri* %103, %struct.cache_uri** %4, align 8
  br label %104

104:                                              ; preds = %111, %97
  %105 = load %struct.cache_uri*, %struct.cache_uri** %4, align 8
  %106 = load %struct.cache_uri*, %struct.cache_uri** %5, align 8
  %107 = icmp ne %struct.cache_uri* %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = load %struct.cache_uri*, %struct.cache_uri** %4, align 8
  %110 = call i32 @cache_top_heap_insert_uri_optimized(%struct.cache_uri* %109)
  br label %111

111:                                              ; preds = %108
  %112 = load %struct.cache_uri*, %struct.cache_uri** %4, align 8
  %113 = call %struct.cache_uri* @PNEXT(%struct.cache_uri* %112)
  store %struct.cache_uri* %113, %struct.cache_uri** %4, align 8
  br label %104

114:                                              ; preds = %104
  %115 = load i32, i32* %3, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %3, align 4
  br label %94

117:                                              ; preds = %94
  br label %118

118:                                              ; preds = %117, %88
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.cache_uri* @PNEXT(%struct.cache_uri*) #1

declare dso_local i32 @cache_top_heap_insert_uri_optimized(%struct.cache_uri*) #1

declare dso_local i32 @GET_HEAP_VALUE(i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
