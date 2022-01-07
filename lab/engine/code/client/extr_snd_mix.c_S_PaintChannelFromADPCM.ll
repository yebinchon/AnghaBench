; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_snd_mix.c_S_PaintChannelFromADPCM.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_snd_mix.c_S_PaintChannelFromADPCM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_10__* }
%struct.TYPE_13__ = type { i32, i32, i32, i64 }

@snd_vol = common dso_local global i32 0, align 4
@paintbuffer = common dso_local global %struct.TYPE_12__* null, align 8
@SND_CHUNK_SIZE = common dso_local global i32 0, align 4
@sfxScratchIndex = common dso_local global i32 0, align 4
@sfxScratchPointer = common dso_local global %struct.TYPE_11__* null, align 8
@sfxScratchBuffer = common dso_local global i16* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_PaintChannelFromADPCM(%struct.TYPE_13__* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i16*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @snd_vol, align 4
  %22 = mul nsw i32 %20, %21
  store i32 %22, i32* %12, align 4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @snd_vol, align 4
  %27 = mul nsw i32 %25, %26
  store i32 %27, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** @paintbuffer, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i64 %30
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %15, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %16, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %5
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 %40, %43
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %39, %5
  br label %46

46:                                               ; preds = %51, %45
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @SND_CHUNK_SIZE, align 4
  %49 = mul nsw i32 %48, 4
  %50 = icmp sge i32 %47, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  store %struct.TYPE_10__* %54, %struct.TYPE_10__** %16, align 8
  %55 = load i32, i32* @SND_CHUNK_SIZE, align 4
  %56 = mul nsw i32 %55, 4
  %57 = load i32, i32* %9, align 4
  %58 = sub nsw i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %14, align 4
  br label %46

61:                                               ; preds = %46
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @sfxScratchIndex, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sfxScratchPointer, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %68 = icmp ne %struct.TYPE_11__* %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65, %61
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %71 = load i16*, i16** @sfxScratchBuffer, align 8
  %72 = call i32 @S_AdpcmGetSamples(%struct.TYPE_10__* %70, i16* %71)
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* @sfxScratchIndex, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %74, %struct.TYPE_11__** @sfxScratchPointer, align 8
  br label %75

75:                                               ; preds = %69, %65
  %76 = load i16*, i16** @sfxScratchBuffer, align 8
  store i16* %76, i16** %17, align 8
  store i32 0, i32* %14, align 4
  br label %77

77:                                               ; preds = %125, %75
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %128

81:                                               ; preds = %77
  %82 = load i16*, i16** %17, align 8
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i16, i16* %82, i64 %85
  %87 = load i16, i16* %86, align 2
  %88 = sext i16 %87 to i32
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %12, align 4
  %91 = mul nsw i32 %89, %90
  %92 = ashr i32 %91, 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, %92
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %13, align 4
  %102 = mul nsw i32 %100, %101
  %103 = ashr i32 %102, 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, %103
  store i32 %110, i32* %108, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @SND_CHUNK_SIZE, align 4
  %113 = mul nsw i32 %112, 4
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %81
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  store %struct.TYPE_10__* %118, %struct.TYPE_10__** %16, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %120 = load i16*, i16** @sfxScratchBuffer, align 8
  %121 = call i32 @S_AdpcmGetSamples(%struct.TYPE_10__* %119, i16* %120)
  store i32 0, i32* %9, align 4
  %122 = load i32, i32* @sfxScratchIndex, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* @sfxScratchIndex, align 4
  br label %124

124:                                              ; preds = %115, %81
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %14, align 4
  br label %77

128:                                              ; preds = %77
  ret void
}

declare dso_local i32 @S_AdpcmGetSamples(%struct.TYPE_10__*, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
