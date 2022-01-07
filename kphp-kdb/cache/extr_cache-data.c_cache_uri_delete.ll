; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_uri_delete.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_uri_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_cache_uri = type { i32 }
%struct.cache_uri = type { i64 }

@log_last_ts = common dso_local global i64 0, align 8
@cache_features_mask = common dso_local global i32 0, align 4
@CACHE_FEATURE_REPLAY_DELETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Delete not existing global uri - \22%s\22.\0A\00", align 1
@uri_living_time = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [91 x i8] c"Skip deleting global uri, since it isn't too old - \22%s\22, log_last_ts: %d, last_access: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lev_cache_uri*, i32)* @cache_uri_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_uri_delete(%struct.lev_cache_uri* %0, i32 %1) #0 {
  %3 = alloca %struct.lev_cache_uri*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [256 x i8], align 16
  %6 = alloca %struct.cache_uri*, align 8
  store %struct.lev_cache_uri* %0, %struct.lev_cache_uri** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* @log_last_ts, align 8
  %8 = icmp sgt i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i32, i32* @cache_features_mask, align 4
  %12 = load i32, i32* @CACHE_FEATURE_REPLAY_DELETE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %57

15:                                               ; preds = %2
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %17 = load %struct.lev_cache_uri*, %struct.lev_cache_uri** %3, align 8
  %18 = getelementptr inbounds %struct.lev_cache_uri, %struct.lev_cache_uri* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @memcpy(i8* %16, i32 %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 %23
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %26 = call %struct.cache_uri* @get_uri_f(i8* %25, i32 0)
  store %struct.cache_uri* %26, %struct.cache_uri** %6, align 8
  %27 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %28 = icmp eq %struct.cache_uri* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %15
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %31 = call i32 (i32, i8*, i8*, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %30)
  br label %57

32:                                               ; preds = %15
  %33 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %34 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @log_last_ts, align 8
  %37 = load i64, i64* @uri_living_time, align 8
  %38 = sub nsw i64 %36, %37
  %39 = add nsw i64 %38, 7200
  %40 = icmp sge i64 %35, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %43 = load i64, i64* @log_last_ts, align 8
  %44 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %45 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 (i32, i8*, i8*, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), i8* %42, i64 %43, i64 %46)
  br label %57

48:                                               ; preds = %32
  %49 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %51 = call %struct.cache_uri* @get_uri_f(i8* %50, i32 -1)
  %52 = icmp eq %struct.cache_uri* %49, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %56 = call i32 @cache_uri_free(%struct.cache_uri* %55)
  br label %57

57:                                               ; preds = %29, %41, %48, %2
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local %struct.cache_uri* @get_uri_f(i8*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @cache_uri_free(%struct.cache_uri*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
