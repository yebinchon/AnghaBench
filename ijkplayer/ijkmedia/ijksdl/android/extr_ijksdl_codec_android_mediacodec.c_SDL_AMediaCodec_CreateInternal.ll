; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/android/extr_ijksdl_codec_android_mediacodec.c_SDL_AMediaCodec_CreateInternal.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/android/extr_ijksdl_codec_android_mediacodec.c_SDL_AMediaCodec_CreateInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i8*, i32* }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @SDL_AMediaCodec_CreateInternal(i64 %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %3, align 8
  %5 = call i8* @mallocz(i32 24)
  %6 = bitcast i8* %5 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = icmp ne %struct.TYPE_6__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %50

10:                                               ; preds = %1
  %11 = call i32* (...) @SDL_CreateMutex()
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  store i32* %11, i32** %13, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %47

19:                                               ; preds = %10
  %20 = load i64, i64* %3, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i8* @mallocz(i32 %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %19
  br label %47

30:                                               ; preds = %19
  %31 = call i8* @mallocz(i32 4)
  %32 = bitcast i8* %31 to %struct.TYPE_5__*
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = icmp ne %struct.TYPE_5__* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  br label %47

40:                                               ; preds = %30
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = call i32 @SDL_AMediaCodec_FakeFifo_init(i32* %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %2, align 8
  br label %50

47:                                               ; preds = %39, %29, %18
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = call i32 @SDL_AMediaCodec_FreeInternal(%struct.TYPE_6__* %48)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %50

50:                                               ; preds = %47, %40, %9
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %51
}

declare dso_local i8* @mallocz(i32) #1

declare dso_local i32* @SDL_CreateMutex(...) #1

declare dso_local i32 @SDL_AMediaCodec_FakeFifo_init(i32*) #1

declare dso_local i32 @SDL_AMediaCodec_FreeInternal(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
