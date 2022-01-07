; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/android/extr_ijkplayer_jni.c_jni_set_media_data_source.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/android/extr_ijkplayer_jni.c_jni_set_media_data_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 (%struct.TYPE_10__**, i64)* }

@g_clazz = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__**, i64, i64)* @jni_set_media_data_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @jni_set_media_data_source(%struct.TYPE_10__** %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_10__**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_10__** %0, %struct.TYPE_10__*** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %10 = call i32 @pthread_mutex_lock(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @g_clazz, i32 0, i32 0))
  %11 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @J4AC_IjkMediaPlayer__mNativeMediaDataSource__get__catchAll(%struct.TYPE_10__** %11, i64 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @J4AC_IMediaDataSource__close__catchAll(%struct.TYPE_10__** %17, i64 %18)
  %20 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %21 = call i32 @J4A_DeleteGlobalRef__p(%struct.TYPE_10__** %20, i64* %8)
  %22 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @J4AC_IjkMediaPlayer__mNativeMediaDataSource__set__catchAll(%struct.TYPE_10__** %22, i64 %23, i32 0)
  br label %25

25:                                               ; preds = %16, %3
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %25
  %29 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64 (%struct.TYPE_10__**, i64)*, i64 (%struct.TYPE_10__**, i64)** %31, align 8
  %33 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i64 %32(%struct.TYPE_10__** %33, i64 %34)
  store i64 %35, i64* %9, align 8
  %36 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %37 = call i64 @J4A_ExceptionCheck__catchAll(%struct.TYPE_10__** %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %28
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39, %28
  br label %51

43:                                               ; preds = %39
  %44 = load i64, i64* %9, align 8
  store i64 %44, i64* %7, align 8
  %45 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %7, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @J4AC_IjkMediaPlayer__mNativeMediaDataSource__set__catchAll(%struct.TYPE_10__** %45, i64 %46, i32 %48)
  br label %50

50:                                               ; preds = %43, %25
  br label %51

51:                                               ; preds = %50, %42
  %52 = call i32 @pthread_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @g_clazz, i32 0, i32 0))
  %53 = load i64, i64* %7, align 8
  ret i64 %53
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @J4AC_IjkMediaPlayer__mNativeMediaDataSource__get__catchAll(%struct.TYPE_10__**, i64) #1

declare dso_local i32 @J4AC_IMediaDataSource__close__catchAll(%struct.TYPE_10__**, i64) #1

declare dso_local i32 @J4A_DeleteGlobalRef__p(%struct.TYPE_10__**, i64*) #1

declare dso_local i32 @J4AC_IjkMediaPlayer__mNativeMediaDataSource__set__catchAll(%struct.TYPE_10__**, i64, i32) #1

declare dso_local i64 @J4A_ExceptionCheck__catchAll(%struct.TYPE_10__**) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
