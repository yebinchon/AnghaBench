; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_access_long.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_access_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_cache_access_long = type { i64 }
%struct.cache_uri = type { i32 }

@cache_features_mask = common dso_local global i32 0, align 4
@CACHE_FEATURE_ACCESS_QUERIES = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"wrong cache_access_long: \00", align 1
@skipped_access_logevents = common dso_local global i32 0, align 4
@log_last_ts = common dso_local global i32 0, align 4
@access_long_logevents = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_cache_access_long*, i32)* @cache_access_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_access_long(%struct.lev_cache_access_long* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lev_cache_access_long*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cache_uri*, align 8
  store %struct.lev_cache_access_long* %0, %struct.lev_cache_access_long** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @cache_features_mask, align 4
  %8 = load i32, i32* @CACHE_FEATURE_ACCESS_QUERIES, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %43

12:                                               ; preds = %2
  %13 = load %struct.lev_cache_access_long*, %struct.lev_cache_access_long** %4, align 8
  %14 = getelementptr inbounds %struct.lev_cache_access_long, %struct.lev_cache_access_long* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  %17 = call %struct.cache_uri* @cache_get_uri_by_md5(i32* %16, i32 16)
  store %struct.cache_uri* %17, %struct.cache_uri** %6, align 8
  %18 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %19 = icmp eq %struct.cache_uri* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %12
  %21 = load i32, i32* @verbosity, align 4
  %22 = icmp sge i32 %21, 1
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.lev_cache_access_long*, %struct.lev_cache_access_long** %4, align 8
  %25 = getelementptr inbounds %struct.lev_cache_access_long, %struct.lev_cache_access_long* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  %28 = call i32 @kprintf_md5(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %27, i32 16)
  br label %29

29:                                               ; preds = %23, %20
  %30 = load i32, i32* @skipped_access_logevents, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @skipped_access_logevents, align 4
  store i32 -1, i32* %3, align 4
  br label %43

32:                                               ; preds = %12
  %33 = load i32, i32* @log_last_ts, align 4
  %34 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %35 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @cache_incr(%struct.cache_uri* %36, i32 %37)
  %39 = load i32, i32* @access_long_logevents, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @access_long_logevents, align 4
  %41 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %42 = call i32 @cache_access_update_stat_server(%struct.cache_uri* %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %32, %29, %11
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.cache_uri* @cache_get_uri_by_md5(i32*, i32) #1

declare dso_local i32 @kprintf_md5(i8*, i32*, i32) #1

declare dso_local i32 @cache_incr(%struct.cache_uri*, i32) #1

declare dso_local i32 @cache_access_update_stat_server(%struct.cache_uri*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
