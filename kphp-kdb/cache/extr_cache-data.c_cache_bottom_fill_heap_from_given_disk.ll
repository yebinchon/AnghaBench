; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_bottom_fill_heap_from_given_disk.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_bottom_fill_heap_from_given_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.cache_uri = type { i32 }
%union.cache_packed_local_copy_location = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@cgsl_order_top = common dso_local global i32 0, align 4
@cgsl_order_bottom = common dso_local global i32 0, align 4
@CACHE_ERR_LIMIT = common dso_local global i32 0, align 4
@heap_foreach = common dso_local global %struct.TYPE_7__* null, align 8
@heap_acounter_id = common dso_local global i32 0, align 4
@CACHE_ERR_UNKNOWN_T = common dso_local global i32 0, align 4
@acounter_off = common dso_local global i64 0, align 8
@heap_acounter_off = common dso_local global i64 0, align 8
@CACHE_MAX_HEAP_SIZE = common dso_local global i32 0, align 4
@cache_heap_cmp_top = common dso_local global i32 0, align 4
@cache_heap_cmp_bottom = common dso_local global i32 0, align 4
@TAT = common dso_local global i64 0, align 8
@tbl_foreach = common dso_local global i64 0, align 8
@disk_filter = common dso_local global i32 0, align 4
@cache_features_mask = common dso_local global i32 0, align 4
@CACHE_FEATURE_FAST_BOTTOM_ACCESS = common dso_local global i32 0, align 4
@list_cached = common dso_local global %struct.cache_uri* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32, i32, i32, i32, i32)* @cache_bottom_fill_heap_from_given_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_bottom_fill_heap_from_given_disk(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %union.cache_packed_local_copy_location, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.cache_uri*, align 8
  %21 = alloca %struct.cache_uri*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* @cgsl_order_top, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %7
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* @cgsl_order_bottom, align 4
  %28 = icmp eq i32 %26, %27
  br label %29

29:                                               ; preds = %25, %7
  %30 = phi i1 [ true, %7 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %14, align 4
  %36 = call i32 @cache_is_valid_disk(i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %16, align 4
  store i32 %40, i32* %8, align 4
  br label %141

41:                                               ; preds = %29
  %42 = load i32, i32* %11, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @CACHE_ERR_LIMIT, align 4
  store i32 %45, i32* %8, align 4
  br label %141

46:                                               ; preds = %41
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** @heap_foreach, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @get_acounter_id_by_t(i32 %48)
  store i32 %49, i32* @heap_acounter_id, align 4
  %50 = load i32, i32* @heap_acounter_id, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @CACHE_ERR_UNKNOWN_T, align 4
  store i32 %53, i32* %8, align 4
  br label %141

54:                                               ; preds = %46
  %55 = load i64, i64* @acounter_off, align 8
  %56 = load i32, i32* @heap_acounter_id, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = add i64 %55, %58
  store i64 %59, i64* @heap_acounter_off, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @CACHE_MAX_HEAP_SIZE, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = load i32, i32* %11, align 4
  br label %69

67:                                               ; preds = %54
  %68 = load i32, i32* @CACHE_MAX_HEAP_SIZE, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* @cgsl_order_top, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @cache_heap_cmp_top, align 4
  br label %80

78:                                               ; preds = %69
  %79 = load i32, i32* @cache_heap_cmp_bottom, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i64, i64* @TAT, align 8
  %85 = load i32, i32* @heap_acounter_id, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %84, %86
  store i64 %87, i64* @tbl_foreach, align 8
  %88 = load i32, i32* %12, align 4
  %89 = bitcast %union.cache_packed_local_copy_location* %17 to %struct.TYPE_6__*
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %13, align 4
  %92 = bitcast %union.cache_packed_local_copy_location* %17 to %struct.TYPE_6__*
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %14, align 4
  %95 = bitcast %union.cache_packed_local_copy_location* %17 to %struct.TYPE_6__*
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  %97 = bitcast %union.cache_packed_local_copy_location* %17 to i32*
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @cache_disk_filter_init(i32* @disk_filter, i32 %98)
  %100 = load i32, i32* @cache_features_mask, align 4
  %101 = load i32, i32* @CACHE_FEATURE_FAST_BOTTOM_ACCESS, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %135

104:                                              ; preds = %80
  %105 = bitcast %union.cache_packed_local_copy_location* %17 to i32*
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @get_bucket_by_packed_location(i32 %106)
  store i32 %107, i32* %19, align 4
  %108 = load i32, i32* %19, align 4
  store i32 %108, i32* %18, align 4
  br label %109

109:                                              ; preds = %130, %104
  %110 = load i32, i32* %18, align 4
  %111 = icmp sge i32 %110, 0
  br i1 %111, label %112, label %134

112:                                              ; preds = %109
  %113 = load %struct.cache_uri*, %struct.cache_uri** @list_cached, align 8
  %114 = load i32, i32* %18, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %113, i64 %115
  store %struct.cache_uri* %116, %struct.cache_uri** %20, align 8
  %117 = load %struct.cache_uri*, %struct.cache_uri** %20, align 8
  %118 = call %struct.cache_uri* @PNEXT(%struct.cache_uri* %117)
  store %struct.cache_uri* %118, %struct.cache_uri** %21, align 8
  br label %119

119:                                              ; preds = %126, %112
  %120 = load %struct.cache_uri*, %struct.cache_uri** %21, align 8
  %121 = load %struct.cache_uri*, %struct.cache_uri** %20, align 8
  %122 = icmp ne %struct.cache_uri* %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = load %struct.cache_uri*, %struct.cache_uri** %21, align 8
  %125 = call i32 @cache_heap_insert_uri_from_given_disk(%struct.cache_uri* %124)
  br label %126

126:                                              ; preds = %123
  %127 = load %struct.cache_uri*, %struct.cache_uri** %21, align 8
  %128 = call %struct.cache_uri* @PNEXT(%struct.cache_uri* %127)
  store %struct.cache_uri* %128, %struct.cache_uri** %21, align 8
  br label %119

129:                                              ; preds = %119
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %19, align 4
  %132 = load i32, i32* %18, align 4
  %133 = sub nsw i32 %132, %131
  store i32 %133, i32* %18, align 4
  br label %109

134:                                              ; preds = %109
  br label %138

135:                                              ; preds = %80
  %136 = load i32, i32* %15, align 4
  %137 = call i32 @cache_all_uri_cached_foreach(i32 (%struct.cache_uri*)* @cache_heap_insert_uri_from_given_disk, i32 %136)
  br label %138

138:                                              ; preds = %135, %134
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %140 = call i32 @cache_heap_sort(%struct.TYPE_7__* %139)
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %138, %52, %44, %39
  %142 = load i32, i32* %8, align 4
  ret i32 %142
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cache_is_valid_disk(i32, i32, i32) #1

declare dso_local i32 @get_acounter_id_by_t(i32) #1

declare dso_local i32 @cache_disk_filter_init(i32*, i32) #1

declare dso_local i32 @get_bucket_by_packed_location(i32) #1

declare dso_local %struct.cache_uri* @PNEXT(%struct.cache_uri*) #1

declare dso_local i32 @cache_heap_insert_uri_from_given_disk(%struct.cache_uri*) #1

declare dso_local i32 @cache_all_uri_cached_foreach(i32 (%struct.cache_uri*)*, i32) #1

declare dso_local i32 @cache_heap_sort(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
