; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shader.c_CollapseStagesToGLSL.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shader.c_CollapseStagesToGLSL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i64, i64, i32, %struct.TYPE_11__*, i32, i64, i8* }
%struct.TYPE_11__ = type { i64, i64, i8*, i32* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32 }

@qfalse = common dso_local global i8* null, align 8
@shader = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@qtrue = common dso_local global i8* null, align 8
@stages = common dso_local global %struct.TYPE_12__* null, align 8
@GLS_DSTBLEND_BITS = common dso_local global i32 0, align 4
@GLS_SRCBLEND_BITS = common dso_local global i32 0, align 4
@GLS_DSTBLEND_SRC_COLOR = common dso_local global i32 0, align 4
@GLS_SRCBLEND_ZERO = common dso_local global i32 0, align 4
@GLS_DSTBLEND_ZERO = common dso_local global i32 0, align 4
@GLS_SRCBLEND_DST_COLOR = common dso_local global i32 0, align 4
@MAX_SHADER_STAGES = common dso_local global i32 0, align 4
@CGEN_LIGHTING_DIFFUSE = common dso_local global i64 0, align 8
@CGEN_VERTEX_LIT = common dso_local global i64 0, align 8
@CGEN_EXACT_VERTEX_LIT = common dso_local global i64 0, align 8
@r_sunlightMode = common dso_local global %struct.TYPE_15__* null, align 8
@TB_DIFFUSEMAP = common dso_local global i64 0, align 8
@tr = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@LIGHTDEF_USE_LIGHTMAP = common dso_local global i32 0, align 4
@TB_LIGHTMAP = common dso_local global i64 0, align 8
@LIGHTDEF_USE_LIGHT_VECTOR = common dso_local global i32 0, align 4
@LIGHTDEF_USE_TCGEN_AND_TCMOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CollapseStagesToGLSL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CollapseStagesToGLSL() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_12__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_12__*, align 8
  %24 = alloca %struct.TYPE_12__*, align 8
  %25 = alloca %struct.TYPE_12__*, align 8
  %26 = alloca %struct.TYPE_12__*, align 8
  %27 = load i8*, i8** @qfalse, align 8
  store i8* %27, i8** %4, align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @shader, i32 0, i32 0), align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %0
  %31 = load i8*, i8** @qtrue, align 8
  store i8* %31, i8** %4, align 8
  br label %32

32:                                               ; preds = %30, %0
  %33 = load i8*, i8** %4, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %109, label %35

35:                                               ; preds = %32
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** @stages, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 8
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %108

41:                                               ; preds = %35
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** @stages, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 5
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 130
  br i1 %49, label %50, label %108

50:                                               ; preds = %41
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** @stages, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i64 1
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 8
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %108

56:                                               ; preds = %50
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** @stages, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i64 1
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @GLS_DSTBLEND_BITS, align 4
  %62 = load i32, i32* @GLS_SRCBLEND_BITS, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %60, %63
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @GLS_DSTBLEND_SRC_COLOR, align 4
  %67 = load i32, i32* @GLS_SRCBLEND_ZERO, align 4
  %68 = or i32 %66, %67
  %69 = icmp eq i32 %65, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %56
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @GLS_DSTBLEND_ZERO, align 4
  %73 = load i32, i32* @GLS_SRCBLEND_DST_COLOR, align 4
  %74 = or i32 %72, %73
  %75 = icmp eq i32 %71, %74
  br i1 %75, label %76, label %107

76:                                               ; preds = %70, %56
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** @stages, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %6, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** @stages, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i64 1
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %7, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** @stages, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i64 0
  %87 = bitcast %struct.TYPE_12__* %8 to i8*
  %88 = bitcast %struct.TYPE_12__* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %87, i8* align 8 %88, i64 64, i1 false)
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** @stages, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i64 0
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** @stages, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i64 1
  %93 = bitcast %struct.TYPE_12__* %90 to i8*
  %94 = bitcast %struct.TYPE_12__* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 64, i1 false)
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** @stages, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i64 1
  %97 = bitcast %struct.TYPE_12__* %96 to i8*
  %98 = bitcast %struct.TYPE_12__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %97, i8* align 8 %98, i64 64, i1 false)
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** @stages, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** @stages, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i64 1
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  br label %107

107:                                              ; preds = %76, %70
  br label %108

108:                                              ; preds = %107, %50, %41, %35
  br label %109

109:                                              ; preds = %108, %32
  %110 = load i8*, i8** %4, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %186, label %112

112:                                              ; preds = %109
  store i32 0, i32* %1, align 4
  br label %113

113:                                              ; preds = %182, %112
  %114 = load i32, i32* %1, align 4
  %115 = load i32, i32* @MAX_SHADER_STAGES, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %185

117:                                              ; preds = %113
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** @stages, align 8
  %119 = load i32, i32* %1, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i64 %120
  store %struct.TYPE_12__* %121, %struct.TYPE_12__** %9, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 8
  %124 = load i8*, i8** %123, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %117
  br label %182

127:                                              ; preds = %117
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 7
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i8*, i8** @qtrue, align 8
  store i8* %133, i8** %4, align 8
  br label %185

134:                                              ; preds = %127
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 5
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i64 0
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %140, 130
  br i1 %141, label %142, label %164

142:                                              ; preds = %134
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @GLS_DSTBLEND_BITS, align 4
  %147 = load i32, i32* @GLS_SRCBLEND_BITS, align 4
  %148 = or i32 %146, %147
  %149 = and i32 %145, %148
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* @GLS_DSTBLEND_SRC_COLOR, align 4
  %152 = load i32, i32* @GLS_SRCBLEND_ZERO, align 4
  %153 = or i32 %151, %152
  %154 = icmp ne i32 %150, %153
  br i1 %154, label %155, label %163

155:                                              ; preds = %142
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* @GLS_DSTBLEND_ZERO, align 4
  %158 = load i32, i32* @GLS_SRCBLEND_DST_COLOR, align 4
  %159 = or i32 %157, %158
  %160 = icmp ne i32 %156, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %155
  %162 = load i8*, i8** @qtrue, align 8
  store i8* %162, i8** %4, align 8
  br label %185

163:                                              ; preds = %155, %142
  br label %164

164:                                              ; preds = %163, %134
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 5
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i64 0
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  switch i64 %170, label %172 [
    i64 129, label %171
    i64 130, label %171
    i64 131, label %171
    i64 128, label %171
  ]

171:                                              ; preds = %164, %164, %164, %164
  br label %174

172:                                              ; preds = %164
  %173 = load i8*, i8** @qtrue, align 8
  store i8* %173, i8** %4, align 8
  br label %174

174:                                              ; preds = %172, %171
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  switch i32 %177, label %180 [
    i32 137, label %178
    i32 136, label %178
  ]

178:                                              ; preds = %174, %174
  %179 = load i8*, i8** @qtrue, align 8
  store i8* %179, i8** %4, align 8
  br label %181

180:                                              ; preds = %174
  br label %181

181:                                              ; preds = %180, %178
  br label %182

182:                                              ; preds = %181, %126
  %183 = load i32, i32* %1, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %1, align 4
  br label %113

185:                                              ; preds = %161, %132, %113
  br label %186

186:                                              ; preds = %185, %109
  %187 = load i8*, i8** %4, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %398, label %189

189:                                              ; preds = %186
  %190 = load i8*, i8** @qfalse, align 8
  store i8* %190, i8** %11, align 8
  store i32 0, i32* %1, align 4
  br label %191

191:                                              ; preds = %363, %189
  %192 = load i32, i32* %1, align 4
  %193 = load i32, i32* @MAX_SHADER_STAGES, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %366

195:                                              ; preds = %191
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** @stages, align 8
  %197 = load i32, i32* %1, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i64 %198
  store %struct.TYPE_12__* %199, %struct.TYPE_12__** %12, align 8
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 8
  %202 = load i8*, i8** %201, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %205, label %204

204:                                              ; preds = %195
  br label %363

205:                                              ; preds = %195
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 135
  br i1 %209, label %210, label %211

210:                                              ; preds = %205
  br label %363

211:                                              ; preds = %205
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 5
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i64 0
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp eq i64 %217, 130
  br i1 %218, label %219, label %220

219:                                              ; preds = %211
  br label %363

220:                                              ; preds = %211
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %221, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %14, align 8
  %222 = load i8*, i8** @qfalse, align 8
  store i8* %222, i8** %17, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %16, align 8
  %223 = load i32, i32* %1, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %2, align 4
  br label %225

225:                                              ; preds = %299, %220
  %226 = load i32, i32* %2, align 4
  %227 = load i32, i32* @MAX_SHADER_STAGES, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %302

229:                                              ; preds = %225
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** @stages, align 8
  %231 = load i32, i32* %2, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i64 %232
  store %struct.TYPE_12__* %233, %struct.TYPE_12__** %21, align 8
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 8
  %236 = load i8*, i8** %235, align 8
  %237 = icmp ne i8* %236, null
  br i1 %237, label %239, label %238

238:                                              ; preds = %229
  br label %299

239:                                              ; preds = %229
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  switch i64 %242, label %297 [
    i64 134, label %243
    i64 133, label %249
    i64 132, label %256
    i64 135, label %262
  ]

243:                                              ; preds = %239
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %245 = icmp ne %struct.TYPE_12__* %244, null
  br i1 %245, label %248, label %246

246:                                              ; preds = %243
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  store %struct.TYPE_12__* %247, %struct.TYPE_12__** %14, align 8
  br label %248

248:                                              ; preds = %246, %243
  br label %298

249:                                              ; preds = %239
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %251 = icmp ne %struct.TYPE_12__* %250, null
  br i1 %251, label %255, label %252

252:                                              ; preds = %249
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  store %struct.TYPE_12__* %253, %struct.TYPE_12__** %14, align 8
  %254 = load i8*, i8** @qtrue, align 8
  store i8* %254, i8** %17, align 8
  br label %255

255:                                              ; preds = %252, %249
  br label %298

256:                                              ; preds = %239
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %258 = icmp ne %struct.TYPE_12__* %257, null
  br i1 %258, label %261, label %259

259:                                              ; preds = %256
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  store %struct.TYPE_12__* %260, %struct.TYPE_12__** %15, align 8
  br label %261

261:                                              ; preds = %259, %256
  br label %298

262:                                              ; preds = %239
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 5
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i64 0
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = icmp eq i64 %268, 130
  br i1 %269, label %270, label %296

270:                                              ; preds = %262
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @GLS_DSTBLEND_BITS, align 4
  %275 = load i32, i32* @GLS_SRCBLEND_BITS, align 4
  %276 = or i32 %274, %275
  %277 = and i32 %273, %276
  store i32 %277, i32* %22, align 4
  %278 = load i8*, i8** %11, align 8
  %279 = icmp ne i8* %278, null
  br i1 %279, label %280, label %292

280:                                              ; preds = %270
  %281 = load i32, i32* %22, align 4
  %282 = load i32, i32* @GLS_DSTBLEND_SRC_COLOR, align 4
  %283 = load i32, i32* @GLS_SRCBLEND_ZERO, align 4
  %284 = or i32 %282, %283
  %285 = icmp ne i32 %281, %284
  br i1 %285, label %286, label %295

286:                                              ; preds = %280
  %287 = load i32, i32* %22, align 4
  %288 = load i32, i32* @GLS_DSTBLEND_ZERO, align 4
  %289 = load i32, i32* @GLS_SRCBLEND_DST_COLOR, align 4
  %290 = or i32 %288, %289
  %291 = icmp ne i32 %287, %290
  br i1 %291, label %292, label %295

292:                                              ; preds = %286, %270
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  store %struct.TYPE_12__* %293, %struct.TYPE_12__** %16, align 8
  %294 = load i8*, i8** @qtrue, align 8
  store i8* %294, i8** %11, align 8
  br label %295

295:                                              ; preds = %292, %286, %280
  br label %296

296:                                              ; preds = %295, %262
  br label %298

297:                                              ; preds = %239
  br label %298

298:                                              ; preds = %297, %296, %261, %255, %248
  br label %299

299:                                              ; preds = %298, %238
  %300 = load i32, i32* %2, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %2, align 4
  br label %225

302:                                              ; preds = %225
  %303 = load i8*, i8** @qfalse, align 8
  store i8* %303, i8** %18, align 8
  %304 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 5
  %306 = load %struct.TYPE_11__*, %struct.TYPE_11__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i64 0
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = icmp eq i64 %309, 131
  br i1 %310, label %327, label %311

311:                                              ; preds = %302
  %312 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 5
  %314 = load %struct.TYPE_11__*, %struct.TYPE_11__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i64 0
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = icmp eq i64 %317, 130
  br i1 %318, label %327, label %319

319:                                              ; preds = %311
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 5
  %322 = load %struct.TYPE_11__*, %struct.TYPE_11__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %322, i64 0
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = icmp eq i64 %325, 128
  br i1 %326, label %327, label %329

327:                                              ; preds = %319, %311, %302
  %328 = load i8*, i8** @qtrue, align 8
  store i8* %328, i8** %18, align 8
  br label %329

329:                                              ; preds = %327, %319
  %330 = load i8*, i8** @qfalse, align 8
  store i8* %330, i8** %19, align 8
  %331 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %331, i32 0, i32 3
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* @CGEN_LIGHTING_DIFFUSE, align 8
  %335 = icmp eq i64 %333, %334
  br i1 %335, label %336, label %338

336:                                              ; preds = %329
  %337 = load i8*, i8** @qtrue, align 8
  store i8* %337, i8** %19, align 8
  br label %338

338:                                              ; preds = %336, %329
  %339 = load i8*, i8** @qfalse, align 8
  store i8* %339, i8** %20, align 8
  %340 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %341 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %340, i32 0, i32 3
  %342 = load i64, i64* %341, align 8
  %343 = load i64, i64* @CGEN_VERTEX_LIT, align 8
  %344 = icmp eq i64 %342, %343
  br i1 %344, label %351, label %345

345:                                              ; preds = %338
  %346 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 3
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @CGEN_EXACT_VERTEX_LIT, align 8
  %350 = icmp eq i64 %348, %349
  br i1 %350, label %351, label %353

351:                                              ; preds = %345, %338
  %352 = load i8*, i8** @qtrue, align 8
  store i8* %352, i8** %20, align 8
  br label %353

353:                                              ; preds = %351, %345
  %354 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %355 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %356 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %357 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %358 = load i8*, i8** %19, align 8
  %359 = load i8*, i8** %20, align 8
  %360 = load i8*, i8** %17, align 8
  %361 = load i8*, i8** %18, align 8
  %362 = call i32 @CollapseStagesToLightall(%struct.TYPE_12__* %354, %struct.TYPE_12__* %355, %struct.TYPE_12__* %356, %struct.TYPE_12__* %357, i8* %358, i8* %359, i8* %360, i8* %361)
  br label %363

363:                                              ; preds = %353, %219, %210, %204
  %364 = load i32, i32* %1, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %1, align 4
  br label %191

366:                                              ; preds = %191
  store i32 0, i32* %1, align 4
  br label %367

367:                                              ; preds = %394, %366
  %368 = load i32, i32* %1, align 4
  %369 = load i32, i32* @MAX_SHADER_STAGES, align 4
  %370 = icmp slt i32 %368, %369
  br i1 %370, label %371, label %397

371:                                              ; preds = %367
  %372 = load %struct.TYPE_12__*, %struct.TYPE_12__** @stages, align 8
  %373 = load i32, i32* %1, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %372, i64 %374
  store %struct.TYPE_12__* %375, %struct.TYPE_12__** %23, align 8
  %376 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %377 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %376, i32 0, i32 8
  %378 = load i8*, i8** %377, align 8
  %379 = icmp ne i8* %378, null
  br i1 %379, label %381, label %380

380:                                              ; preds = %371
  br label %394

381:                                              ; preds = %371
  %382 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %383 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %382, i32 0, i32 5
  %384 = load %struct.TYPE_11__*, %struct.TYPE_11__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %384, i64 0
  %386 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = icmp eq i64 %387, 130
  br i1 %388, label %389, label %393

389:                                              ; preds = %381
  %390 = load i8*, i8** @qfalse, align 8
  %391 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %392 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %391, i32 0, i32 8
  store i8* %390, i8** %392, align 8
  br label %393

393:                                              ; preds = %389, %381
  br label %394

394:                                              ; preds = %393, %380
  %395 = load i32, i32* %1, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %1, align 4
  br label %367

397:                                              ; preds = %367
  br label %398

398:                                              ; preds = %397, %186
  store i32 0, i32* %1, align 4
  br label %399

399:                                              ; preds = %441, %398
  %400 = load i32, i32* %1, align 4
  %401 = load i32, i32* @MAX_SHADER_STAGES, align 4
  %402 = icmp slt i32 %400, %401
  br i1 %402, label %403, label %444

403:                                              ; preds = %399
  %404 = load %struct.TYPE_12__*, %struct.TYPE_12__** @stages, align 8
  %405 = load i32, i32* %1, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %404, i64 %406
  store %struct.TYPE_12__* %407, %struct.TYPE_12__** %24, align 8
  %408 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %409 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %408, i32 0, i32 8
  %410 = load i8*, i8** %409, align 8
  %411 = icmp ne i8* %410, null
  br i1 %411, label %413, label %412

412:                                              ; preds = %403
  br label %441

413:                                              ; preds = %403
  %414 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %415 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %414, i32 0, i32 2
  %416 = load i64, i64* %415, align 8
  %417 = icmp eq i64 %416, 134
  br i1 %417, label %418, label %422

418:                                              ; preds = %413
  %419 = load i8*, i8** @qfalse, align 8
  %420 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %421 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %420, i32 0, i32 8
  store i8* %419, i8** %421, align 8
  br label %422

422:                                              ; preds = %418, %413
  %423 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %424 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %423, i32 0, i32 2
  %425 = load i64, i64* %424, align 8
  %426 = icmp eq i64 %425, 133
  br i1 %426, label %427, label %431

427:                                              ; preds = %422
  %428 = load i8*, i8** @qfalse, align 8
  %429 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %430 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %429, i32 0, i32 8
  store i8* %428, i8** %430, align 8
  br label %431

431:                                              ; preds = %427, %422
  %432 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %433 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %432, i32 0, i32 2
  %434 = load i64, i64* %433, align 8
  %435 = icmp eq i64 %434, 132
  br i1 %435, label %436, label %440

436:                                              ; preds = %431
  %437 = load i8*, i8** @qfalse, align 8
  %438 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %439 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %438, i32 0, i32 8
  store i8* %437, i8** %439, align 8
  br label %440

440:                                              ; preds = %436, %431
  br label %441

441:                                              ; preds = %440, %412
  %442 = load i32, i32* %1, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %1, align 4
  br label %399

444:                                              ; preds = %399
  store i32 0, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %445

445:                                              ; preds = %484, %444
  %446 = load i32, i32* %1, align 4
  %447 = load i32, i32* @MAX_SHADER_STAGES, align 4
  %448 = icmp slt i32 %446, %447
  br i1 %448, label %449, label %487

449:                                              ; preds = %445
  %450 = load %struct.TYPE_12__*, %struct.TYPE_12__** @stages, align 8
  %451 = load i32, i32* %1, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %450, i64 %452
  %454 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %453, i32 0, i32 8
  %455 = load i8*, i8** %454, align 8
  %456 = icmp ne i8* %455, null
  br i1 %456, label %458, label %457

457:                                              ; preds = %449
  br label %484

458:                                              ; preds = %449
  %459 = load i32, i32* %1, align 4
  %460 = load i32, i32* %3, align 4
  %461 = icmp eq i32 %459, %460
  br i1 %461, label %462, label %465

462:                                              ; preds = %458
  %463 = load i32, i32* %3, align 4
  %464 = add nsw i32 %463, 1
  store i32 %464, i32* %3, align 4
  br label %484

465:                                              ; preds = %458
  %466 = load %struct.TYPE_12__*, %struct.TYPE_12__** @stages, align 8
  %467 = load i32, i32* %3, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %466, i64 %468
  %470 = load %struct.TYPE_12__*, %struct.TYPE_12__** @stages, align 8
  %471 = load i32, i32* %1, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %470, i64 %472
  %474 = bitcast %struct.TYPE_12__* %469 to i8*
  %475 = bitcast %struct.TYPE_12__* %473 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %474, i8* align 8 %475, i64 64, i1 false)
  %476 = load i8*, i8** @qfalse, align 8
  %477 = load %struct.TYPE_12__*, %struct.TYPE_12__** @stages, align 8
  %478 = load i32, i32* %1, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %477, i64 %479
  %481 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %480, i32 0, i32 8
  store i8* %476, i8** %481, align 8
  %482 = load i32, i32* %3, align 4
  %483 = add nsw i32 %482, 1
  store i32 %483, i32* %3, align 4
  br label %484

484:                                              ; preds = %465, %462, %457
  %485 = load i32, i32* %1, align 4
  %486 = add nsw i32 %485, 1
  store i32 %486, i32* %1, align 4
  br label %445

487:                                              ; preds = %445
  %488 = load %struct.TYPE_15__*, %struct.TYPE_15__** @r_sunlightMode, align 8
  %489 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %488, i32 0, i32 0
  %490 = load i64, i64* %489, align 8
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %492, label %571

492:                                              ; preds = %487
  %493 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @shader, i32 0, i32 0), align 8
  %494 = icmp eq i64 %493, 0
  br i1 %494, label %495, label %571

495:                                              ; preds = %492
  store i32 0, i32* %1, align 4
  br label %496

496:                                              ; preds = %567, %495
  %497 = load i32, i32* %1, align 4
  %498 = load i32, i32* @MAX_SHADER_STAGES, align 4
  %499 = icmp slt i32 %497, %498
  br i1 %499, label %500, label %570

500:                                              ; preds = %496
  %501 = load %struct.TYPE_12__*, %struct.TYPE_12__** @stages, align 8
  %502 = load i32, i32* %1, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %501, i64 %503
  store %struct.TYPE_12__* %504, %struct.TYPE_12__** %25, align 8
  %505 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %506 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %505, i32 0, i32 8
  %507 = load i8*, i8** %506, align 8
  %508 = icmp ne i8* %507, null
  br i1 %508, label %510, label %509

509:                                              ; preds = %500
  br label %567

510:                                              ; preds = %500
  %511 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %512 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %511, i32 0, i32 7
  %513 = load i64, i64* %512, align 8
  %514 = icmp ne i64 %513, 0
  br i1 %514, label %515, label %516

515:                                              ; preds = %510
  br label %567

516:                                              ; preds = %510
  %517 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %518 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %517, i32 0, i32 5
  %519 = load %struct.TYPE_11__*, %struct.TYPE_11__** %518, align 8
  %520 = load i64, i64* @TB_DIFFUSEMAP, align 8
  %521 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %519, i64 %520
  %522 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %521, i32 0, i32 0
  %523 = load i64, i64* %522, align 8
  %524 = icmp eq i64 %523, 130
  br i1 %524, label %525, label %566

525:                                              ; preds = %516
  %526 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tr, i32 0, i32 0), align 4
  %527 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %528 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %527, i32 0, i32 6
  store i32 %526, i32* %528, align 8
  %529 = load i32, i32* @LIGHTDEF_USE_LIGHTMAP, align 4
  %530 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %531 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %530, i32 0, i32 4
  store i32 %529, i32* %531, align 8
  %532 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %533 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %532, i32 0, i32 5
  %534 = load %struct.TYPE_11__*, %struct.TYPE_11__** %533, align 8
  %535 = load i64, i64* @TB_LIGHTMAP, align 8
  %536 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %534, i64 %535
  %537 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %538 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %537, i32 0, i32 5
  %539 = load %struct.TYPE_11__*, %struct.TYPE_11__** %538, align 8
  %540 = load i64, i64* @TB_DIFFUSEMAP, align 8
  %541 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %539, i64 %540
  %542 = bitcast %struct.TYPE_11__* %536 to i8*
  %543 = bitcast %struct.TYPE_11__* %541 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %542, i8* align 8 %543, i64 32, i1 false)
  %544 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tr, i32 0, i32 1), align 4
  %545 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %546 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %545, i32 0, i32 5
  %547 = load %struct.TYPE_11__*, %struct.TYPE_11__** %546, align 8
  %548 = load i64, i64* @TB_DIFFUSEMAP, align 8
  %549 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %547, i64 %548
  %550 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %549, i32 0, i32 3
  %551 = load i32*, i32** %550, align 8
  %552 = getelementptr inbounds i32, i32* %551, i64 0
  store i32 %544, i32* %552, align 4
  %553 = load i8*, i8** @qfalse, align 8
  %554 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %555 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %554, i32 0, i32 5
  %556 = load %struct.TYPE_11__*, %struct.TYPE_11__** %555, align 8
  %557 = load i64, i64* @TB_DIFFUSEMAP, align 8
  %558 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %556, i64 %557
  %559 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %558, i32 0, i32 2
  store i8* %553, i8** %559, align 8
  %560 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %561 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %560, i32 0, i32 5
  %562 = load %struct.TYPE_11__*, %struct.TYPE_11__** %561, align 8
  %563 = load i64, i64* @TB_DIFFUSEMAP, align 8
  %564 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %562, i64 %563
  %565 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %564, i32 0, i32 0
  store i64 129, i64* %565, align 8
  br label %566

566:                                              ; preds = %525, %516
  br label %567

567:                                              ; preds = %566, %515, %509
  %568 = load i32, i32* %1, align 4
  %569 = add nsw i32 %568, 1
  store i32 %569, i32* %1, align 4
  br label %496

570:                                              ; preds = %496
  br label %571

571:                                              ; preds = %570, %492, %487
  %572 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @shader, i32 0, i32 0), align 8
  %573 = icmp eq i64 %572, 0
  br i1 %573, label %574, label %635

574:                                              ; preds = %571
  store i32 0, i32* %1, align 4
  br label %575

575:                                              ; preds = %631, %574
  %576 = load i32, i32* %1, align 4
  %577 = load i32, i32* @MAX_SHADER_STAGES, align 4
  %578 = icmp slt i32 %576, %577
  br i1 %578, label %579, label %634

579:                                              ; preds = %575
  %580 = load %struct.TYPE_12__*, %struct.TYPE_12__** @stages, align 8
  %581 = load i32, i32* %1, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %580, i64 %582
  store %struct.TYPE_12__* %583, %struct.TYPE_12__** %26, align 8
  %584 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %585 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %584, i32 0, i32 8
  %586 = load i8*, i8** %585, align 8
  %587 = icmp ne i8* %586, null
  br i1 %587, label %589, label %588

588:                                              ; preds = %579
  br label %631

589:                                              ; preds = %579
  %590 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %591 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %590, i32 0, i32 7
  %592 = load i64, i64* %591, align 8
  %593 = icmp ne i64 %592, 0
  br i1 %593, label %594, label %595

594:                                              ; preds = %589
  br label %631

595:                                              ; preds = %589
  %596 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %597 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %596, i32 0, i32 3
  %598 = load i64, i64* %597, align 8
  %599 = load i64, i64* @CGEN_LIGHTING_DIFFUSE, align 8
  %600 = icmp eq i64 %598, %599
  br i1 %600, label %601, label %630

601:                                              ; preds = %595
  %602 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tr, i32 0, i32 0), align 4
  %603 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %604 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %603, i32 0, i32 6
  store i32 %602, i32* %604, align 8
  %605 = load i32, i32* @LIGHTDEF_USE_LIGHT_VECTOR, align 4
  %606 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %607 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %606, i32 0, i32 4
  store i32 %605, i32* %607, align 8
  %608 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %609 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %608, i32 0, i32 5
  %610 = load %struct.TYPE_11__*, %struct.TYPE_11__** %609, align 8
  %611 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %610, i64 0
  %612 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %611, i32 0, i32 0
  %613 = load i64, i64* %612, align 8
  %614 = icmp ne i64 %613, 129
  br i1 %614, label %623, label %615

615:                                              ; preds = %601
  %616 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %617 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %616, i32 0, i32 5
  %618 = load %struct.TYPE_11__*, %struct.TYPE_11__** %617, align 8
  %619 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %618, i64 0
  %620 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %619, i32 0, i32 1
  %621 = load i64, i64* %620, align 8
  %622 = icmp ne i64 %621, 0
  br i1 %622, label %623, label %629

623:                                              ; preds = %615, %601
  %624 = load i32, i32* @LIGHTDEF_USE_TCGEN_AND_TCMOD, align 4
  %625 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %626 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %625, i32 0, i32 4
  %627 = load i32, i32* %626, align 8
  %628 = or i32 %627, %624
  store i32 %628, i32* %626, align 8
  br label %629

629:                                              ; preds = %623, %615
  br label %630

630:                                              ; preds = %629, %595
  br label %631

631:                                              ; preds = %630, %594, %588
  %632 = load i32, i32* %1, align 4
  %633 = add nsw i32 %632, 1
  store i32 %633, i32* %1, align 4
  br label %575

634:                                              ; preds = %575
  br label %635

635:                                              ; preds = %634, %571
  %636 = load i32, i32* %3, align 4
  ret i32 %636
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @CollapseStagesToLightall(%struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i8*, i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
