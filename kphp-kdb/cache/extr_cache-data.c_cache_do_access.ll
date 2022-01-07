; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_do_access.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_do_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.cache_uri = type { i8 }
%struct.lev_cache_uri = type { i32 }
%struct.lev_cache_access_short = type { i32 }
%struct.lev_cache_access_long = type { i32 }

@uries = common dso_local global i64 0, align 8
@access_success_counters = common dso_local global i32 0, align 4
@access_miss_counters = common dso_local global i32 0, align 4
@LEV_CACHE_URI_ADD = common dso_local global i64 0, align 8
@LEV_CACHE_ACCESS_SHORT = common dso_local global i64 0, align 8
@LEV_CACHE_ACCESS_LONG = common dso_local global i64 0, align 8
@get_uri_f_last_md5 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cache_do_access(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.cache_uri*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lev_cache_uri*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lev_cache_access_short*, align 8
  %9 = alloca %struct.lev_cache_access_long*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i64, i64* @uries, align 8
  store i64 %10, i64* %3, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = call %struct.cache_uri* @get_uri_f(i8* %11, i32 1)
  store %struct.cache_uri* %12, %struct.cache_uri** %4, align 8
  %13 = load %struct.cache_uri*, %struct.cache_uri** %4, align 8
  %14 = call i32 @cache_uri_has_active_local_copy(%struct.cache_uri* %13)
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @access_success_counters, align 4
  br label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @access_miss_counters, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = call i32 @cache_stats_counter_incr(i32 %21)
  %23 = load i64, i64* @uries, align 8
  %24 = load i64, i64* %3, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %20
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 @strlen(i8* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 256
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i64, i64* @LEV_CACHE_URI_ADD, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 4, %38
  %40 = trunc i64 %39 to i32
  %41 = call i8* @alloc_log_event(i64 %36, i32 %40, i32 0)
  %42 = bitcast i8* %41 to %struct.lev_cache_uri*
  store %struct.lev_cache_uri* %42, %struct.lev_cache_uri** %6, align 8
  %43 = load %struct.lev_cache_uri*, %struct.lev_cache_uri** %6, align 8
  %44 = getelementptr inbounds %struct.lev_cache_uri, %struct.lev_cache_uri* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %2, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @memcpy(i32 %45, i8* %46, i32 %47)
  br label %49

49:                                               ; preds = %26, %20
  %50 = load %struct.cache_uri*, %struct.cache_uri** %4, align 8
  %51 = call i32 @cache_get_unique_md5_bytes(%struct.cache_uri* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 8
  br i1 %53, label %54, label %67

54:                                               ; preds = %49
  %55 = load i64, i64* @LEV_CACHE_ACCESS_SHORT, align 8
  %56 = add nsw i64 %55, 1
  %57 = call i8* @alloc_log_event(i64 %56, i32 4, i32 0)
  %58 = bitcast i8* %57 to %struct.lev_cache_access_short*
  store %struct.lev_cache_access_short* %58, %struct.lev_cache_access_short** %8, align 8
  %59 = load %struct.lev_cache_access_short*, %struct.lev_cache_access_short** %8, align 8
  %60 = getelementptr inbounds %struct.lev_cache_access_short, %struct.lev_cache_access_short* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.cache_uri*, %struct.cache_uri** %4, align 8
  %63 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %62, i32 0, i32 0
  %64 = call i32 @memcpy(i32 %61, i8* %63, i32 8)
  %65 = load %struct.lev_cache_access_short*, %struct.lev_cache_access_short** %8, align 8
  %66 = call i32 @cache_access_short(%struct.lev_cache_access_short* %65, i32 1)
  br label %85

67:                                               ; preds = %49
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %68, 16
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load i64, i64* @LEV_CACHE_ACCESS_LONG, align 8
  %73 = add nsw i64 %72, 1
  %74 = call i8* @alloc_log_event(i64 %73, i32 4, i32 0)
  %75 = bitcast i8* %74 to %struct.lev_cache_access_long*
  store %struct.lev_cache_access_long* %75, %struct.lev_cache_access_long** %9, align 8
  %76 = load %struct.cache_uri*, %struct.cache_uri** %4, align 8
  %77 = call i32 @compute_get_uri_f_last_md5(%struct.cache_uri* %76)
  %78 = load %struct.lev_cache_access_long*, %struct.lev_cache_access_long** %9, align 8
  %79 = getelementptr inbounds %struct.lev_cache_access_long, %struct.lev_cache_access_long* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @get_uri_f_last_md5, i32 0, i32 0, i32 0), align 8
  %82 = call i32 @memcpy(i32 %80, i8* %81, i32 16)
  %83 = load %struct.lev_cache_access_long*, %struct.lev_cache_access_long** %9, align 8
  %84 = call i32 @cache_access_long(%struct.lev_cache_access_long* %83, i32 1)
  br label %85

85:                                               ; preds = %67, %54
  ret void
}

declare dso_local %struct.cache_uri* @get_uri_f(i8*, i32) #1

declare dso_local i32 @cache_stats_counter_incr(i32) #1

declare dso_local i32 @cache_uri_has_active_local_copy(%struct.cache_uri*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @cache_get_unique_md5_bytes(%struct.cache_uri*) #1

declare dso_local i32 @cache_access_short(%struct.lev_cache_access_short*, i32) #1

declare dso_local i32 @compute_get_uri_f_last_md5(%struct.cache_uri*) #1

declare dso_local i32 @cache_access_long(%struct.lev_cache_access_long*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
