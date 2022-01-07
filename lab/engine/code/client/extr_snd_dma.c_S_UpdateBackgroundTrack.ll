; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_snd_dma.c_S_UpdateBackgroundTrack.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_snd_dma.c_S_UpdateBackgroundTrack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@s_backgroundStream = common dso_local global %struct.TYPE_8__* null, align 8
@s_musicVolume = common dso_local global %struct.TYPE_7__* null, align 8
@s_rawend = common dso_local global i64* null, align 8
@s_soundtime = common dso_local global i64 0, align 8
@MAX_RAW_SAMPLES = common dso_local global i64 0, align 8
@dma = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@s_backgroundLoop = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_UpdateBackgroundTrack() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [30000 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** @s_backgroundStream, align 8
  %7 = icmp ne %struct.TYPE_8__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %139

9:                                                ; preds = %0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @s_musicVolume, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sle i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %139

15:                                               ; preds = %9
  %16 = load i64*, i64** @s_rawend, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @s_soundtime, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i64, i64* @s_soundtime, align 8
  %23 = load i64*, i64** @s_rawend, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %21, %15
  br label %26

26:                                               ; preds = %138, %25
  %27 = load i64*, i64** @s_rawend, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @s_soundtime, align 8
  %31 = load i64, i64* @MAX_RAW_SAMPLES, align 8
  %32 = add nsw i64 %30, %31
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %139

34:                                               ; preds = %26
  %35 = load i64, i64* @MAX_RAW_SAMPLES, align 8
  %36 = load i64*, i64** @s_rawend, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @s_soundtime, align 8
  %40 = sub nsw i64 %38, %39
  %41 = sub nsw i64 %35, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %1, align 4
  %43 = load i32, i32* %1, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** @s_backgroundStream, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %43, %47
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @dma, i32 0, i32 0), align 4
  %50 = sdiv i32 %48, %49
  store i32 %50, i32* %2, align 4
  %51 = load i32, i32* %2, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %34
  br label %139

54:                                               ; preds = %34
  %55 = load i32, i32* %2, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** @s_backgroundStream, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** @s_backgroundStream, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %59, %63
  %65 = mul nsw i32 %55, %64
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp ugt i64 %67, 120000
  br i1 %68, label %69, label %81

69:                                               ; preds = %54
  store i32 120000, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** @s_backgroundStream, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** @s_backgroundStream, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %74, %78
  %80 = sdiv i32 %70, %79
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %69, %54
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** @s_backgroundStream, align 8
  %83 = load i32, i32* %4, align 4
  %84 = getelementptr inbounds [30000 x i32], [30000 x i32]* %3, i64 0, i64 0
  %85 = call i32 @S_CodecReadStream(%struct.TYPE_8__* %82, i32 %83, i32* %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %81
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** @s_backgroundStream, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** @s_backgroundStream, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %94, %98
  %100 = sdiv i32 %90, %99
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %89, %81
  %102 = load i32, i32* %5, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %123

104:                                              ; preds = %101
  %105 = load i32, i32* %2, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** @s_backgroundStream, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** @s_backgroundStream, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** @s_backgroundStream, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds [30000 x i32], [30000 x i32]* %3, i64 0, i64 0
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** @s_musicVolume, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @S_Base_RawSamples(i32 0, i32 %105, i32 %109, i32 %113, i32 %117, i32* %118, i64 %121, i32 -1)
  br label %138

123:                                              ; preds = %101
  %124 = load i64*, i64** @s_backgroundLoop, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = load i64*, i64** @s_backgroundLoop, align 8
  %130 = call i32 @S_OpenBackgroundStream(i64* %129)
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** @s_backgroundStream, align 8
  %132 = icmp ne %struct.TYPE_8__* %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %128
  br label %139

134:                                              ; preds = %128
  br label %137

135:                                              ; preds = %123
  %136 = call i32 (...) @S_Base_StopBackgroundTrack()
  br label %139

137:                                              ; preds = %134
  br label %138

138:                                              ; preds = %137, %104
  br label %26

139:                                              ; preds = %8, %14, %53, %133, %135, %26
  ret void
}

declare dso_local i32 @S_CodecReadStream(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @S_Base_RawSamples(i32, i32, i32, i32, i32, i32*, i64, i32) #1

declare dso_local i32 @S_OpenBackgroundStream(i64*) #1

declare dso_local i32 @S_Base_StopBackgroundTrack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
