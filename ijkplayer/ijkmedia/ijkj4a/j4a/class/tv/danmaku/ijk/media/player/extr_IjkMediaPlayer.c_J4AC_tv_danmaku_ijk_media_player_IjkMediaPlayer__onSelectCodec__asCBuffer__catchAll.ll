; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkj4a/j4a/class/tv/danmaku/ijk/media/player/extr_IjkMediaPlayer.c_J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer__onSelectCodec__asCBuffer__catchAll.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkj4a/j4a/class/tv/danmaku/ijk/media/player/extr_IjkMediaPlayer.c_J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer__onSelectCodec__asCBuffer__catchAll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* (%struct.TYPE_8__**, i32, i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer__onSelectCodec__asCBuffer__catchAll(%struct.TYPE_8__** %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_8__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  %18 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer__onSelectCodec__catchAll(%struct.TYPE_8__** %18, i32 %19, i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %17, align 4
  %24 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %25 = call i64 @J4A_ExceptionCheck__catchAll(%struct.TYPE_8__** %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %7
  %28 = load i32, i32* %17, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27, %7
  br label %52

31:                                               ; preds = %27
  %32 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i8* (%struct.TYPE_8__**, i32, i32*)*, i8* (%struct.TYPE_8__**, i32, i32*)** %34, align 8
  %36 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %37 = load i32, i32* %17, align 4
  %38 = call i8* %35(%struct.TYPE_8__** %36, i32 %37, i32* null)
  store i8* %38, i8** %16, align 8
  %39 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %40 = call i64 @J4A_ExceptionCheck__catchAll(%struct.TYPE_8__** %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %31
  %43 = load i8*, i8** %16, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42, %31
  br label %52

46:                                               ; preds = %42
  %47 = load i8*, i8** %13, align 8
  %48 = load i8*, i8** %16, align 8
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @strlcpy(i8* %47, i8* %48, i32 %49)
  %51 = load i8*, i8** %13, align 8
  store i8* %51, i8** %15, align 8
  br label %52

52:                                               ; preds = %46, %45, %30
  %53 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %54 = load i32, i32* %17, align 4
  %55 = call i32 @J4A_ReleaseStringUTFChars__p(%struct.TYPE_8__** %53, i32 %54, i8** %16)
  %56 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %57 = call i32 @J4A_DeleteLocalRef__p(%struct.TYPE_8__** %56, i32* %17)
  %58 = load i8*, i8** %15, align 8
  ret i8* %58
}

declare dso_local i32 @J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer__onSelectCodec__catchAll(%struct.TYPE_8__**, i32, i32, i32, i32) #1

declare dso_local i64 @J4A_ExceptionCheck__catchAll(%struct.TYPE_8__**) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @J4A_ReleaseStringUTFChars__p(%struct.TYPE_8__**, i32, i8**) #1

declare dso_local i32 @J4A_DeleteLocalRef__p(%struct.TYPE_8__**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
