; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_top_fill_heap_uncached.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_top_fill_heap_uncached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_uri = type { i32* }
%struct.TYPE_2__ = type { i32, i32, %struct.cache_uri** }
%struct.amortization_counter = type { i32 }

@cache_top_fill_heap_uncached.fake = internal global %struct.cache_uri* null, align 8
@cache_features_mask = common dso_local global i32 0, align 4
@CACHE_FEATURE_LONG_QUERIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@heap_acounter_off = common dso_local global i64 0, align 8
@CACHE_URI_BUCKETS = common dso_local global i32 0, align 4
@heap_foreach = common dso_local global %struct.TYPE_2__* null, align 8
@list_uncached = common dso_local global %struct.cache_uri* null, align 8
@heap_acounter_id = common dso_local global i64 0, align 8
@acounter_uncached_bucket_id = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Skipping uncached buckets from %d to 0.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @cache_top_fill_heap_uncached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_top_fill_heap_uncached(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.amortization_counter*, align 8
  %5 = alloca %struct.cache_uri*, align 8
  %6 = alloca %struct.cache_uri*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @cache_features_mask, align 4
  %8 = load i32, i32* @CACHE_FEATURE_LONG_QUERIES, align 4
  %9 = and i32 %7, %8
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.cache_uri*, %struct.cache_uri** @cache_top_fill_heap_uncached.fake, align 8
  %12 = icmp eq %struct.cache_uri* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = call i32 @sizeof_uri(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %15 = call %struct.cache_uri* @zmalloc0(i32 %14)
  store %struct.cache_uri* %15, %struct.cache_uri** @cache_top_fill_heap_uncached.fake, align 8
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.cache_uri*, %struct.cache_uri** @cache_top_fill_heap_uncached.fake, align 8
  %18 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @heap_acounter_off, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = bitcast i32* %21 to %struct.amortization_counter*
  store %struct.amortization_counter* %22, %struct.amortization_counter** %4, align 8
  %23 = load i32, i32* %2, align 4
  %24 = icmp sge i32 %23, 1000000
  br i1 %24, label %25, label %35

25:                                               ; preds = %16
  %26 = load i32, i32* %2, align 4
  %27 = sitofp i32 %26 to double
  %28 = fmul double %27, 0x3EB0C6F7A0B5ED8D
  %29 = fptosi double %28 to i32
  %30 = load %struct.amortization_counter*, %struct.amortization_counter** %4, align 8
  %31 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %2, align 4
  %33 = sdiv i32 %32, 1000000
  %34 = sub nsw i32 %33, 0
  store i32 %34, i32* %2, align 4
  br label %47

35:                                               ; preds = %16
  %36 = load i32, i32* %2, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %2, align 4
  %40 = sitofp i32 %39 to double
  br label %42

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi double [ %40, %38 ], [ -1.000000e+00, %41 ]
  %44 = fptosi double %43 to i32
  %45 = load %struct.amortization_counter*, %struct.amortization_counter** %4, align 8
  %46 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %42, %25
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* @CACHE_URI_BUCKETS, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @CACHE_URI_BUCKETS, align 4
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %51, %47
  store i32 1, i32* %3, align 4
  br label %55

55:                                               ; preds = %69, %54
  %56 = load i32, i32* %3, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @heap_foreach, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp sle i32 %56, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %55
  %62 = load %struct.cache_uri*, %struct.cache_uri** @cache_top_fill_heap_uncached.fake, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @heap_foreach, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load %struct.cache_uri**, %struct.cache_uri*** %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.cache_uri*, %struct.cache_uri** %65, i64 %67
  store %struct.cache_uri* %62, %struct.cache_uri** %68, align 8
  br label %69

69:                                               ; preds = %61
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %55

72:                                               ; preds = %55
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @heap_foreach, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @heap_foreach, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @CACHE_URI_BUCKETS, align 4
  %79 = sub nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %114, %72
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* %2, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %84, label %117

84:                                               ; preds = %80
  %85 = load %struct.cache_uri*, %struct.cache_uri** @list_uncached, align 8
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %85, i64 %87
  store %struct.cache_uri* %88, %struct.cache_uri** %6, align 8
  %89 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %90 = call %struct.cache_uri* @PNEXT(%struct.cache_uri* %89)
  store %struct.cache_uri* %90, %struct.cache_uri** %5, align 8
  br label %91

91:                                               ; preds = %98, %84
  %92 = load %struct.cache_uri*, %struct.cache_uri** %5, align 8
  %93 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %94 = icmp ne %struct.cache_uri* %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load %struct.cache_uri*, %struct.cache_uri** %5, align 8
  %97 = call i32 @cache_top_heap_insert_uri_optimized2(%struct.cache_uri* %96)
  br label %98

98:                                               ; preds = %95
  %99 = load %struct.cache_uri*, %struct.cache_uri** %5, align 8
  %100 = call %struct.cache_uri* @PNEXT(%struct.cache_uri* %99)
  store %struct.cache_uri* %100, %struct.cache_uri** %5, align 8
  br label %91

101:                                              ; preds = %91
  %102 = load i64, i64* @heap_acounter_id, align 8
  %103 = load i64, i64* @acounter_uncached_bucket_id, align 8
  %104 = icmp sle i64 %102, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = call i32 @GET_HEAP_VALUE(i32 1)
  %107 = load i32, i32* %3, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i32, i32* %3, align 4
  %111 = sub nsw i32 %110, 1
  %112 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  br label %117

113:                                              ; preds = %105, %101
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %3, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %3, align 4
  br label %80

117:                                              ; preds = %109, %80
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.cache_uri* @zmalloc0(i32) #1

declare dso_local i32 @sizeof_uri(i8*) #1

declare dso_local %struct.cache_uri* @PNEXT(%struct.cache_uri*) #1

declare dso_local i32 @cache_top_heap_insert_uri_optimized2(%struct.cache_uri*) #1

declare dso_local i32 @GET_HEAP_VALUE(i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
