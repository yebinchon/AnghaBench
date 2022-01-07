; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_postprocess.c_RB_BokehBlur.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_postprocess.c_RB_BokehBlur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__**, i32, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32, i32 }

@glRefConfig = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@tr = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_LINEAR = common dso_local global i32 0, align 4
@GLS_SRCBLEND_SRC_ALPHA = common dso_local global i32 0, align 4
@GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@GLS_SRCBLEND_ONE = common dso_local global i32 0, align 4
@GLS_DSTBLEND_ONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_BokehBlur(%struct.TYPE_10__* %0, i32* %1, %struct.TYPE_10__* %2, i32* %3, float %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca float, align 4
  %11 = alloca float*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca float, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i32* %3, i32** %9, align 8
  store float %4, float* %10, align 4
  %16 = load float, float* %10, align 4
  %17 = fmul float %16, 1.000000e+01
  store float %17, float* %10, align 4
  %18 = load float, float* %10, align 4
  %19 = fcmp olt float %18, 0x3F70624DE0000000
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %191

21:                                               ; preds = %5
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glRefConfig, i32 0, i32 0), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %191

24:                                               ; preds = %21
  %25 = load float, float* %10, align 4
  %26 = fcmp ogt float %25, 0.000000e+00
  br i1 %26, label %27, label %61

27:                                               ; preds = %24
  %28 = load i32*, i32** %12, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 0, i32* %29, align 4
  %30 = load %struct.TYPE_10__**, %struct.TYPE_10__*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %31 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %30, i64 0
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %12, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_10__**, %struct.TYPE_10__*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %38 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %37, i64 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_10__**, %struct.TYPE_10__*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %45 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %44, i64 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 0, %48
  %50 = load i32*, i32** %12, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load %struct.TYPE_10__**, %struct.TYPE_10__*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %55 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %54, i64 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %59 = load i32, i32* @GL_LINEAR, align 4
  %60 = call i32 @FBO_FastBlit(%struct.TYPE_10__* %52, i32* %53, %struct.TYPE_10__* %56, i32* %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %27, %24
  %62 = load float, float* %10, align 4
  %63 = fcmp ogt float %62, 1.000000e+00
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load %struct.TYPE_10__**, %struct.TYPE_10__*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %66 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %65, i64 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = load %struct.TYPE_10__**, %struct.TYPE_10__*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 2), align 8
  %69 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %68, i64 0
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %72 = load i32, i32* @GL_LINEAR, align 4
  %73 = call i32 @FBO_FastBlit(%struct.TYPE_10__* %67, i32* null, %struct.TYPE_10__* %70, i32* null, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %64, %61
  %75 = load float, float* %10, align 4
  %76 = fcmp ogt float %75, 0.000000e+00
  br i1 %76, label %77, label %95

77:                                               ; preds = %74
  %78 = load float, float* %10, align 4
  %79 = fcmp ole float %78, 1.000000e+00
  br i1 %79, label %80, label %95

80:                                               ; preds = %77
  %81 = load float*, float** %11, align 8
  %82 = load float, float* %10, align 4
  %83 = fptosi float %82 to i32
  %84 = call i32 @VectorSet4(float* %81, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, i32 %83)
  %85 = load %struct.TYPE_10__**, %struct.TYPE_10__*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %86 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %85, i64 0
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = load float*, float** %11, align 8
  %91 = load i32, i32* @GLS_SRCBLEND_SRC_ALPHA, align 4
  %92 = load i32, i32* @GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @FBO_Blit(%struct.TYPE_10__* %87, i32* null, float* null, %struct.TYPE_10__* %88, i32* %89, i32* null, float* %90, i32 %93)
  br label %190

95:                                               ; preds = %77, %74
  %96 = load float, float* %10, align 4
  %97 = fcmp ogt float %96, 1.000000e+00
  br i1 %97, label %98, label %123

98:                                               ; preds = %95
  %99 = load float, float* %10, align 4
  %100 = fcmp ole float %99, 2.000000e+00
  br i1 %100, label %101, label %123

101:                                              ; preds = %98
  %102 = load %struct.TYPE_10__**, %struct.TYPE_10__*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %103 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %102, i64 0
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %106 = load i32*, i32** %9, align 8
  %107 = call i32 @FBO_Blit(%struct.TYPE_10__* %104, i32* null, float* null, %struct.TYPE_10__* %105, i32* %106, i32* null, float* null, i32 0)
  %108 = load float*, float** %11, align 8
  %109 = load float, float* %10, align 4
  %110 = fsub float %109, 1.000000e+00
  %111 = fptosi float %110 to i32
  %112 = call i32 @VectorSet4(float* %108, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, i32 %111)
  %113 = load %struct.TYPE_10__**, %struct.TYPE_10__*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 2), align 8
  %114 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %113, i64 0
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %117 = load i32*, i32** %9, align 8
  %118 = load float*, float** %11, align 8
  %119 = load i32, i32* @GLS_SRCBLEND_SRC_ALPHA, align 4
  %120 = load i32, i32* @GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @FBO_Blit(%struct.TYPE_10__* %115, i32* null, float* null, %struct.TYPE_10__* %116, i32* %117, i32* null, float* %118, i32 %121)
  br label %189

123:                                              ; preds = %98, %95
  %124 = load float, float* %10, align 4
  %125 = fcmp ogt float %124, 2.000000e+00
  br i1 %125, label %126, label %188

126:                                              ; preds = %123
  store i32 0, i32* %13, align 4
  br label %127

127:                                              ; preds = %178, %126
  %128 = load i32, i32* %13, align 4
  %129 = icmp slt i32 %128, 2
  br i1 %129, label %130, label %181

130:                                              ; preds = %127
  %131 = load float, float* %10, align 4
  %132 = fsub float %131, 2.000000e+00
  %133 = fdiv float %132, 2.000000e+00
  %134 = fdiv float %133, 3.000000e+00
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 %135, 1
  %137 = sitofp i32 %136 to float
  %138 = fmul float %134, %137
  store float %138, float* %15, align 4
  %139 = load float, float* %15, align 4
  %140 = load float*, float** %14, align 8
  %141 = getelementptr inbounds float, float* %140, i64 1
  store float %139, float* %141, align 4
  %142 = load float*, float** %14, align 8
  %143 = getelementptr inbounds float, float* %142, i64 0
  store float %139, float* %143, align 4
  %144 = load float*, float** %11, align 8
  %145 = getelementptr inbounds float, float* %144, i64 2
  store float 5.000000e-01, float* %145, align 4
  %146 = load float*, float** %11, align 8
  %147 = getelementptr inbounds float, float* %146, i64 1
  store float 5.000000e-01, float* %147, align 4
  %148 = load float*, float** %11, align 8
  %149 = getelementptr inbounds float, float* %148, i64 0
  store float 5.000000e-01, float* %149, align 4
  %150 = load float*, float** %11, align 8
  %151 = getelementptr inbounds float, float* %150, i64 3
  store float 1.000000e+00, float* %151, align 4
  %152 = load i32, i32* %13, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %167

154:                                              ; preds = %130
  %155 = load %struct.TYPE_10__**, %struct.TYPE_10__*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 2), align 8
  %156 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %155, i64 0
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = load float*, float** %14, align 8
  %159 = load %struct.TYPE_10__**, %struct.TYPE_10__*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 2), align 8
  %160 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %159, i64 1
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %160, align 8
  %162 = load float*, float** %11, align 8
  %163 = load i32, i32* @GLS_SRCBLEND_ONE, align 4
  %164 = load i32, i32* @GLS_DSTBLEND_ONE, align 4
  %165 = or i32 %163, %164
  %166 = call i32 @FBO_Blit(%struct.TYPE_10__* %157, i32* null, float* %158, %struct.TYPE_10__* %161, i32* null, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 1), float* %162, i32 %165)
  br label %177

167:                                              ; preds = %130
  %168 = load %struct.TYPE_10__**, %struct.TYPE_10__*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 2), align 8
  %169 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %168, i64 0
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %169, align 8
  %171 = load float*, float** %14, align 8
  %172 = load %struct.TYPE_10__**, %struct.TYPE_10__*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 2), align 8
  %173 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %172, i64 1
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %173, align 8
  %175 = load float*, float** %11, align 8
  %176 = call i32 @FBO_Blit(%struct.TYPE_10__* %170, i32* null, float* %171, %struct.TYPE_10__* %174, i32* null, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 1), float* %175, i32 0)
  br label %177

177:                                              ; preds = %167, %154
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %13, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %13, align 4
  br label %127

181:                                              ; preds = %127
  %182 = load %struct.TYPE_10__**, %struct.TYPE_10__*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 2), align 8
  %183 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %182, i64 1
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %183, align 8
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %186 = load i32*, i32** %9, align 8
  %187 = call i32 @FBO_Blit(%struct.TYPE_10__* %184, i32* null, float* null, %struct.TYPE_10__* %185, i32* %186, i32* null, float* null, i32 0)
  br label %188

188:                                              ; preds = %181, %123
  br label %189

189:                                              ; preds = %188, %101
  br label %190

190:                                              ; preds = %189, %80
  br label %191

191:                                              ; preds = %20, %190, %21
  ret void
}

declare dso_local i32 @FBO_FastBlit(%struct.TYPE_10__*, i32*, %struct.TYPE_10__*, i32*, i32, i32) #1

declare dso_local i32 @VectorSet4(float*, float, float, float, i32) #1

declare dso_local i32 @FBO_Blit(%struct.TYPE_10__*, i32*, float*, %struct.TYPE_10__*, i32*, i32*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
