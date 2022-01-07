; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/android/pipeline/extr_....ff_ffplay_def.h_ffp_reset_demux_cache_control.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/android/pipeline/extr_....ff_ffplay_def.h_ffp_reset_demux_cache_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i8*, i32, i32, i32 }

@DEFAULT_MIN_FRAMES = common dso_local global i32 0, align 4
@MAX_QUEUE_SIZE = common dso_local global i32 0, align 4
@DEFAULT_HIGH_WATER_MARK_IN_BYTES = common dso_local global i32 0, align 4
@DEFAULT_FIRST_HIGH_WATER_MARK_IN_MS = common dso_local global i8* null, align 8
@DEFAULT_NEXT_HIGH_WATER_MARK_IN_MS = common dso_local global i32 0, align 4
@DEFAULT_LAST_HIGH_WATER_MARK_IN_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @ffp_reset_demux_cache_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffp_reset_demux_cache_control(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load i32, i32* @DEFAULT_MIN_FRAMES, align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 6
  store i32 %3, i32* %5, align 8
  %6 = load i32, i32* @MAX_QUEUE_SIZE, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 5
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @DEFAULT_HIGH_WATER_MARK_IN_BYTES, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 8
  %12 = load i8*, i8** @DEFAULT_FIRST_HIGH_WATER_MARK_IN_MS, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* @DEFAULT_NEXT_HIGH_WATER_MARK_IN_MS, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @DEFAULT_LAST_HIGH_WATER_MARK_IN_MS, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load i8*, i8** @DEFAULT_FIRST_HIGH_WATER_MARK_IN_MS, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
