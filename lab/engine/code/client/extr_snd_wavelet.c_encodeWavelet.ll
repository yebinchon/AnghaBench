; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_snd_wavelet.c_encodeWavelet.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_snd_wavelet.c_encodeWavelet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_5__* }

@madeTable = common dso_local global i64 0, align 8
@mulawToShort = common dso_local global float* null, align 8
@qtrue = common dso_local global i64 0, align 8
@SND_CHUNK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encodeWavelet(%struct.TYPE_6__* %0, i16* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca [4097 x float], align 16
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i16* %1, i16** %4, align 8
  %13 = bitcast [4097 x float]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 16388, i1 false)
  %14 = load i64, i64* @madeTable, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %28, %16
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 256
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @MuLawDecode(i32 %21)
  %23 = sitofp i64 %22 to float
  %24 = load float*, float** @mulawToShort, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %24, i64 %26
  store float %23, float* %27, align 4
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %17

31:                                               ; preds = %17
  %32 = load i64, i64* @qtrue, align 8
  store i64 %32, i64* @madeTable, align 8
  br label %33

33:                                               ; preds = %31, %2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %11, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %125, %33
  %38 = load i32, i32* %8, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %132

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @SND_CHUNK_SIZE, align 4
  %44 = mul nsw i32 %43, 2
  %45 = icmp sgt i32 %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @SND_CHUNK_SIZE, align 4
  %48 = mul nsw i32 %47, 2
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %46, %40
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 4
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 4, i32* %9, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = call %struct.TYPE_5__* (...) @SND_malloc()
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** %10, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = icmp eq %struct.TYPE_5__* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %62, align 8
  br label %71

63:                                               ; preds = %53
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %65 = icmp ne %struct.TYPE_5__* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  store %struct.TYPE_5__* %67, %struct.TYPE_5__** %69, align 8
  br label %70

70:                                               ; preds = %66, %63
  br label %71

71:                                               ; preds = %70, %59
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %72, %struct.TYPE_5__** %11, align 8
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %86, %71
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load i16*, i16** %4, align 8
  %79 = load i16, i16* %78, align 2
  %80 = sitofp i16 %79 to float
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [4097 x float], [4097 x float]* %5, i64 0, i64 %82
  store float %80, float* %83, align 4
  %84 = load i16*, i16** %4, align 8
  %85 = getelementptr inbounds i16, i16* %84, i32 1
  store i16* %85, i16** %4, align 8
  br label %86

86:                                               ; preds = %77
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %73

89:                                               ; preds = %73
  %90 = getelementptr inbounds [4097 x float], [4097 x float]* %5, i64 0, i64 0
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @wt1(float* %90, i32 %91, i32 1)
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i32*
  store i32* %96, i32** %12, align 8
  store i32 0, i32* %7, align 4
  br label %97

97:                                               ; preds = %122, %89
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %125

101:                                              ; preds = %97
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [4097 x float], [4097 x float]* %5, i64 0, i64 %103
  %105 = load float, float* %104, align 4
  store float %105, float* %6, align 4
  %106 = load float, float* %6, align 4
  %107 = fcmp ogt float %106, 3.276700e+04
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  store float 3.276700e+04, float* %6, align 4
  br label %114

109:                                              ; preds = %101
  %110 = load float, float* %6, align 4
  %111 = fcmp olt float %110, -3.276800e+04
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store float -3.276800e+04, float* %6, align 4
  br label %113

113:                                              ; preds = %112, %109
  br label %114

114:                                              ; preds = %113, %108
  %115 = load float, float* %6, align 4
  %116 = fptosi float %115 to i16
  %117 = call i32 @MuLawEncode(i16 signext %116)
  %118 = load i32*, i32** %12, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %117, i32* %121, align 4
  br label %122

122:                                              ; preds = %114
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %97

125:                                              ; preds = %97
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %8, align 4
  %131 = sub nsw i32 %130, %129
  store i32 %131, i32* %8, align 4
  br label %37

132:                                              ; preds = %37
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @MuLawDecode(i32) #2

declare dso_local %struct.TYPE_5__* @SND_malloc(...) #2

declare dso_local i32 @wt1(float*, i32, i32) #2

declare dso_local i32 @MuLawEncode(i16 signext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
