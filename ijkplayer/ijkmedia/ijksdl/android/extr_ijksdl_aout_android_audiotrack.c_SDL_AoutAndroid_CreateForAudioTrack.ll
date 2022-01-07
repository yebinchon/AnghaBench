; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/android/extr_ijksdl_aout_android_audiotrack.c_SDL_AoutAndroid_CreateForAudioTrack.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/android/extr_ijksdl_aout_android_audiotrack.c_SDL_AoutAndroid_CreateForAudioTrack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { float, i32, i32 }

@g_audiotrack_class = common dso_local global i32 0, align 4
@aout_free_l = common dso_local global i32 0, align 4
@aout_open_audio = common dso_local global i32 0, align 4
@aout_pause_audio = common dso_local global i32 0, align 4
@aout_flush_audio = common dso_local global i32 0, align 4
@aout_set_volume = common dso_local global i32 0, align 4
@aout_close_audio = common dso_local global i32 0, align 4
@aout_get_audio_session_id = common dso_local global i32 0, align 4
@func_set_playback_rate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @SDL_AoutAndroid_CreateForAudioTrack() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = call %struct.TYPE_6__* @SDL_Aout_CreateInternal(i32 12)
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = icmp ne %struct.TYPE_6__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  br label %47

8:                                                ; preds = %0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 9
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %3, align 8
  %12 = call i32 (...) @SDL_CreateCond()
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = call i32 (...) @SDL_CreateMutex()
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store float 1.000000e+00, float* %19, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 8
  store i32* @g_audiotrack_class, i32** %21, align 8
  %22 = load i32, i32* @aout_free_l, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @aout_open_audio, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @aout_pause_audio, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @aout_flush_audio, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @aout_set_volume, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @aout_close_audio, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @aout_get_audio_session_id, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @func_set_playback_rate, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %1, align 8
  br label %47

47:                                               ; preds = %8, %7
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  ret %struct.TYPE_6__* %48
}

declare dso_local %struct.TYPE_6__* @SDL_Aout_CreateInternal(i32) #1

declare dso_local i32 @SDL_CreateCond(...) #1

declare dso_local i32 @SDL_CreateMutex(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
