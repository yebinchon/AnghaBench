; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_local_copy_get_flags.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_local_copy_get_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_local_copy = type { i32, i64 }
%union.cache_packed_local_copy_location = type { i64, [8 x i8] }
%struct.TYPE_2__ = type { i32, i32, i32 }

@CACHE_LOCAL_COPY_FLAG_TEMPORARLY_UNAVAILABLE = common dso_local global i32 0, align 4
@CACHE_LOCAL_COPY_FLAG_YELLOW_LIGHT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"cache_local_copy_get_flags: yellow_light_duration = %d\0A\00", align 1
@log_last_ts = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_local_copy_get_flags(%struct.cache_local_copy* %0, %union.cache_packed_local_copy_location* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_local_copy*, align 8
  %5 = alloca %union.cache_packed_local_copy_location*, align 8
  %6 = alloca i32, align 4
  store %struct.cache_local_copy* %0, %struct.cache_local_copy** %4, align 8
  store %union.cache_packed_local_copy_location* %1, %union.cache_packed_local_copy_location** %5, align 8
  %7 = load %struct.cache_local_copy*, %struct.cache_local_copy** %4, align 8
  %8 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @CACHE_LOCAL_COPY_FLAG_TEMPORARLY_UNAVAILABLE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

14:                                               ; preds = %2
  %15 = load %struct.cache_local_copy*, %struct.cache_local_copy** %4, align 8
  %16 = load %union.cache_packed_local_copy_location*, %union.cache_packed_local_copy_location** %5, align 8
  %17 = call i32 @cache_local_copy_compute_packed_location(%struct.cache_local_copy* %15, %union.cache_packed_local_copy_location* %16)
  %18 = load %struct.cache_local_copy*, %struct.cache_local_copy** %4, align 8
  %19 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CACHE_LOCAL_COPY_FLAG_YELLOW_LIGHT_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %14
  %28 = load i64, i64* @log_last_ts, align 8
  %29 = load %struct.cache_local_copy*, %struct.cache_local_copy** %4, align 8
  %30 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = icmp sle i64 %28, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 2, i32* %3, align 4
  br label %59

37:                                               ; preds = %27, %14
  %38 = load %union.cache_packed_local_copy_location*, %union.cache_packed_local_copy_location** %5, align 8
  %39 = bitcast %union.cache_packed_local_copy_location* %38 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load %union.cache_packed_local_copy_location*, %union.cache_packed_local_copy_location** %5, align 8
  %44 = bitcast %union.cache_packed_local_copy_location* %43 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %union.cache_packed_local_copy_location*, %union.cache_packed_local_copy_location** %5, align 8
  %48 = bitcast %union.cache_packed_local_copy_location* %47 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %union.cache_packed_local_copy_location*, %union.cache_packed_local_copy_location** %5, align 8
  %52 = bitcast %union.cache_packed_local_copy_location* %51 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @cache_get_disk_status(i32 %46, i32 %50, i32 %54)
  br label %57

56:                                               ; preds = %37
  br label %57

57:                                               ; preds = %56, %42
  %58 = phi i32 [ %55, %42 ], [ 1, %56 ]
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %36, %13
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @cache_local_copy_compute_packed_location(%struct.cache_local_copy*, %union.cache_packed_local_copy_location*) #1

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

declare dso_local i32 @cache_get_disk_status(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
