; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_postprocess.c_RB_ToneMap.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_postprocess.c_RB_ToneMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32*, i32*, i32**, i32* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@RB_ToneMap.lastFrameCount = internal global i32 0, align 4
@tr = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_LINEAR = common dso_local global i32 0, align 4
@glRefConfig = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@GLS_SRCBLEND_SRC_ALPHA = common dso_local global i32 0, align 4
@GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@r_cameraExposure = common dso_local global %struct.TYPE_5__* null, align 8
@TB_LEVELSMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_ToneMap(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca float*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %109

20:                                               ; preds = %5
  %21 = load i32, i32* @RB_ToneMap.lastFrameCount, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tr, i32 0, i32 0), align 8
  %25 = load i32, i32* @RB_ToneMap.lastFrameCount, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tr, i32 0, i32 0), align 8
  %29 = load i32, i32* @RB_ToneMap.lastFrameCount, align 4
  %30 = sub nsw i32 %28, %29
  %31 = icmp sgt i32 %30, 5
  br i1 %31, label %32, label %83

32:                                               ; preds = %27, %23, %20
  store i32 256, i32* %17, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tr, i32 0, i32 0), align 8
  store i32 %33, i32* @RB_ToneMap.lastFrameCount, align 4
  %34 = load i32*, i32** %12, align 8
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = call i32 @VectorSet4(i32* %34, i32 0, i32 0, i32 %35, i32 %36)
  %38 = load i32*, i32** %6, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tr, i32 0, i32 6), align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tr, i32 0, i32 7), align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = call i32 @FBO_Blit(i32* %38, i32* %39, i32* null, i32* %42, i32* %43, i32* %45, float* null, i32 0)
  %47 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tr, i32 0, i32 6), align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 0
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %14, align 8
  %50 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tr, i32 0, i32 6), align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 1
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %15, align 8
  br label %53

53:                                               ; preds = %71, %32
  %54 = load i32, i32* %17, align 4
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %82

56:                                               ; preds = %53
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* %17, align 4
  %60 = call i32 @VectorSet4(i32* %57, i32 0, i32 0, i32 %58, i32 %59)
  %61 = load i32, i32* %17, align 4
  %62 = ashr i32 %61, 1
  store i32 %62, i32* %17, align 4
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = call i32 @VectorSet4(i32* %63, i32 0, i32 0, i32 %64, i32 %65)
  %67 = load i32, i32* %17, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %71

69:                                               ; preds = %56
  %70 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tr, i32 0, i32 5), align 8
  store i32* %70, i32** %15, align 8
  br label %71

71:                                               ; preds = %69, %56
  %72 = load i32*, i32** %14, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load i32*, i32** %15, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %77 = load i32, i32* @GL_LINEAR, align 4
  %78 = call i32 @FBO_FastBlit(i32* %72, i32* %73, i32* %74, i32* %75, i32 %76, i32 %77)
  %79 = load i32*, i32** %14, align 8
  store i32* %79, i32** %16, align 8
  %80 = load i32*, i32** %15, align 8
  store i32* %80, i32** %14, align 8
  %81 = load i32*, i32** %16, align 8
  store i32* %81, i32** %15, align 8
  br label %53

82:                                               ; preds = %53
  br label %83

83:                                               ; preds = %82, %27
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @VectorSet4(i32* %84, i32 0, i32 0, i32 0, i32 0)
  %86 = load float*, float** %13, align 8
  %87 = getelementptr inbounds float, float* %86, i64 2
  store float 1.000000e+00, float* %87, align 4
  %88 = load float*, float** %13, align 8
  %89 = getelementptr inbounds float, float* %88, i64 1
  store float 1.000000e+00, float* %89, align 4
  %90 = load float*, float** %13, align 8
  %91 = getelementptr inbounds float, float* %90, i64 0
  store float 1.000000e+00, float* %91, align 4
  %92 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @glRefConfig, i32 0, i32 0), align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %83
  %95 = load float*, float** %13, align 8
  %96 = getelementptr inbounds float, float* %95, i64 3
  store float 0x3F9EB851E0000000, float* %96, align 4
  br label %100

97:                                               ; preds = %83
  %98 = load float*, float** %13, align 8
  %99 = getelementptr inbounds float, float* %98, i64 3
  store float 0x3FB99999A0000000, float* %99, align 4
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tr, i32 0, i32 5), align 8
  %102 = load i32*, i32** %11, align 8
  %103 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tr, i32 0, i32 4), align 8
  %104 = load float*, float** %13, align 8
  %105 = load i32, i32* @GLS_SRCBLEND_SRC_ALPHA, align 4
  %106 = load i32, i32* @GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @FBO_Blit(i32* %101, i32* %102, i32* null, i32* %103, i32* null, i32* null, float* %104, i32 %107)
  br label %109

109:                                              ; preds = %100, %5
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** @r_cameraExposure, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = sub nsw i64 %112, %114
  %116 = call float @pow(i32 2, i64 %115)
  %117 = load float*, float** %13, align 8
  %118 = getelementptr inbounds float, float* %117, i64 2
  store float %116, float* %118, align 4
  %119 = load float*, float** %13, align 8
  %120 = getelementptr inbounds float, float* %119, i64 1
  store float %116, float* %120, align 4
  %121 = load float*, float** %13, align 8
  %122 = getelementptr inbounds float, float* %121, i64 0
  store float %116, float* %122, align 4
  %123 = load float*, float** %13, align 8
  %124 = getelementptr inbounds float, float* %123, i64 3
  store float 1.000000e+00, float* %124, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %109
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tr, i32 0, i32 3), align 4
  %129 = load i32, i32* @TB_LEVELSMAP, align 4
  %130 = call i32 @GL_BindToTMU(i32 %128, i32 %129)
  br label %135

131:                                              ; preds = %109
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tr, i32 0, i32 2), align 8
  %133 = load i32, i32* @TB_LEVELSMAP, align 4
  %134 = call i32 @GL_BindToTMU(i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %131, %127
  %136 = load i32*, i32** %6, align 8
  %137 = load i32*, i32** %7, align 8
  %138 = load i32*, i32** %8, align 8
  %139 = load i32*, i32** %9, align 8
  %140 = load float*, float** %13, align 8
  %141 = call i32 @FBO_Blit(i32* %136, i32* %137, i32* null, i32* %138, i32* %139, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tr, i32 0, i32 1), float* %140, i32 0)
  ret void
}

declare dso_local i32 @VectorSet4(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @FBO_Blit(i32*, i32*, i32*, i32*, i32*, i32*, float*, i32) #1

declare dso_local i32 @FBO_FastBlit(i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local float @pow(i32, i64) #1

declare dso_local i32 @GL_BindToTMU(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
