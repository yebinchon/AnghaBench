; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_stream_toggle_pause_l.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_stream_toggle_pause_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, i64, i64, i64, i32 }
%struct.TYPE_8__ = type { double, i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32)* @stream_toggle_pause_l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stream_toggle_pause_l(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %50

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %50, label %16

16:                                               ; preds = %13
  %17 = call double (...) @av_gettime_relative()
  %18 = fdiv double %17, 1.000000e+06
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load double, double* %21, align 8
  %23 = fsub double %18, %22
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 8
  %27 = sitofp i32 %26 to double
  %28 = fadd double %27, %23
  %29 = fptosi double %28 to i32
  store i32 %29, i32* %25, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  %34 = call i32 @get_clock(%struct.TYPE_8__* %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @set_clock(%struct.TYPE_8__* %31, i32 %34, i32 %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 4
  %44 = call i32 @get_clock(%struct.TYPE_8__* %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @set_clock(%struct.TYPE_8__* %41, i32 %44, i32 %48)
  br label %51

50:                                               ; preds = %13, %2
  br label %51

51:                                               ; preds = %50, %16
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = call i32 @get_clock(%struct.TYPE_8__* %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @set_clock(%struct.TYPE_8__* %53, i32 %56, i32 %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 7
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %51
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %71, %66
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  store i32 %77, i32* %83, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store i32 %77, i32* %85, align 8
  br label %104

86:                                               ; preds = %71, %51
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  store i32 %87, i32* %93, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  store i32 %87, i32* %96, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i32 %87, i32* %98, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @SDL_AoutPauseAudio(i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %86, %76
  ret void
}

declare dso_local double @av_gettime_relative(...) #1

declare dso_local i32 @set_clock(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @get_clock(%struct.TYPE_8__*) #1

declare dso_local i32 @SDL_AoutPauseAudio(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
