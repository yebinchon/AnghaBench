; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/android/extr_ijksdl_codec_android_mediacodec.c_SDL_AMediaCodecFake_dequeueOutputBuffer.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/android/extr_ijksdl_codec_android_mediacodec.c_SDL_AMediaCodecFake_dequeueOutputBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { {}*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SDL_AMediaCodecFake_dequeueOutputBuffer(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = call i64 @SDL_AMediaCodec_FakeFifo_size(i32* %12)
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @SDL_AMediaCodec_FakeFifo_dequeueOutputBuffer(i32* %19, i32* %20, i32 0)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp sge i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i64, i64* %8, align 8
  store i64 %25, i64* %4, align 8
  br label %41

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26, %3
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i64 (%struct.TYPE_7__*, i32*, i32)**
  %31 = load i64 (%struct.TYPE_7__*, i32*, i32)*, i64 (%struct.TYPE_7__*, i32*, i32)** %30, align 8
  %32 = call i32 @assert(i64 (%struct.TYPE_7__*, i32*, i32)* %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = bitcast {}** %34 to i64 (%struct.TYPE_7__*, i32*, i32)**
  %36 = load i64 (%struct.TYPE_7__*, i32*, i32)*, i64 (%struct.TYPE_7__*, i32*, i32)** %35, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i64 %36(%struct.TYPE_7__* %37, i32* %38, i32 %39)
  store i64 %40, i64* %4, align 8
  br label %41

41:                                               ; preds = %27, %24
  %42 = load i64, i64* %4, align 8
  ret i64 %42
}

declare dso_local i64 @SDL_AMediaCodec_FakeFifo_size(i32*) #1

declare dso_local i64 @SDL_AMediaCodec_FakeFifo_dequeueOutputBuffer(i32*, i32*, i32) #1

declare dso_local i32 @assert(i64 (%struct.TYPE_7__*, i32*, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
