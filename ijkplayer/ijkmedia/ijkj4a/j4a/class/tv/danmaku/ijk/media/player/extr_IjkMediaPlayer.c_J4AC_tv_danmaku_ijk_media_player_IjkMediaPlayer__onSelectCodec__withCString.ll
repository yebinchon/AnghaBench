; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkj4a/j4a/class/tv/danmaku/ijk/media/player/extr_IjkMediaPlayer.c_J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer__onSelectCodec__withCString.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkj4a/j4a/class/tv/danmaku/ijk/media/player/extr_IjkMediaPlayer.c_J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer__onSelectCodec__withCString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* (%struct.TYPE_7__**, i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer__onSelectCodec__withCString(%struct.TYPE_7__** %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %13 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32* (%struct.TYPE_7__**, i8*)*, i32* (%struct.TYPE_7__**, i8*)** %15, align 8
  %17 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32* %16(%struct.TYPE_7__** %17, i8* %18)
  store i32* %19, i32** %12, align 8
  %20 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %21 = call i64 @J4A_ExceptionCheck__throwAny(%struct.TYPE_7__** %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32*, i32** %12, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %5
  br label %42

27:                                               ; preds = %23
  %28 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32*, i32** %12, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32* @J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer__onSelectCodec(%struct.TYPE_7__** %28, i32 %29, i32* %30, i32 %31, i32 %32)
  store i32* %33, i32** %11, align 8
  %34 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %35 = call i64 @J4A_ExceptionCheck__throwAny(%struct.TYPE_7__** %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = load i32*, i32** %11, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37, %27
  store i32* null, i32** %11, align 8
  br label %42

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %41, %40, %26
  %43 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %44 = call i32 @J4A_DeleteLocalRef__p(%struct.TYPE_7__** %43, i32** %12)
  %45 = load i32*, i32** %11, align 8
  ret i32* %45
}

declare dso_local i64 @J4A_ExceptionCheck__throwAny(%struct.TYPE_7__**) #1

declare dso_local i32* @J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer__onSelectCodec(%struct.TYPE_7__**, i32, i32*, i32, i32) #1

declare dso_local i32 @J4A_DeleteLocalRef__p(%struct.TYPE_7__**, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
