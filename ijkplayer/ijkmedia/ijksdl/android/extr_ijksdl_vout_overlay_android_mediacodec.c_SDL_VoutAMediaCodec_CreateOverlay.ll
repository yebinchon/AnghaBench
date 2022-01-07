; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/android/extr_ijksdl_vout_overlay_android_mediacodec.c_SDL_VoutAMediaCodec_CreateOverlay.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/android/extr_ijksdl_vout_overlay_android_mediacodec.c_SDL_VoutAMediaCodec_CreateOverlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32 (%struct.TYPE_7__*)*, i32, i32, i32, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32*, i32*, i32* }

@.str = private unnamed_addr constant [65 x i8] c"SDL_VoutAMediaCodec_CreateOverlay(w=%d, h=%d, fmt=_AMC vout=%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"overlay allocation failed\00", align 1
@g_vout_overlay_amediacodec_class = common dso_local global i32 0, align 4
@SDL_FCC__AMC = common dso_local global i32 0, align 4
@overlay_lock = common dso_local global i32 0, align 4
@overlay_unlock = common dso_local global i32 0, align 4
@overlay_unref = common dso_local global i32 0, align 4
@func_fill_frame = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"SDL_CreateMutex failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @SDL_VoutAMediaCodec_CreateOverlay(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @SDLTRACE(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11, i32* %12)
  %14 = call %struct.TYPE_7__* @SDL_VoutOverlay_CreateInternal(i32 40)
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %8, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = call i32 @ALOGE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %81

19:                                               ; preds = %3
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 12
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %9, align 8
  %23 = call i32 (...) @SDL_CreateMutex()
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 5
  store i32* %26, i32** %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 4
  store i32* null, i32** %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  store i32* null, i32** %32, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 11
  store i32* @g_vout_overlay_amediacodec_class, i32** %34, align 8
  %35 = load i32, i32* @SDL_FCC__AMC, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 10
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  store i32 1, i32* %55, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 7
  store i32 (%struct.TYPE_7__*)* @overlay_free_l, i32 (%struct.TYPE_7__*)** %57, align 8
  %58 = load i32, i32* @overlay_lock, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @overlay_unlock, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @overlay_unref, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @func_fill_frame, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %19
  %75 = call i32 @ALOGE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %78

76:                                               ; preds = %19
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %77, %struct.TYPE_7__** %4, align 8
  br label %81

78:                                               ; preds = %74
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %80 = call i32 @overlay_free_l(%struct.TYPE_7__* %79)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %81

81:                                               ; preds = %78, %76, %17
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %82
}

declare dso_local i32 @SDLTRACE(i8*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_7__* @SDL_VoutOverlay_CreateInternal(i32) #1

declare dso_local i32 @ALOGE(i8*) #1

declare dso_local i32 @SDL_CreateMutex(...) #1

declare dso_local i32 @overlay_free_l(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
