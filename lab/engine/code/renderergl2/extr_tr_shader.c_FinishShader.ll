; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shader.c_FinishShader.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shader.c_FinishShader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i64, i64, i32, i64 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__*, i8*, i64 }
%struct.TYPE_14__ = type { i64, i64, i32* }
%struct.TYPE_17__ = type { i32 (i32, i8*, i32)* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_13__ = type { i64 }

@qfalse = common dso_local global i8* null, align 8
@shader = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@SS_ENVIRONMENT = common dso_local global i64 0, align 8
@SS_DECAL = common dso_local global i64 0, align 8
@MAX_SHADER_STAGES = common dso_local global i32 0, align 4
@stages = common dso_local global %struct.TYPE_15__* null, align 8
@ri = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@PRINT_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Shader %s has a stage with no image\0A\00", align 1
@r_detailTextures = common dso_local global %struct.TYPE_20__* null, align 8
@TCGEN_BAD = common dso_local global i64 0, align 8
@TCGEN_LIGHTMAP = common dso_local global i64 0, align 8
@qtrue = common dso_local global i8* null, align 8
@TCGEN_TEXTURE = common dso_local global i64 0, align 8
@GLS_SRCBLEND_BITS = common dso_local global i32 0, align 4
@GLS_DSTBLEND_BITS = common dso_local global i32 0, align 4
@GLS_SRCBLEND_ONE = common dso_local global i32 0, align 4
@GLS_DSTBLEND_ONE = common dso_local global i32 0, align 4
@GLS_SRCBLEND_ZERO = common dso_local global i32 0, align 4
@GLS_DSTBLEND_ONE_MINUS_SRC_COLOR = common dso_local global i32 0, align 4
@ACFF_MODULATE_RGB = common dso_local global i32 0, align 4
@GLS_SRCBLEND_SRC_ALPHA = common dso_local global i32 0, align 4
@GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@ACFF_MODULATE_ALPHA = common dso_local global i32 0, align 4
@ACFF_MODULATE_RGBA = common dso_local global i32 0, align 4
@GLS_DEPTHMASK_TRUE = common dso_local global i32 0, align 4
@SS_SEE_THROUGH = common dso_local global i64 0, align 8
@SS_BLEND0 = common dso_local global i64 0, align 8
@SS_OPAQUE = common dso_local global i64 0, align 8
@r_vertexLight = common dso_local global %struct.TYPE_18__* null, align 8
@r_uiFullScreen = common dso_local global %struct.TYPE_19__* null, align 8
@glConfig = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@GLHW_PERMEDIA2 = common dso_local global i64 0, align 8
@PRINT_DEVELOPER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"WARNING: shader '%s' has VERTEX forced lightmap!\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"WARNING: shader '%s' has lightmap but no lightmap stage!\0A\00", align 1
@SS_FOG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @FinishShader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @FinishShader() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i8*, i8** @qfalse, align 8
  store i8* %8, i8** %2, align 8
  %9 = load i8*, i8** @qfalse, align 8
  store i8* %9, i8** %3, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 3), align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = load i64, i64* @SS_ENVIRONMENT, align 8
  store i64 %13, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 2), align 8
  br label %14

14:                                               ; preds = %12, %0
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 5), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 2), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* @SS_DECAL, align 8
  store i64 %21, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 2), align 8
  br label %22

22:                                               ; preds = %20, %17, %14
  store i32 0, i32* %1, align 4
  br label %23

23:                                               ; preds = %262, %126, %47, %22
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @MAX_SHADER_STAGES, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %265

27:                                               ; preds = %23
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** @stages, align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i64 %30
  store %struct.TYPE_15__* %31, %struct.TYPE_15__** %4, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 3
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  br label %265

37:                                               ; preds = %27
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %37
  %48 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ri, i32 0, i32 0), align 8
  %49 = load i32, i32* @PRINT_WARNING, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 4), align 8
  %51 = call i32 %48(i32 %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i8*, i8** @qfalse, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* %1, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %1, align 4
  br label %23

57:                                               ; preds = %37
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %127

62:                                               ; preds = %57
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** @r_detailTextures, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %127, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %1, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %84, %67
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @MAX_SHADER_STAGES, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** @stages, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %74
  br label %87

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %70

87:                                               ; preds = %82, %70
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @MAX_SHADER_STAGES, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %87
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i64 1
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %1, align 4
  %97 = sub nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = mul i64 32, %98
  %100 = trunc i64 %99 to i32
  %101 = call i32 @memmove(%struct.TYPE_15__* %92, %struct.TYPE_15__* %94, i32 %100)
  br label %126

102:                                              ; preds = %87
  %103 = load i32, i32* %1, align 4
  %104 = add nsw i32 %103, 1
  %105 = load i32, i32* @MAX_SHADER_STAGES, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %102
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i64 1
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %1, align 4
  %113 = sub nsw i32 %111, %112
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = mul i64 32, %115
  %117 = trunc i64 %116 to i32
  %118 = call i32 @memmove(%struct.TYPE_15__* %108, %struct.TYPE_15__* %110, i32 %117)
  br label %119

119:                                              ; preds = %107, %102
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** @stages, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i64 %123
  %125 = call i32 @Com_Memset(%struct.TYPE_15__* %124, i32 0, i32 32)
  br label %126

126:                                              ; preds = %119, %91
  br label %23

127:                                              ; preds = %62, %57
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i64 0
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %153

135:                                              ; preds = %127
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @TCGEN_BAD, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %151

144:                                              ; preds = %135
  %145 = load i64, i64* @TCGEN_LIGHTMAP, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i64 0
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  store i64 %145, i64* %150, align 8
  br label %151

151:                                              ; preds = %144, %135
  %152 = load i8*, i8** @qtrue, align 8
  store i8* %152, i8** %2, align 8
  br label %170

153:                                              ; preds = %127
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i64 0
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @TCGEN_BAD, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %169

162:                                              ; preds = %153
  %163 = load i64, i64* @TCGEN_TEXTURE, align 8
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i64 0
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  store i64 %163, i64* %168, align 8
  br label %169

169:                                              ; preds = %162, %153
  br label %170

170:                                              ; preds = %169, %151
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @GLS_SRCBLEND_BITS, align 4
  %175 = load i32, i32* @GLS_DSTBLEND_BITS, align 4
  %176 = or i32 %174, %175
  %177 = and i32 %173, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %262

179:                                              ; preds = %170
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** @stages, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i64 0
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @GLS_SRCBLEND_BITS, align 4
  %185 = load i32, i32* @GLS_DSTBLEND_BITS, align 4
  %186 = or i32 %184, %185
  %187 = and i32 %183, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %262

189:                                              ; preds = %179
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @GLS_SRCBLEND_BITS, align 4
  %194 = and i32 %192, %193
  store i32 %194, i32* %6, align 4
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @GLS_DSTBLEND_BITS, align 4
  %199 = and i32 %197, %198
  store i32 %199, i32* %7, align 4
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* @GLS_SRCBLEND_ONE, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %189
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* @GLS_DSTBLEND_ONE, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %215, label %207

207:                                              ; preds = %203, %189
  %208 = load i32, i32* %6, align 4
  %209 = load i32, i32* @GLS_SRCBLEND_ZERO, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %219

211:                                              ; preds = %207
  %212 = load i32, i32* %7, align 4
  %213 = load i32, i32* @GLS_DSTBLEND_ONE_MINUS_SRC_COLOR, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %211, %203
  %216 = load i32, i32* @ACFF_MODULATE_RGB, align 4
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 1
  store i32 %216, i32* %218, align 4
  br label %246

219:                                              ; preds = %211, %207
  %220 = load i32, i32* %6, align 4
  %221 = load i32, i32* @GLS_SRCBLEND_SRC_ALPHA, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %231

223:                                              ; preds = %219
  %224 = load i32, i32* %7, align 4
  %225 = load i32, i32* @GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %231

227:                                              ; preds = %223
  %228 = load i32, i32* @ACFF_MODULATE_ALPHA, align 4
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 4
  br label %245

231:                                              ; preds = %223, %219
  %232 = load i32, i32* %6, align 4
  %233 = load i32, i32* @GLS_SRCBLEND_ONE, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %243

235:                                              ; preds = %231
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* @GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %243

239:                                              ; preds = %235
  %240 = load i32, i32* @ACFF_MODULATE_RGBA, align 4
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 1
  store i32 %240, i32* %242, align 4
  br label %244

243:                                              ; preds = %235, %231
  br label %244

244:                                              ; preds = %243, %239
  br label %245

245:                                              ; preds = %244, %227
  br label %246

246:                                              ; preds = %245, %215
  %247 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 2), align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %261, label %249

249:                                              ; preds = %246
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @GLS_DEPTHMASK_TRUE, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %249
  %257 = load i64, i64* @SS_SEE_THROUGH, align 8
  store i64 %257, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 2), align 8
  br label %260

258:                                              ; preds = %249
  %259 = load i64, i64* @SS_BLEND0, align 8
  store i64 %259, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 2), align 8
  br label %260

260:                                              ; preds = %258, %256
  br label %261

261:                                              ; preds = %260, %246
  br label %262

262:                                              ; preds = %261, %179, %170
  %263 = load i32, i32* %1, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %1, align 4
  br label %23

265:                                              ; preds = %36, %23
  %266 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 2), align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %270, label %268

268:                                              ; preds = %265
  %269 = load i64, i64* @SS_OPAQUE, align 8
  store i64 %269, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 2), align 8
  br label %270

270:                                              ; preds = %268, %265
  %271 = load i32, i32* %1, align 4
  %272 = icmp sgt i32 %271, 1
  br i1 %272, label %273, label %290

273:                                              ; preds = %270
  %274 = load %struct.TYPE_18__*, %struct.TYPE_18__** @r_vertexLight, align 8
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %283

278:                                              ; preds = %273
  %279 = load %struct.TYPE_19__*, %struct.TYPE_19__** @r_uiFullScreen, align 8
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %278, %273
  %284 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @glConfig, i32 0, i32 0), align 8
  %285 = load i64, i64* @GLHW_PERMEDIA2, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %287, label %290

287:                                              ; preds = %283, %278
  %288 = call i32 (...) @VertexLightingCollapse()
  %289 = load i8*, i8** @qfalse, align 8
  store i8* %289, i8** %2, align 8
  br label %290

290:                                              ; preds = %287, %283, %270
  %291 = call i32 (...) @CollapseStagesToGLSL()
  store i32 %291, i32* %1, align 4
  %292 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 0), align 8
  %293 = icmp sge i64 %292, 0
  br i1 %293, label %294, label %311

294:                                              ; preds = %290
  %295 = load i8*, i8** %2, align 8
  %296 = icmp ne i8* %295, null
  br i1 %296, label %311, label %297

297:                                              ; preds = %294
  %298 = load i8*, i8** %3, align 8
  %299 = icmp ne i8* %298, null
  br i1 %299, label %300, label %305

300:                                              ; preds = %297
  %301 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ri, i32 0, i32 0), align 8
  %302 = load i32, i32* @PRINT_DEVELOPER, align 4
  %303 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 4), align 8
  %304 = call i32 %301(i32 %302, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %303)
  br label %310

305:                                              ; preds = %297
  %306 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ri, i32 0, i32 0), align 8
  %307 = load i32, i32* @PRINT_DEVELOPER, align 4
  %308 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 4), align 8
  %309 = call i32 %306(i32 %307, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %308)
  br label %310

310:                                              ; preds = %305, %300
  br label %311

311:                                              ; preds = %310, %294, %290
  %312 = load i32, i32* %1, align 4
  store i32 %312, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 1), align 8
  %313 = load i32, i32* %1, align 4
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %320

315:                                              ; preds = %311
  %316 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 3), align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %320, label %318

318:                                              ; preds = %315
  %319 = load i64, i64* @SS_FOG, align 8
  store i64 %319, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 2), align 8
  br label %320

320:                                              ; preds = %318, %315, %311
  %321 = call i32 (...) @ComputeStageIteratorFunc()
  %322 = call i32 (...) @ComputeVertexAttribs()
  %323 = call i32* (...) @GeneratePermanentShader()
  ret i32* %323
}

declare dso_local i32 @memmove(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @Com_Memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @VertexLightingCollapse(...) #1

declare dso_local i32 @CollapseStagesToGLSL(...) #1

declare dso_local i32 @ComputeStageIteratorFunc(...) #1

declare dso_local i32 @ComputeVertexAttribs(...) #1

declare dso_local i32* @GeneratePermanentShader(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
