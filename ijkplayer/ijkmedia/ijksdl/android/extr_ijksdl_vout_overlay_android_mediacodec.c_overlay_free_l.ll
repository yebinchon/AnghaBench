; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/android/extr_ijksdl_vout_overlay_android_mediacodec.c_overlay_free_l.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/android/extr_ijksdl_vout_overlay_android_mediacodec.c_overlay_free_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [45 x i8] c"SDL_Overlay(mediacodec): overlay_free_l(%p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @overlay_free_l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @overlay_free_l(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = call i32 @AMCTRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %4)
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = icmp ne %struct.TYPE_8__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %31

9:                                                ; preds = %1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %3, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  br label %31

16:                                               ; preds = %9
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = call i32 @overlay_unref(%struct.TYPE_8__* %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @SDL_DestroyMutex(i64 %26)
  br label %28

28:                                               ; preds = %23, %16
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = call i32 @SDL_VoutOverlay_FreeInternal(%struct.TYPE_8__* %29)
  br label %31

31:                                               ; preds = %28, %15, %8
  ret void
}

declare dso_local i32 @AMCTRACE(i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @overlay_unref(%struct.TYPE_8__*) #1

declare dso_local i32 @SDL_DestroyMutex(i64) #1

declare dso_local i32 @SDL_VoutOverlay_FreeInternal(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
