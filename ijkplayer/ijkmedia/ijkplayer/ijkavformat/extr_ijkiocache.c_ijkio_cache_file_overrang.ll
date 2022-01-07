; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkiocache.c_ijkio_cache_file_overrang.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkiocache.c_ijkio_cache_file_overrang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i64, i64, i64*, i32, i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"ijkio_cache_file_overrang will flush file\0A\00", align 1
@tree_destroy = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@FILE_RW_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i64*, i32)* @ijkio_cache_file_overrang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ijkio_cache_file_overrang(%struct.TYPE_8__* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %8, align 8
  %12 = load i32, i32* @AV_LOG_WARNING, align 4
  %13 = call i32 @av_log(i32* null, i32 %12, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = call i32 @pthread_mutex_lock(i32* %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 10
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %79, label %25

25:                                               ; preds = %3
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 8
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @ijk_map_remove(i32 %28, i64 %31)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 9
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @tree_destroy, align 4
  %37 = call i32 @ijk_map_traversal_handle(i32 %35, i32* null, i32 %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ijk_map_clear(i32 %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @memset(i32 %44, i32 0, i32 4)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 8
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ijk_map_put(i32 %48, i64 %51, i32 %54)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 6
  %58 = load i64*, i64** %57, align 8
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 5
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 4
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @SEEK_SET, align 4
  %72 = call i64 @lseek(i32 %70, i32 0, i32 %71)
  %73 = load i64*, i64** %6, align 8
  store i64 %72, i64* %73, align 8
  %74 = load i64*, i64** %6, align 8
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %25
  br label %89

78:                                               ; preds = %25
  br label %80

79:                                               ; preds = %3
  br label %89

80:                                               ; preds = %78
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = call i32 @pthread_mutex_unlock(i32* %84)
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %4, align 8
  br label %96

89:                                               ; preds = %79, %77
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = call i32 @pthread_mutex_unlock(i32* %93)
  %95 = load i64, i64* @FILE_RW_ERROR, align 8
  store i64 %95, i64* %4, align 8
  br label %96

96:                                               ; preds = %89, %80
  %97 = load i64, i64* %4, align 8
  ret i64 %97
}

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @ijk_map_remove(i32, i64) #1

declare dso_local i32 @ijk_map_traversal_handle(i32, i32*, i32) #1

declare dso_local i32 @ijk_map_clear(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ijk_map_put(i32, i64, i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
