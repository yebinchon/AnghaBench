; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade.c_ProjectDlightTexture.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade.c_ProjectDlightTexture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { float, float*, i64, i32 }
%struct.TYPE_12__ = type { i32, i64, i64, i32, i32 }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_13__ = type { i32, i32 }

@backEnd = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@tess = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@tr = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@DGEN_NONE = common dso_local global i32 0, align 4
@UNIFORM_MODELVIEWPROJECTIONMATRIX = common dso_local global i32 0, align 4
@glState = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@UNIFORM_VERTEXLERP = common dso_local global i32 0, align 4
@UNIFORM_DEFORMGEN = common dso_local global i32 0, align 4
@UNIFORM_DEFORMPARAMS = common dso_local global i32 0, align 4
@UNIFORM_TIME = common dso_local global i32 0, align 4
@UNIFORM_COLOR = common dso_local global i32 0, align 4
@UNIFORM_DLIGHTINFO = common dso_local global i32 0, align 4
@TB_COLORMAP = common dso_local global i32 0, align 4
@GLS_ATEST_GT_0 = common dso_local global i32 0, align 4
@GLS_SRCBLEND_ONE = common dso_local global i32 0, align 4
@GLS_DSTBLEND_ONE = common dso_local global i32 0, align 4
@GLS_DEPTHFUNC_EQUAL = common dso_local global i32 0, align 4
@GLS_SRCBLEND_DST_COLOR = common dso_local global i32 0, align 4
@UNIFORM_ALPHATEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ProjectDlightTexture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ProjectDlightTexture() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca float*, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @backEnd, i32 0, i32 1, i32 0), align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  br label %178

13:                                               ; preds = %0
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @ComputeDeformValues(i32* %5, i32 %14)
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %175, %13
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @backEnd, i32 0, i32 1, i32 0), align 8
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %178

20:                                               ; preds = %16
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tess, i32 0, i32 0), align 8
  %22 = load i32, i32* %1, align 4
  %23 = shl i32 1, %22
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %175

27:                                               ; preds = %20
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @backEnd, i32 0, i32 1, i32 1), align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i64 %30
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %7, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load float*, float** %2, align 8
  %36 = call i32 @VectorCopy(i32 %34, float* %35)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load float, float* %38, align 8
  store float %39, float* %4, align 4
  %40 = load float, float* %4, align 4
  %41 = fdiv float 1.000000e+00, %40
  store float %41, float* %3, align 4
  %42 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 1), align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @DGEN_NONE, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 0, i32 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %42, i64 %48
  store i32* %49, i32** %8, align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @backEnd, i32 0, i32 0, i32 3), align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @backEnd, i32 0, i32 0, i32 3), align 4
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @GLSL_BindProgram(i32* %52)
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* @UNIFORM_MODELVIEWPROJECTIONMATRIX, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @glState, i32 0, i32 1), align 4
  %57 = call i32 @GLSL_SetUniformMat4(i32* %54, i32 %55, i32 %56)
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* @UNIFORM_VERTEXLERP, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @glState, i32 0, i32 0), align 4
  %61 = call i32 @GLSL_SetUniformFloat(i32* %58, i32 %59, i32 %60)
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* @UNIFORM_DEFORMGEN, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @GLSL_SetUniformInt(i32* %62, i32 %63, i32 %64)
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @DGEN_NONE, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %27
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* @UNIFORM_DEFORMPARAMS, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @GLSL_SetUniformFloat5(i32* %70, i32 %71, i32 %72)
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* @UNIFORM_TIME, align 4
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tess, i32 0, i32 4), align 4
  %77 = call i32 @GLSL_SetUniformFloat(i32* %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %69, %27
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load float*, float** %80, align 8
  %82 = getelementptr inbounds float, float* %81, i64 0
  %83 = load float, float* %82, align 4
  %84 = load float*, float** %9, align 8
  %85 = getelementptr inbounds float, float* %84, i64 0
  store float %83, float* %85, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load float*, float** %87, align 8
  %89 = getelementptr inbounds float, float* %88, i64 1
  %90 = load float, float* %89, align 4
  %91 = load float*, float** %9, align 8
  %92 = getelementptr inbounds float, float* %91, i64 1
  store float %90, float* %92, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load float*, float** %94, align 8
  %96 = getelementptr inbounds float, float* %95, i64 2
  %97 = load float, float* %96, align 4
  %98 = load float*, float** %9, align 8
  %99 = getelementptr inbounds float, float* %98, i64 2
  store float %97, float* %99, align 4
  %100 = load float*, float** %9, align 8
  %101 = getelementptr inbounds float, float* %100, i64 3
  store float 1.000000e+00, float* %101, align 4
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* @UNIFORM_COLOR, align 4
  %104 = load float*, float** %9, align 8
  %105 = call i32 @GLSL_SetUniformVec4(i32* %102, i32 %103, float* %104)
  %106 = load float*, float** %2, align 8
  %107 = getelementptr inbounds float, float* %106, i64 0
  %108 = load float, float* %107, align 4
  %109 = load float*, float** %9, align 8
  %110 = getelementptr inbounds float, float* %109, i64 0
  store float %108, float* %110, align 4
  %111 = load float*, float** %2, align 8
  %112 = getelementptr inbounds float, float* %111, i64 1
  %113 = load float, float* %112, align 4
  %114 = load float*, float** %9, align 8
  %115 = getelementptr inbounds float, float* %114, i64 1
  store float %113, float* %115, align 4
  %116 = load float*, float** %2, align 8
  %117 = getelementptr inbounds float, float* %116, i64 2
  %118 = load float, float* %117, align 4
  %119 = load float*, float** %9, align 8
  %120 = getelementptr inbounds float, float* %119, i64 2
  store float %118, float* %120, align 4
  %121 = load float, float* %3, align 4
  %122 = load float*, float** %9, align 8
  %123 = getelementptr inbounds float, float* %122, i64 3
  store float %121, float* %123, align 4
  %124 = load i32*, i32** %8, align 8
  %125 = load i32, i32* @UNIFORM_DLIGHTINFO, align 4
  %126 = load float*, float** %9, align 8
  %127 = call i32 @GLSL_SetUniformVec4(i32* %124, i32 %125, float* %126)
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %129 = load i32, i32* @TB_COLORMAP, align 4
  %130 = call i32 @GL_BindToTMU(i32 %128, i32 %129)
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %78
  %136 = load i32, i32* @GLS_ATEST_GT_0, align 4
  %137 = load i32, i32* @GLS_SRCBLEND_ONE, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @GLS_DSTBLEND_ONE, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @GLS_DEPTHFUNC_EQUAL, align 4
  %142 = or i32 %140, %141
  %143 = call i32 @GL_State(i32 %142)
  br label %153

144:                                              ; preds = %78
  %145 = load i32, i32* @GLS_ATEST_GT_0, align 4
  %146 = load i32, i32* @GLS_SRCBLEND_DST_COLOR, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @GLS_DSTBLEND_ONE, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @GLS_DEPTHFUNC_EQUAL, align 4
  %151 = or i32 %149, %150
  %152 = call i32 @GL_State(i32 %151)
  br label %153

153:                                              ; preds = %144, %135
  %154 = load i32*, i32** %8, align 8
  %155 = load i32, i32* @UNIFORM_ALPHATEST, align 4
  %156 = call i32 @GLSL_SetUniformInt(i32* %154, i32 %155, i32 1)
  %157 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tess, i32 0, i32 2), align 8
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tess, i32 0, i32 3), align 8
  %159 = call i32 @R_DrawElements(i64 %157, i32 %158)
  %160 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tess, i32 0, i32 2), align 8
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @backEnd, i32 0, i32 0, i32 2), align 8
  %162 = sext i32 %161 to i64
  %163 = add nsw i64 %162, %160
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @backEnd, i32 0, i32 0, i32 2), align 8
  %165 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tess, i32 0, i32 2), align 8
  %166 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @backEnd, i32 0, i32 0, i32 1), align 4
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %167, %165
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @backEnd, i32 0, i32 0, i32 1), align 4
  %170 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tess, i32 0, i32 1), align 8
  %171 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @backEnd, i32 0, i32 0, i32 0), align 8
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %172, %170
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @backEnd, i32 0, i32 0, i32 0), align 8
  br label %175

175:                                              ; preds = %153, %26
  %176 = load i32, i32* %1, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %1, align 4
  br label %16

178:                                              ; preds = %12, %16
  ret void
}

declare dso_local i32 @ComputeDeformValues(i32*, i32) #1

declare dso_local i32 @VectorCopy(i32, float*) #1

declare dso_local i32 @GLSL_BindProgram(i32*) #1

declare dso_local i32 @GLSL_SetUniformMat4(i32*, i32, i32) #1

declare dso_local i32 @GLSL_SetUniformFloat(i32*, i32, i32) #1

declare dso_local i32 @GLSL_SetUniformInt(i32*, i32, i32) #1

declare dso_local i32 @GLSL_SetUniformFloat5(i32*, i32, i32) #1

declare dso_local i32 @GLSL_SetUniformVec4(i32*, i32, float*) #1

declare dso_local i32 @GL_BindToTMU(i32, i32) #1

declare dso_local i32 @GL_State(i32) #1

declare dso_local i32 @R_DrawElements(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
