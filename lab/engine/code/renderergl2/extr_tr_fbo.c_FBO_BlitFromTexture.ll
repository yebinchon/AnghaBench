; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_fbo.c_FBO_BlitFromTexture.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_fbo.c_FBO_BlitFromTexture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 (i32, i8*)* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.shaderProgram_s }
%struct.TYPE_9__ = type { i32, i32* }
%struct.shaderProgram_s = type { i32 }
%struct.image_s = type { i32, i32 }

@glState = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@ri = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@PRINT_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Tried to blit from a NULL texture!\0A\00", align 1
@glConfig = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@colorWhite = common dso_local global i32* null, align 8
@tr = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@CT_TWO_SIDED = common dso_local global i32 0, align 4
@TB_COLORMAP = common dso_local global i32 0, align 4
@UNIFORM_MODELVIEWPROJECTIONMATRIX = common dso_local global i32 0, align 4
@UNIFORM_COLOR = common dso_local global i32 0, align 4
@UNIFORM_INVTEXRES = common dso_local global i32 0, align 4
@UNIFORM_AUTOEXPOSUREMINMAX = common dso_local global i32 0, align 4
@UNIFORM_TONEMINAVGMAXLINEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FBO_BlitFromTexture(%struct.image_s* %0, i32* %1, i32* %2, %struct.TYPE_10__* %3, i32* %4, %struct.shaderProgram_s* %5, i32* %6, i32 %7) #0 {
  %9 = alloca %struct.image_s*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.shaderProgram_s*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca [4 x i32*], align 16
  %20 = alloca [4 x i32*], align 16
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_10__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.image_s* %0, %struct.image_s** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %12, align 8
  store i32* %4, i32** %13, align 8
  store %struct.shaderProgram_s* %5, %struct.shaderProgram_s** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @glState, i32 0, i32 0), align 8
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %22, align 8
  %27 = load %struct.image_s*, %struct.image_s** %9, align 8
  %28 = icmp ne %struct.image_s* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %8
  %30 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ri, i32 0, i32 0), align 8
  %31 = load i32, i32* @PRINT_WARNING, align 4
  %32 = call i32 %30(i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %278

33:                                               ; preds = %8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %35 = icmp ne %struct.TYPE_10__* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  br label %42

40:                                               ; preds = %33
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @glConfig, i32 0, i32 0), align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi i32 [ %39, %36 ], [ %41, %40 ]
  store i32 %43, i32* %24, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %45 = icmp ne %struct.TYPE_10__* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  br label %52

50:                                               ; preds = %42
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @glConfig, i32 0, i32 1), align 4
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i32 [ %49, %46 ], [ %51, %50 ]
  store i32 %53, i32* %25, align 4
  %54 = load i32*, i32** %10, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %101

56:                                               ; preds = %52
  %57 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 0
  %58 = load i32*, i32** %57, align 16
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = sitofp i32 %61 to float
  %63 = load i32*, i32** %10, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = sitofp i32 %65 to float
  %67 = call i32 @VectorSet2(i32* %58, float %62, float %66)
  %68 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = sitofp i32 %72 to float
  %74 = load i32*, i32** %10, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = sitofp i32 %76 to float
  %78 = call i32 @VectorSet2(i32* %69, float %73, float %77)
  %79 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 2
  %80 = load i32*, i32** %79, align 16
  %81 = load i32*, i32** %10, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = load i32, i32* %82, align 4
  %84 = sitofp i32 %83 to float
  %85 = load i32*, i32** %10, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  %87 = load i32, i32* %86, align 4
  %88 = sitofp i32 %87 to float
  %89 = call i32 @VectorSet2(i32* %80, float %84, float %88)
  %90 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 3
  %91 = load i32*, i32** %90, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = sitofp i32 %94 to float
  %96 = load i32*, i32** %10, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  %98 = load i32, i32* %97, align 4
  %99 = sitofp i32 %98 to float
  %100 = call i32 @VectorSet2(i32* %91, float %95, float %99)
  br label %114

101:                                              ; preds = %52
  %102 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 0
  %103 = load i32*, i32** %102, align 16
  %104 = call i32 @VectorSet2(i32* %103, float 0.000000e+00, float 1.000000e+00)
  %105 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 1
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @VectorSet2(i32* %106, float 1.000000e+00, float 1.000000e+00)
  %108 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 2
  %109 = load i32*, i32** %108, align 16
  %110 = call i32 @VectorSet2(i32* %109, float 1.000000e+00, float 0.000000e+00)
  %111 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 3
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @VectorSet2(i32* %112, float 0.000000e+00, float 0.000000e+00)
  br label %114

114:                                              ; preds = %101, %56
  %115 = load i32*, i32** %13, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %150

117:                                              ; preds = %114
  %118 = load i32*, i32** %13, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %17, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %25, align 4
  %124 = load i32*, i32** %13, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %123, %126
  %128 = load i32*, i32** %13, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 3
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %127, %130
  %132 = load i32*, i32** %17, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  store i32 %131, i32* %133, align 4
  %134 = load i32*, i32** %13, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %13, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 2
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %136, %139
  %141 = load i32*, i32** %17, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 2
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* %25, align 4
  %144 = load i32*, i32** %13, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %143, %146
  %148 = load i32*, i32** %17, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 3
  store i32 %147, i32* %149, align 4
  br label %156

150:                                              ; preds = %114
  %151 = load i32*, i32** %17, align 8
  %152 = load i32, i32* %25, align 4
  %153 = load i32, i32* %24, align 4
  %154 = sitofp i32 %153 to float
  %155 = call i32 @VectorSet4(i32* %151, i32 0, i32 %152, float %154, float 0.000000e+00)
  br label %156

156:                                              ; preds = %150, %117
  %157 = load i32*, i32** %11, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %156
  %160 = load i32*, i32** %11, align 8
  %161 = load i32*, i32** %21, align 8
  %162 = call i32 @VectorCopy2(i32* %160, i32* %161)
  br label %166

163:                                              ; preds = %156
  %164 = load i32*, i32** %21, align 8
  %165 = call i32 @VectorSet2(i32* %164, float 1.000000e+00, float 1.000000e+00)
  br label %166

166:                                              ; preds = %163, %159
  %167 = load i32*, i32** %15, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %169, label %173

169:                                              ; preds = %166
  %170 = load i32*, i32** %15, align 8
  %171 = load i32*, i32** %18, align 8
  %172 = call i32 @VectorCopy4(i32* %170, i32* %171)
  br label %177

173:                                              ; preds = %166
  %174 = load i32*, i32** @colorWhite, align 8
  %175 = load i32*, i32** %18, align 8
  %176 = call i32 @VectorCopy4(i32* %174, i32* %175)
  br label %177

177:                                              ; preds = %173, %169
  %178 = load %struct.shaderProgram_s*, %struct.shaderProgram_s** %14, align 8
  %179 = icmp ne %struct.shaderProgram_s* %178, null
  br i1 %179, label %181, label %180

180:                                              ; preds = %177
  store %struct.shaderProgram_s* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 1), %struct.shaderProgram_s** %14, align 8
  br label %181

181:                                              ; preds = %180, %177
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %183 = call i32 @FBO_Bind(%struct.TYPE_10__* %182)
  %184 = load i32, i32* %24, align 4
  %185 = load i32, i32* %25, align 4
  %186 = call i32 @qglViewport(i32 0, i32 0, i32 %184, i32 %185)
  %187 = load i32, i32* %24, align 4
  %188 = load i32, i32* %25, align 4
  %189 = call i32 @qglScissor(i32 0, i32 0, i32 %187, i32 %188)
  %190 = load i32, i32* %24, align 4
  %191 = load i32, i32* %25, align 4
  %192 = load i32, i32* %23, align 4
  %193 = call i32 @Mat4Ortho(i32 0, i32 %190, i32 %191, i32 0, i32 0, i32 1, i32 %192)
  %194 = load i32, i32* @CT_TWO_SIDED, align 4
  %195 = call i32 @GL_Cull(i32 %194)
  %196 = load %struct.image_s*, %struct.image_s** %9, align 8
  %197 = load i32, i32* @TB_COLORMAP, align 4
  %198 = call i32 @GL_BindToTMU(%struct.image_s* %196, i32 %197)
  %199 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 0
  %200 = load i32*, i32** %199, align 16
  %201 = load i32*, i32** %17, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32*, i32** %17, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @VectorSet4(i32* %200, i32 %203, i32 %206, float 0.000000e+00, float 1.000000e+00)
  %208 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 1
  %209 = load i32*, i32** %208, align 8
  %210 = load i32*, i32** %17, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 2
  %212 = load i32, i32* %211, align 4
  %213 = load i32*, i32** %17, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 1
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @VectorSet4(i32* %209, i32 %212, i32 %215, float 0.000000e+00, float 1.000000e+00)
  %217 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 2
  %218 = load i32*, i32** %217, align 16
  %219 = load i32*, i32** %17, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 2
  %221 = load i32, i32* %220, align 4
  %222 = load i32*, i32** %17, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 3
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @VectorSet4(i32* %218, i32 %221, i32 %224, float 0.000000e+00, float 1.000000e+00)
  %226 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 3
  %227 = load i32*, i32** %226, align 8
  %228 = load i32*, i32** %17, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32*, i32** %17, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 3
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @VectorSet4(i32* %227, i32 %230, i32 %233, float 0.000000e+00, float 1.000000e+00)
  %235 = load %struct.image_s*, %struct.image_s** %9, align 8
  %236 = getelementptr inbounds %struct.image_s, %struct.image_s* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load i32*, i32** %21, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 0
  %240 = load i32, i32* %239, align 4
  %241 = sdiv i32 %240, %237
  store i32 %241, i32* %239, align 4
  %242 = load %struct.image_s*, %struct.image_s** %9, align 8
  %243 = getelementptr inbounds %struct.image_s, %struct.image_s* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32*, i32** %21, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 1
  %247 = load i32, i32* %246, align 4
  %248 = sdiv i32 %247, %244
  store i32 %248, i32* %246, align 4
  %249 = load i32, i32* %16, align 4
  %250 = call i32 @GL_State(i32 %249)
  %251 = load %struct.shaderProgram_s*, %struct.shaderProgram_s** %14, align 8
  %252 = call i32 @GLSL_BindProgram(%struct.shaderProgram_s* %251)
  %253 = load %struct.shaderProgram_s*, %struct.shaderProgram_s** %14, align 8
  %254 = load i32, i32* @UNIFORM_MODELVIEWPROJECTIONMATRIX, align 4
  %255 = load i32, i32* %23, align 4
  %256 = call i32 @GLSL_SetUniformMat4(%struct.shaderProgram_s* %253, i32 %254, i32 %255)
  %257 = load %struct.shaderProgram_s*, %struct.shaderProgram_s** %14, align 8
  %258 = load i32, i32* @UNIFORM_COLOR, align 4
  %259 = load i32*, i32** %18, align 8
  %260 = call i32 @GLSL_SetUniformVec4(%struct.shaderProgram_s* %257, i32 %258, i32* %259)
  %261 = load %struct.shaderProgram_s*, %struct.shaderProgram_s** %14, align 8
  %262 = load i32, i32* @UNIFORM_INVTEXRES, align 4
  %263 = load i32*, i32** %21, align 8
  %264 = call i32 @GLSL_SetUniformVec2(%struct.shaderProgram_s* %261, i32 %262, i32* %263)
  %265 = load %struct.shaderProgram_s*, %struct.shaderProgram_s** %14, align 8
  %266 = load i32, i32* @UNIFORM_AUTOEXPOSUREMINMAX, align 4
  %267 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0, i32 1), align 8
  %268 = call i32 @GLSL_SetUniformVec2(%struct.shaderProgram_s* %265, i32 %266, i32* %267)
  %269 = load %struct.shaderProgram_s*, %struct.shaderProgram_s** %14, align 8
  %270 = load i32, i32* @UNIFORM_TONEMINAVGMAXLINEAR, align 4
  %271 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0, i32 0), align 8
  %272 = call i32 @GLSL_SetUniformVec3(%struct.shaderProgram_s* %269, i32 %270, i32 %271)
  %273 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 0
  %274 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 0
  %275 = call i32 @RB_InstantQuad2(i32** %273, i32** %274)
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %277 = call i32 @FBO_Bind(%struct.TYPE_10__* %276)
  br label %278

278:                                              ; preds = %181, %29
  ret void
}

declare dso_local i32 @VectorSet2(i32*, float, float) #1

declare dso_local i32 @VectorSet4(i32*, i32, i32, float, float) #1

declare dso_local i32 @VectorCopy2(i32*, i32*) #1

declare dso_local i32 @VectorCopy4(i32*, i32*) #1

declare dso_local i32 @FBO_Bind(%struct.TYPE_10__*) #1

declare dso_local i32 @qglViewport(i32, i32, i32, i32) #1

declare dso_local i32 @qglScissor(i32, i32, i32, i32) #1

declare dso_local i32 @Mat4Ortho(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GL_Cull(i32) #1

declare dso_local i32 @GL_BindToTMU(%struct.image_s*, i32) #1

declare dso_local i32 @GL_State(i32) #1

declare dso_local i32 @GLSL_BindProgram(%struct.shaderProgram_s*) #1

declare dso_local i32 @GLSL_SetUniformMat4(%struct.shaderProgram_s*, i32, i32) #1

declare dso_local i32 @GLSL_SetUniformVec4(%struct.shaderProgram_s*, i32, i32*) #1

declare dso_local i32 @GLSL_SetUniformVec2(%struct.shaderProgram_s*, i32, i32*) #1

declare dso_local i32 @GLSL_SetUniformVec3(%struct.shaderProgram_s*, i32, i32) #1

declare dso_local i32 @RB_InstantQuad2(i32**, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
