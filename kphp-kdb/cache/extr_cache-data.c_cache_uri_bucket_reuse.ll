; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_uri_bucket_reuse.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_uri_bucket_reuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_uri = type { i32* }

@cache_features_mask = common dso_local global i32 0, align 4
@CACHE_FEATURE_LONG_QUERIES = common dso_local global i32 0, align 4
@list_uncached = common dso_local global i64 0, align 8
@CACHE_FEATURE_FAST_BOTTOM_ACCESS = common dso_local global i32 0, align 4
@list_cached = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_uri*)* @cache_uri_bucket_reuse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_uri_bucket_reuse(%struct.cache_uri* %0) #0 {
  %2 = alloca %struct.cache_uri*, align 8
  store %struct.cache_uri* %0, %struct.cache_uri** %2, align 8
  %3 = load i32, i32* @cache_features_mask, align 4
  %4 = load i32, i32* @CACHE_FEATURE_LONG_QUERIES, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %37

7:                                                ; preds = %1
  %8 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %9 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %14 = call i32 @cache_uri_list_remove(%struct.cache_uri* %13)
  %15 = load i64, i64* @list_uncached, align 8
  %16 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %17 = call i64 @get_bucket(%struct.cache_uri* %16)
  %18 = add nsw i64 %15, %17
  %19 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %20 = call i32 @cache_uri_list_insert(i64 %18, %struct.cache_uri* %19)
  br label %36

21:                                               ; preds = %7
  %22 = load i32, i32* @cache_features_mask, align 4
  %23 = load i32, i32* @CACHE_FEATURE_FAST_BOTTOM_ACCESS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %21
  %27 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %28 = call i32 @cache_uri_list_remove(%struct.cache_uri* %27)
  %29 = load i64, i64* @list_cached, align 8
  %30 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %31 = call i64 @get_bucket(%struct.cache_uri* %30)
  %32 = add nsw i64 %29, %31
  %33 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %34 = call i32 @cache_uri_list_insert(i64 %32, %struct.cache_uri* %33)
  br label %35

35:                                               ; preds = %26, %21
  br label %36

36:                                               ; preds = %35, %12
  br label %37

37:                                               ; preds = %36, %1
  ret void
}

declare dso_local i32 @cache_uri_list_remove(%struct.cache_uri*) #1

declare dso_local i32 @cache_uri_list_insert(i64, %struct.cache_uri*) #1

declare dso_local i64 @get_bucket(%struct.cache_uri*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
