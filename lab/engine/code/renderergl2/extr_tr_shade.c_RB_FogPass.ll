; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade.c_RB_FogPass.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade.c_RB_FogPass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { float, i64, i32, i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { i32, float, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@DGEN_NONE = common dso_local global i32 0, align 4
@FOGDEF_USE_DEFORM_VERTEXES = common dso_local global i32 0, align 4
@glState = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@FOGDEF_USE_VERTEX_ANIMATION = common dso_local global i32 0, align 4
@FOGDEF_USE_BONE_ANIMATION = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@backEnd = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@tess = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@UNIFORM_MODELVIEWPROJECTIONMATRIX = common dso_local global i32 0, align 4
@UNIFORM_VERTEXLERP = common dso_local global i32 0, align 4
@UNIFORM_BONEMATRIX = common dso_local global i32 0, align 4
@UNIFORM_DEFORMGEN = common dso_local global i32 0, align 4
@UNIFORM_DEFORMPARAMS = common dso_local global i32 0, align 4
@UNIFORM_TIME = common dso_local global i32 0, align 4
@UNIFORM_COLOR = common dso_local global i32 0, align 4
@UNIFORM_FOGDISTANCE = common dso_local global i32 0, align 4
@UNIFORM_FOGDEPTH = common dso_local global i32 0, align 4
@UNIFORM_FOGEYET = common dso_local global i32 0, align 4
@FP_EQUAL = common dso_local global i64 0, align 8
@GLS_SRCBLEND_SRC_ALPHA = common dso_local global i32 0, align 4
@GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@GLS_DEPTHFUNC_EQUAL = common dso_local global i32 0, align 4
@UNIFORM_ALPHATEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @RB_FogPass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RB_FogPass() #0 {
  %1 = alloca %struct.TYPE_12__*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* null, i8** %4, align 8
  store float 0.000000e+00, float* %5, align 4
  %10 = load i32, i32* %8, align 4
  %11 = call i32 @ComputeDeformValues(i32* %7, i32 %10)
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @DGEN_NONE, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %0
  %16 = load i32, i32* @FOGDEF_USE_DEFORM_VERTEXES, align 4
  %17 = load i32, i32* %9, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %9, align 4
  br label %19

19:                                               ; preds = %15, %0
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glState, i32 0, i32 4), align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* @FOGDEF_USE_VERTEX_ANIMATION, align 4
  %24 = load i32, i32* %9, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %9, align 4
  br label %34

26:                                               ; preds = %19
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glState, i32 0, i32 1), align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* @FOGDEF_USE_BONE_ANIMATION, align 4
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %29, %26
  br label %34

34:                                               ; preds = %33, %22
  %35 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tr, i32 0, i32 1), align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32* %38, i32** %6, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @backEnd, i32 0, i32 0, i32 0), align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @backEnd, i32 0, i32 0, i32 0), align 4
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @GLSL_BindProgram(i32* %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tr, i32 0, i32 0), align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tess, i32 0, i32 0), align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i64 %47
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %1, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* @UNIFORM_MODELVIEWPROJECTIONMATRIX, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glState, i32 0, i32 3), align 4
  %52 = call i32 @GLSL_SetUniformMat4(i32* %49, i32 %50, i32 %51)
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* @UNIFORM_VERTEXLERP, align 4
  %55 = load float, float* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glState, i32 0, i32 0), align 8
  %56 = call i32 @GLSL_SetUniformFloat(i32* %53, i32 %54, float %55)
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glState, i32 0, i32 1), align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %34
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* @UNIFORM_BONEMATRIX, align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glState, i32 0, i32 2), align 8
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glState, i32 0, i32 1), align 8
  %64 = call i32 @GLSL_SetUniformMat4BoneMatrix(i32* %60, i32 %61, i32 %62, i64 %63)
  br label %65

65:                                               ; preds = %59, %34
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* @UNIFORM_DEFORMGEN, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @GLSL_SetUniformInt(i32* %66, i32 %67, i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @DGEN_NONE, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %65
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* @UNIFORM_DEFORMPARAMS, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @GLSL_SetUniformFloat5(i32* %74, i32 %75, i32 %76)
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* @UNIFORM_TIME, align 4
  %80 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tess, i32 0, i32 1), align 4
  %81 = call i32 @GLSL_SetUniformFloat(i32* %78, i32 %79, float %80)
  br label %82

82:                                               ; preds = %73, %65
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = bitcast i32* %84 to i8*
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 4
  %88 = zext i8 %87 to i32
  %89 = sitofp i32 %88 to float
  %90 = fdiv float %89, 2.550000e+02
  %91 = fptoui float %90 to i8
  %92 = load i8*, i8** %2, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  store i8 %91, i8* %93, align 1
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = bitcast i32* %95 to i8*
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = sitofp i32 %99 to float
  %101 = fdiv float %100, 2.550000e+02
  %102 = fptoui float %101 to i8
  %103 = load i8*, i8** %2, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  store i8 %102, i8* %104, align 1
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = bitcast i32* %106 to i8*
  %108 = getelementptr inbounds i8, i8* %107, i64 2
  %109 = load i8, i8* %108, align 2
  %110 = zext i8 %109 to i32
  %111 = sitofp i32 %110 to float
  %112 = fdiv float %111, 2.550000e+02
  %113 = fptoui float %112 to i8
  %114 = load i8*, i8** %2, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 2
  store i8 %113, i8* %115, align 1
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = bitcast i32* %117 to i8*
  %119 = getelementptr inbounds i8, i8* %118, i64 3
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = sitofp i32 %121 to float
  %123 = fdiv float %122, 2.550000e+02
  %124 = fptoui float %123 to i8
  %125 = load i8*, i8** %2, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 3
  store i8 %124, i8* %126, align 1
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* @UNIFORM_COLOR, align 4
  %129 = load i8*, i8** %2, align 8
  %130 = call i32 @GLSL_SetUniformVec4(i32* %127, i32 %128, i8* %129)
  %131 = load i8*, i8** %3, align 8
  %132 = load i8*, i8** %4, align 8
  %133 = call i32 @ComputeFogValues(i8* %131, i8* %132, float* %5)
  %134 = load i32*, i32** %6, align 8
  %135 = load i32, i32* @UNIFORM_FOGDISTANCE, align 4
  %136 = load i8*, i8** %3, align 8
  %137 = call i32 @GLSL_SetUniformVec4(i32* %134, i32 %135, i8* %136)
  %138 = load i32*, i32** %6, align 8
  %139 = load i32, i32* @UNIFORM_FOGDEPTH, align 4
  %140 = load i8*, i8** %4, align 8
  %141 = call i32 @GLSL_SetUniformVec4(i32* %138, i32 %139, i8* %140)
  %142 = load i32*, i32** %6, align 8
  %143 = load i32, i32* @UNIFORM_FOGEYET, align 4
  %144 = load float, float* %5, align 4
  %145 = call i32 @GLSL_SetUniformFloat(i32* %142, i32 %143, float %144)
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tess, i32 0, i32 4), align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @FP_EQUAL, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %82
  %152 = load i32, i32* @GLS_SRCBLEND_SRC_ALPHA, align 4
  %153 = load i32, i32* @GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @GLS_DEPTHFUNC_EQUAL, align 4
  %156 = or i32 %154, %155
  %157 = call i32 @GL_State(i32 %156)
  br label %163

158:                                              ; preds = %82
  %159 = load i32, i32* @GLS_SRCBLEND_SRC_ALPHA, align 4
  %160 = load i32, i32* @GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA, align 4
  %161 = or i32 %159, %160
  %162 = call i32 @GL_State(i32 %161)
  br label %163

163:                                              ; preds = %158, %151
  %164 = load i32*, i32** %6, align 8
  %165 = load i32, i32* @UNIFORM_ALPHATEST, align 4
  %166 = call i32 @GLSL_SetUniformInt(i32* %164, i32 %165, i32 0)
  %167 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tess, i32 0, i32 3), align 4
  %168 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tess, i32 0, i32 2), align 8
  %169 = call i32 @R_DrawElements(i32 %167, i32 %168)
  ret void
}

declare dso_local i32 @ComputeDeformValues(i32*, i32) #1

declare dso_local i32 @GLSL_BindProgram(i32*) #1

declare dso_local i32 @GLSL_SetUniformMat4(i32*, i32, i32) #1

declare dso_local i32 @GLSL_SetUniformFloat(i32*, i32, float) #1

declare dso_local i32 @GLSL_SetUniformMat4BoneMatrix(i32*, i32, i32, i64) #1

declare dso_local i32 @GLSL_SetUniformInt(i32*, i32, i32) #1

declare dso_local i32 @GLSL_SetUniformFloat5(i32*, i32, i32) #1

declare dso_local i32 @GLSL_SetUniformVec4(i32*, i32, i8*) #1

declare dso_local i32 @ComputeFogValues(i8*, i8*, float*) #1

declare dso_local i32 @GL_State(i32) #1

declare dso_local i32 @R_DrawElements(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
