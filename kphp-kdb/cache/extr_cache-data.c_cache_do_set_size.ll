; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_do_set_size.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_do_set_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.cache_uri = type { i64, i32 }
%struct.lev_cache_set_size_short = type { i32 }
%struct.lev_cache_set_size_long = type { i64, i32 }

@CACHE_MAX_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"cache_do_set_size (%s, %lld), size is out of range\0A\00", align 1
@LEV_CACHE_SET_SIZE_SHORT = common dso_local global i32 0, align 4
@LEV_CACHE_SET_SIZE_LONG = common dso_local global i32 0, align 4
@get_uri_f_last_md5 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_do_set_size(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cache_uri*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lev_cache_set_size_short*, align 8
  %9 = alloca %struct.lev_cache_set_size_long*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @CACHE_MAX_SIZE, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12, %2
  %17 = load i8*, i8** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %17, i64 %18)
  store i32 -1, i32* %3, align 4
  br label %75

20:                                               ; preds = %12
  %21 = load i8*, i8** %4, align 8
  %22 = call %struct.cache_uri* @get_uri_f(i8* %21, i32 0)
  store %struct.cache_uri* %22, %struct.cache_uri** %6, align 8
  %23 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %24 = icmp eq %struct.cache_uri* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %75

26:                                               ; preds = %20
  %27 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %28 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %74

32:                                               ; preds = %26
  %33 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %34 = call i32 @cache_get_unique_md5_bytes(%struct.cache_uri* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 8
  br i1 %40, label %41, label %56

41:                                               ; preds = %32
  %42 = load i64, i64* %5, align 8
  %43 = icmp sle i64 %42, 4294967295
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load i32, i32* @LEV_CACHE_SET_SIZE_SHORT, align 4
  %46 = load i64, i64* %5, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i8* @alloc_log_event(i32 %45, i32 4, i32 %47)
  %49 = bitcast i8* %48 to %struct.lev_cache_set_size_short*
  store %struct.lev_cache_set_size_short* %49, %struct.lev_cache_set_size_short** %8, align 8
  %50 = load %struct.lev_cache_set_size_short*, %struct.lev_cache_set_size_short** %8, align 8
  %51 = getelementptr inbounds %struct.lev_cache_set_size_short, %struct.lev_cache_set_size_short* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %54 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %53, i32 0, i32 1
  %55 = call i32 @memcpy(i32 %52, i32* %54, i32 8)
  br label %70

56:                                               ; preds = %41, %32
  %57 = load i32, i32* @LEV_CACHE_SET_SIZE_LONG, align 4
  %58 = call i8* @alloc_log_event(i32 %57, i32 16, i32 0)
  %59 = bitcast i8* %58 to %struct.lev_cache_set_size_long*
  store %struct.lev_cache_set_size_long* %59, %struct.lev_cache_set_size_long** %9, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load %struct.lev_cache_set_size_long*, %struct.lev_cache_set_size_long** %9, align 8
  %62 = getelementptr inbounds %struct.lev_cache_set_size_long, %struct.lev_cache_set_size_long* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %64 = call i32 @compute_get_uri_f_last_md5(%struct.cache_uri* %63)
  %65 = load %struct.lev_cache_set_size_long*, %struct.lev_cache_set_size_long** %9, align 8
  %66 = getelementptr inbounds %struct.lev_cache_set_size_long, %struct.lev_cache_set_size_long* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @get_uri_f_last_md5, i32 0, i32 0, i32 0), align 8
  %69 = call i32 @memcpy(i32 %67, i32* %68, i32 16)
  br label %70

70:                                               ; preds = %56, %44
  %71 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %72 = load i64, i64* %5, align 8
  %73 = call %struct.cache_uri* @cache_set_size(%struct.cache_uri* %71, i64 %72)
  store %struct.cache_uri* %73, %struct.cache_uri** %6, align 8
  br label %74

74:                                               ; preds = %70, %26
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %25, %16
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @vkprintf(i32, i8*, i8*, i64) #1

declare dso_local %struct.cache_uri* @get_uri_f(i8*, i32) #1

declare dso_local i32 @cache_get_unique_md5_bytes(%struct.cache_uri*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @compute_get_uri_f_last_md5(%struct.cache_uri*) #1

declare dso_local %struct.cache_uri* @cache_set_size(%struct.cache_uri*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
