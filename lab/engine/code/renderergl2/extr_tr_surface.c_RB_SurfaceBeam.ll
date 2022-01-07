; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_surface.c_RB_SurfaceBeam.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_surface.c_RB_SurfaceBeam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64*, i64* }
%struct.TYPE_10__ = type { i32*, i64, i64, i64, i32* }
%struct.TYPE_11__ = type { i32 }

@tr = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@backEnd = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@TB_COLORMAP = common dso_local global i32 0, align 4
@GLS_SRCBLEND_ONE = common dso_local global i32 0, align 4
@GLS_DSTBLEND_ONE = common dso_local global i32 0, align 4
@tess = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@ATTR_POSITION = common dso_local global i32 0, align 4
@UNIFORM_MODELVIEWPROJECTIONMATRIX = common dso_local global i32 0, align 4
@glState = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@UNIFORM_COLOR = common dso_local global i32 0, align 4
@colorRed = common dso_local global i32 0, align 4
@UNIFORM_ALPHATEST = common dso_local global i32 0, align 4
@NUM_BEAM_SEGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @RB_SurfaceBeam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RB_SurfaceBeam() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca [6 x i64*], align 16
  %8 = alloca [6 x i64*], align 16
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  store i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 1), i32** %2, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @backEnd, i32 0, i32 0), align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %1, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64*, i64** %9, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64*, i64** %9, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %9, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 2
  store i64 %31, i64* %33, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %10, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %10, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %10, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 2
  store i64 %52, i64* %54, align 8
  %55 = load i64*, i64** %9, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %10, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %57, %60
  %62 = load i64*, i64** %5, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  store i64 %61, i64* %63, align 8
  %64 = load i64*, i64** %6, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  store i64 %61, i64* %65, align 8
  %66 = load i64*, i64** %9, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %10, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 1
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %68, %71
  %73 = load i64*, i64** %5, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 1
  store i64 %72, i64* %74, align 8
  %75 = load i64*, i64** %6, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 1
  store i64 %72, i64* %76, align 8
  %77 = load i64*, i64** %9, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** %10, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 2
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %79, %82
  %84 = load i64*, i64** %5, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 2
  store i64 %83, i64* %85, align 8
  %86 = load i64*, i64** %6, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 2
  store i64 %83, i64* %87, align 8
  %88 = load i64*, i64** %6, align 8
  %89 = call i64 @VectorNormalize(i64* %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %0
  br label %232

92:                                               ; preds = %0
  %93 = load i64*, i64** %4, align 8
  %94 = load i64*, i64** %6, align 8
  %95 = call i32 @PerpendicularVector(i64* %93, i64* %94)
  %96 = load i64*, i64** %4, align 8
  %97 = load i64*, i64** %4, align 8
  %98 = call i32 @VectorScale(i64* %96, i32 4, i64* %97)
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %123, %92
  %100 = load i32, i32* %3, align 4
  %101 = icmp slt i32 %100, 6
  br i1 %101, label %102, label %126

102:                                              ; preds = %99
  %103 = load i32, i32* %3, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [6 x i64*], [6 x i64*]* %7, i64 0, i64 %104
  %106 = load i64*, i64** %105, align 8
  %107 = load i64*, i64** %6, align 8
  %108 = load i64*, i64** %4, align 8
  %109 = load i32, i32* %3, align 4
  %110 = sitofp i32 %109 to double
  %111 = fmul double 6.000000e+01, %110
  %112 = call i32 @RotatePointAroundVector(i64* %106, i64* %107, i64* %108, double %111)
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [6 x i64*], [6 x i64*]* %7, i64 0, i64 %114
  %116 = load i64*, i64** %115, align 8
  %117 = load i64*, i64** %5, align 8
  %118 = load i32, i32* %3, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [6 x i64*], [6 x i64*]* %8, i64 0, i64 %119
  %121 = load i64*, i64** %120, align 8
  %122 = call i32 @VectorAdd(i64* %116, i64* %117, i64* %121)
  br label %123

123:                                              ; preds = %102
  %124 = load i32, i32* %3, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %3, align 4
  br label %99

126:                                              ; preds = %99
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 0), align 4
  %128 = load i32, i32* @TB_COLORMAP, align 4
  %129 = call i32 @GL_BindToTMU(i32 %127, i32 %128)
  %130 = load i32, i32* @GLS_SRCBLEND_ONE, align 4
  %131 = load i32, i32* @GLS_DSTBLEND_ONE, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @GL_State(i32 %132)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 1), align 8
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %160, %126
  %135 = load i32, i32* %3, align 4
  %136 = icmp sle i32 %135, 6
  br i1 %136, label %137, label %163

137:                                              ; preds = %134
  %138 = load i32, i32* %3, align 4
  %139 = srem i32 %138, 6
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [6 x i64*], [6 x i64*]* %7, i64 0, i64 %140
  %142 = load i64*, i64** %141, align 8
  %143 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 4), align 8
  %144 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 2), align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 2), align 8
  %146 = getelementptr inbounds i32, i32* %143, i64 %144
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @VectorCopy(i64* %142, i32 %147)
  %149 = load i32, i32* %3, align 4
  %150 = srem i32 %149, 6
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [6 x i64*], [6 x i64*]* %8, i64 0, i64 %151
  %153 = load i64*, i64** %152, align 8
  %154 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 4), align 8
  %155 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 2), align 8
  %156 = add nsw i64 %155, 1
  store i64 %156, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 2), align 8
  %157 = getelementptr inbounds i32, i32* %154, i64 %155
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @VectorCopy(i64* %153, i32 %158)
  br label %160

160:                                              ; preds = %137
  %161 = load i32, i32* %3, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %3, align 4
  br label %134

163:                                              ; preds = %134
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %210, %163
  %165 = load i32, i32* %3, align 4
  %166 = icmp slt i32 %165, 6
  br i1 %166, label %167, label %213

167:                                              ; preds = %164
  %168 = load i32, i32* %3, align 4
  %169 = mul nsw i32 %168, 2
  %170 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 0), align 8
  %171 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 3), align 8
  %172 = add nsw i64 %171, 1
  store i64 %172, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 3), align 8
  %173 = getelementptr inbounds i32, i32* %170, i64 %171
  store i32 %169, i32* %173, align 4
  %174 = load i32, i32* %3, align 4
  %175 = add nsw i32 %174, 1
  %176 = mul nsw i32 %175, 2
  %177 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 0), align 8
  %178 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 3), align 8
  %179 = add nsw i64 %178, 1
  store i64 %179, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 3), align 8
  %180 = getelementptr inbounds i32, i32* %177, i64 %178
  store i32 %176, i32* %180, align 4
  %181 = load i32, i32* %3, align 4
  %182 = mul nsw i32 %181, 2
  %183 = add nsw i32 1, %182
  %184 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 0), align 8
  %185 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 3), align 8
  %186 = add nsw i64 %185, 1
  store i64 %186, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 3), align 8
  %187 = getelementptr inbounds i32, i32* %184, i64 %185
  store i32 %183, i32* %187, align 4
  %188 = load i32, i32* %3, align 4
  %189 = mul nsw i32 %188, 2
  %190 = add nsw i32 1, %189
  %191 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 0), align 8
  %192 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 3), align 8
  %193 = add nsw i64 %192, 1
  store i64 %193, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 3), align 8
  %194 = getelementptr inbounds i32, i32* %191, i64 %192
  store i32 %190, i32* %194, align 4
  %195 = load i32, i32* %3, align 4
  %196 = add nsw i32 %195, 1
  %197 = mul nsw i32 %196, 2
  %198 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 0), align 8
  %199 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 3), align 8
  %200 = add nsw i64 %199, 1
  store i64 %200, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 3), align 8
  %201 = getelementptr inbounds i32, i32* %198, i64 %199
  store i32 %197, i32* %201, align 4
  %202 = load i32, i32* %3, align 4
  %203 = add nsw i32 %202, 1
  %204 = mul nsw i32 %203, 2
  %205 = add nsw i32 1, %204
  %206 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 0), align 8
  %207 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 3), align 8
  %208 = add nsw i64 %207, 1
  store i64 %208, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 3), align 8
  %209 = getelementptr inbounds i32, i32* %206, i64 %207
  store i32 %205, i32* %209, align 4
  br label %210

210:                                              ; preds = %167
  %211 = load i32, i32* %3, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %3, align 4
  br label %164

213:                                              ; preds = %164
  %214 = load i32, i32* @ATTR_POSITION, align 4
  %215 = call i32 @RB_UpdateTessVao(i32 %214)
  %216 = load i32*, i32** %2, align 8
  %217 = call i32 @GLSL_BindProgram(i32* %216)
  %218 = load i32*, i32** %2, align 8
  %219 = load i32, i32* @UNIFORM_MODELVIEWPROJECTIONMATRIX, align 4
  %220 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glState, i32 0, i32 0), align 4
  %221 = call i32 @GLSL_SetUniformMat4(i32* %218, i32 %219, i32 %220)
  %222 = load i32*, i32** %2, align 8
  %223 = load i32, i32* @UNIFORM_COLOR, align 4
  %224 = load i32, i32* @colorRed, align 4
  %225 = call i32 @GLSL_SetUniformVec4(i32* %222, i32 %223, i32 %224)
  %226 = load i32*, i32** %2, align 8
  %227 = load i32, i32* @UNIFORM_ALPHATEST, align 4
  %228 = call i32 @GLSL_SetUniformInt(i32* %226, i32 %227, i32 0)
  %229 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 3), align 8
  %230 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 1), align 8
  %231 = call i32 @R_DrawElements(i64 %229, i64 %230)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 1), align 8
  br label %232

232:                                              ; preds = %213, %91
  ret void
}

declare dso_local i64 @VectorNormalize(i64*) #1

declare dso_local i32 @PerpendicularVector(i64*, i64*) #1

declare dso_local i32 @VectorScale(i64*, i32, i64*) #1

declare dso_local i32 @RotatePointAroundVector(i64*, i64*, i64*, double) #1

declare dso_local i32 @VectorAdd(i64*, i64*, i64*) #1

declare dso_local i32 @GL_BindToTMU(i32, i32) #1

declare dso_local i32 @GL_State(i32) #1

declare dso_local i32 @VectorCopy(i64*, i32) #1

declare dso_local i32 @RB_UpdateTessVao(i32) #1

declare dso_local i32 @GLSL_BindProgram(i32*) #1

declare dso_local i32 @GLSL_SetUniformMat4(i32*, i32, i32) #1

declare dso_local i32 @GLSL_SetUniformVec4(i32*, i32, i32) #1

declare dso_local i32 @GLSL_SetUniformInt(i32*, i32, i32) #1

declare dso_local i32 @R_DrawElements(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
