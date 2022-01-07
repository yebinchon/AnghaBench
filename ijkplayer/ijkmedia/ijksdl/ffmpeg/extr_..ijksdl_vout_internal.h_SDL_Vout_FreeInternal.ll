; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/ffmpeg/extr_..ijksdl_vout_internal.h_SDL_Vout_FreeInternal.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/ffmpeg/extr_..ijksdl_vout_internal.h_SDL_Vout_FreeInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @SDL_Vout_FreeInternal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SDL_Vout_FreeInternal(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = icmp ne %struct.TYPE_5__* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %25

6:                                                ; preds = %1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @SDL_DestroyMutex(i64 %14)
  br label %16

16:                                               ; preds = %11, %6
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = call i32 @free(%struct.TYPE_5__* %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = call i32 @memset(%struct.TYPE_5__* %21, i32 0, i32 16)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = call i32 @free(%struct.TYPE_5__* %23)
  br label %25

25:                                               ; preds = %16, %5
  ret void
}

declare dso_local i32 @SDL_DestroyMutex(i64) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
