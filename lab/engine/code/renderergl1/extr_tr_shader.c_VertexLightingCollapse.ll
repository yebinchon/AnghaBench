; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shader.c_VertexLightingCollapse.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shader.c_VertexLightingCollapse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__*, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64, i64 }

@shader = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@SS_OPAQUE = common dso_local global i64 0, align 8
@stages = common dso_local global %struct.TYPE_9__* null, align 8
@MAX_SHADER_STAGES = common dso_local global i32 0, align 4
@TCGEN_TEXTURE = common dso_local global i64 0, align 8
@CGEN_IDENTITY = common dso_local global i64 0, align 8
@CGEN_IDENTITY_LIGHTING = common dso_local global i64 0, align 8
@GLS_DSTBLEND_BITS = common dso_local global i32 0, align 4
@GLS_SRCBLEND_BITS = common dso_local global i32 0, align 4
@GLS_DEPTHMASK_TRUE = common dso_local global i32 0, align 4
@LIGHTMAP_NONE = common dso_local global i64 0, align 8
@CGEN_LIGHTING_DIFFUSE = common dso_local global i64 0, align 8
@CGEN_EXACT_VERTEX = common dso_local global i64 0, align 8
@AGEN_SKIP = common dso_local global i32 0, align 4
@CGEN_ONE_MINUS_ENTITY = common dso_local global i64 0, align 8
@CGEN_WAVEFORM = common dso_local global i64 0, align 8
@GF_SAWTOOTH = common dso_local global i64 0, align 8
@GF_INVERSE_SAWTOOTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @VertexLightingCollapse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @VertexLightingCollapse() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @shader, i32 0, i32 0), align 8
  %8 = load i64, i64* @SS_OPAQUE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %132

10:                                               ; preds = %0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stages, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i64 0
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %2, align 8
  store i32 -999999, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %84, %10
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @MAX_SHADER_STAGES, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %87

17:                                               ; preds = %13
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stages, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i64 %20
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %5, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  br label %87

27:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* %4, align 4
  %37 = sub nsw i32 %36, 100
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %27
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TCGEN_TEXTURE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* %4, align 4
  %49 = sub nsw i32 %48, 5
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %38
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i32, i32* %4, align 4
  %60 = sub nsw i32 %59, 5
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %50
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @CGEN_IDENTITY, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CGEN_IDENTITY_LIGHTING, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* %4, align 4
  %75 = sub nsw i32 %74, 3
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %73, %67, %61
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %3, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* %4, align 4
  store i32 %81, i32* %3, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %82, %struct.TYPE_9__** %2, align 8
  br label %83

83:                                               ; preds = %80, %76
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %1, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %1, align 4
  br label %13

87:                                               ; preds = %26, %13
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stages, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i64 0
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 0
  %97 = bitcast %struct.TYPE_7__* %92 to i8*
  %98 = bitcast %struct.TYPE_7__* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %97, i8* align 8 %98, i64 24, i1 false)
  %99 = load i32, i32* @GLS_DSTBLEND_BITS, align 4
  %100 = load i32, i32* @GLS_SRCBLEND_BITS, align 4
  %101 = or i32 %99, %100
  %102 = xor i32 %101, -1
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stages, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, %102
  store i32 %107, i32* %105, align 8
  %108 = load i32, i32* @GLS_DEPTHMASK_TRUE, align 4
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stages, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %108
  store i32 %113, i32* %111, align 8
  %114 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @shader, i32 0, i32 1), align 8
  %115 = load i64, i64* @LIGHTMAP_NONE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %87
  %118 = load i64, i64* @CGEN_LIGHTING_DIFFUSE, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stages, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  store i64 %118, i64* %121, align 8
  br label %127

122:                                              ; preds = %87
  %123 = load i64, i64* @CGEN_EXACT_VERTEX, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stages, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  store i64 %123, i64* %126, align 8
  br label %127

127:                                              ; preds = %122, %117
  %128 = load i32, i32* @AGEN_SKIP, align 4
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stages, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 5
  store i32 %128, i32* %131, align 8
  br label %238

132:                                              ; preds = %0
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stages, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i64 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 4
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %132
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stages, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i64 0
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stages, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i64 1
  %146 = bitcast %struct.TYPE_9__* %143 to i8*
  %147 = bitcast %struct.TYPE_9__* %145 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %146, i8* align 8 %147, i64 40, i1 false)
  br label %148

148:                                              ; preds = %141, %132
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stages, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i64 0
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @CGEN_ONE_MINUS_ENTITY, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %162, label %155

155:                                              ; preds = %148
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stages, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i64 1
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @CGEN_ONE_MINUS_ENTITY, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %155, %148
  %163 = load i64, i64* @CGEN_IDENTITY_LIGHTING, align 8
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stages, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i64 0
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  store i64 %163, i64* %166, align 8
  br label %167

167:                                              ; preds = %162, %155
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stages, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i64 0
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @CGEN_WAVEFORM, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %202

174:                                              ; preds = %167
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stages, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i64 0
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @GF_SAWTOOTH, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %202

182:                                              ; preds = %174
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stages, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i64 1
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @CGEN_WAVEFORM, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %202

189:                                              ; preds = %182
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stages, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i64 1
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @GF_INVERSE_SAWTOOTH, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %202

197:                                              ; preds = %189
  %198 = load i64, i64* @CGEN_IDENTITY_LIGHTING, align 8
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stages, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i64 0
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 0
  store i64 %198, i64* %201, align 8
  br label %202

202:                                              ; preds = %197, %189, %182, %174, %167
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stages, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i64 0
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @CGEN_WAVEFORM, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %237

209:                                              ; preds = %202
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stages, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i64 0
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @GF_INVERSE_SAWTOOTH, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %237

217:                                              ; preds = %209
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stages, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i64 1
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @CGEN_WAVEFORM, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %237

224:                                              ; preds = %217
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stages, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i64 1
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @GF_SAWTOOTH, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %237

232:                                              ; preds = %224
  %233 = load i64, i64* @CGEN_IDENTITY_LIGHTING, align 8
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stages, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i64 0
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 0
  store i64 %233, i64* %236, align 8
  br label %237

237:                                              ; preds = %232, %224, %217, %209, %202
  br label %238

238:                                              ; preds = %237, %127
  store i32 1, i32* %1, align 4
  br label %239

239:                                              ; preds = %256, %238
  %240 = load i32, i32* %1, align 4
  %241 = load i32, i32* @MAX_SHADER_STAGES, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %259

243:                                              ; preds = %239
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stages, align 8
  %245 = load i32, i32* %1, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i64 %246
  store %struct.TYPE_9__* %247, %struct.TYPE_9__** %6, align 8
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %243
  br label %259

253:                                              ; preds = %243
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %255 = call i32 @Com_Memset(%struct.TYPE_9__* %254, i32 0, i32 40)
  br label %256

256:                                              ; preds = %253
  %257 = load i32, i32* %1, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %1, align 4
  br label %239

259:                                              ; preds = %252, %239
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @Com_Memset(%struct.TYPE_9__*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
