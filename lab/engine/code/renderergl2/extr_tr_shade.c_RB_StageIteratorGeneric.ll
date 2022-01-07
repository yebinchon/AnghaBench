; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade.c_RB_StageIteratorGeneric.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade.c_RB_StageIteratorGeneric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_27__*, i64, %struct.TYPE_26__**, i64, i64, i64, i32, i32 }
%struct.TYPE_27__ = type { i64, i64, i32, i32, i64, i64, i32 }
%struct.TYPE_26__ = type { i64, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_25__, i64, %struct.TYPE_24__*, %struct.TYPE_23__ }
%struct.TYPE_25__ = type { i32, i64 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_20__ = type { i64 }

@tess = common dso_local global %struct.TYPE_28__ zeroinitializer, align 8
@backEnd = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@r_logFile = common dso_local global %struct.TYPE_18__* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"--- RB_StageIteratorGeneric( %s ) ---\0A\00", align 1
@CT_TWO_SIDED = common dso_local global i64 0, align 8
@CT_FRONT_SIDED = common dso_local global i64 0, align 8
@VPF_DEPTHSHADOW = common dso_local global i32 0, align 4
@CT_BACK_SIDED = common dso_local global i64 0, align 8
@GL_POLYGON_OFFSET_FILL = common dso_local global i32 0, align 4
@VPF_SHADOWMAP = common dso_local global i32 0, align 4
@SS_OPAQUE = common dso_local global i64 0, align 8
@glRefConfig = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@r_shadows = common dso_local global %struct.TYPE_30__* null, align 8
@SURF_NODLIGHT = common dso_local global i32 0, align 4
@SURF_SKY = common dso_local global i32 0, align 4
@r_lightmap = common dso_local global %struct.TYPE_19__* null, align 8
@tr = common dso_local global %struct.TYPE_29__ zeroinitializer, align 8
@LIGHTDEF_LIGHTTYPE_MASK = common dso_local global i32 0, align 4
@r_dlightMode = common dso_local global %struct.TYPE_20__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_StageIteratorGeneric() #0 {
  %1 = alloca %struct.TYPE_28__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store %struct.TYPE_28__* @tess, %struct.TYPE_28__** %1, align 8
  %4 = load %struct.TYPE_28__*, %struct.TYPE_28__** %1, align 8
  %5 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %4, i32 0, i32 7
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %0
  %9 = load %struct.TYPE_28__*, %struct.TYPE_28__** %1, align 8
  %10 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %0
  br label %259

14:                                               ; preds = %8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @tess, i32 0, i32 5), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 (...) @RB_DeformTessGeometry()
  br label %19

19:                                               ; preds = %17, %14
  %20 = load %struct.TYPE_28__*, %struct.TYPE_28__** %1, align 8
  %21 = call i32 @RB_CalcShaderVertexAttribs(%struct.TYPE_28__* %20)
  store i32 %21, i32* %2, align 4
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @tess, i32 0, i32 5), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @RB_UpdateTessVao(i32 %25)
  br label %30

27:                                               ; preds = %19
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @backEnd, i32 0, i32 3, i32 0), align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @backEnd, i32 0, i32 3, i32 0), align 8
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** @r_logFile, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @tess, i32 0, i32 0), align 8
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @va(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = call i32 @GLimp_LogComment(i32 %39)
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %1, align 8
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CT_TWO_SIDED, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i64, i64* @CT_TWO_SIDED, align 8
  %51 = call i32 @GL_Cull(i64 %50)
  br label %101

52:                                               ; preds = %41
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %1, align 8
  %54 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @CT_FRONT_SIDED, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @backEnd, i32 0, i32 0, i32 0), align 8
  %62 = load i32, i32* @VPF_DEPTHSHADOW, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %52
  %66 = load i32, i32* %3, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %65, %52
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @backEnd, i32 0, i32 0, i32 1), align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i32, i32* %3, align 4
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %73, %70
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @backEnd, i32 0, i32 2), align 8
  %80 = icmp ne %struct.TYPE_24__* %79, null
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @backEnd, i32 0, i32 2), align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load i32, i32* %3, align 4
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %86, %81, %78
  %92 = load i32, i32* %3, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i64, i64* @CT_FRONT_SIDED, align 8
  %96 = call i32 @GL_Cull(i64 %95)
  br label %100

97:                                               ; preds = %91
  %98 = load i64, i64* @CT_BACK_SIDED, align 8
  %99 = call i32 @GL_Cull(i64 %98)
  br label %100

100:                                              ; preds = %97, %94
  br label %101

101:                                              ; preds = %100, %49
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %1, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load i32, i32* @GL_POLYGON_OFFSET_FILL, align 4
  %110 = call i32 @qglEnable(i32 %109)
  br label %111

111:                                              ; preds = %108, %101
  %112 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @backEnd, i32 0, i32 1), align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %111
  %115 = load %struct.TYPE_28__*, %struct.TYPE_28__** %1, align 8
  %116 = call i32 @RB_IterateStagesGeneric(%struct.TYPE_28__* %115)
  %117 = load %struct.TYPE_28__*, %struct.TYPE_28__** %1, align 8
  %118 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %114
  %124 = load i32, i32* @GL_POLYGON_OFFSET_FILL, align 4
  %125 = call i32 @qglDisable(i32 %124)
  br label %126

126:                                              ; preds = %123, %114
  br label %259

127:                                              ; preds = %111
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @backEnd, i32 0, i32 0, i32 0), align 8
  %129 = load i32, i32* @VPF_SHADOWMAP, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %154

132:                                              ; preds = %127
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %1, align 8
  %134 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @SS_OPAQUE, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %132
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %1, align 8
  %142 = call i32 @RB_RenderShadowmap(%struct.TYPE_28__* %141)
  br label %143

143:                                              ; preds = %140, %132
  %144 = load %struct.TYPE_28__*, %struct.TYPE_28__** %1, align 8
  %145 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %143
  %151 = load i32, i32* @GL_POLYGON_OFFSET_FILL, align 4
  %152 = call i32 @qglDisable(i32 %151)
  br label %153

153:                                              ; preds = %150, %143
  br label %259

154:                                              ; preds = %127
  %155 = load %struct.TYPE_28__*, %struct.TYPE_28__** %1, align 8
  %156 = call i32 @RB_IterateStagesGeneric(%struct.TYPE_28__* %155)
  %157 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @glRefConfig, i32 0, i32 0), align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %184

159:                                              ; preds = %154
  %160 = load %struct.TYPE_30__*, %struct.TYPE_30__** @r_shadows, align 8
  %161 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %162, 4
  br i1 %163, label %164, label %184

164:                                              ; preds = %159
  %165 = load i64, i64* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @tess, i32 0, i32 4), align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %184

167:                                              ; preds = %164
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @tess, i32 0, i32 0), align 8
  %169 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @SS_OPAQUE, align 8
  %172 = icmp sle i64 %170, %171
  br i1 %172, label %173, label %184

173:                                              ; preds = %167
  %174 = load %struct.TYPE_27__*, %struct.TYPE_27__** getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @tess, i32 0, i32 0), align 8
  %175 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @SURF_NODLIGHT, align 4
  %178 = load i32, i32* @SURF_SKY, align 4
  %179 = or i32 %177, %178
  %180 = and i32 %176, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %173
  %183 = call i32 (...) @ProjectPshadowVBOGLSL()
  br label %184

184:                                              ; preds = %182, %173, %167, %164, %159, %154
  %185 = load i64, i64* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @tess, i32 0, i32 3), align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %239

187:                                              ; preds = %184
  %188 = load %struct.TYPE_27__*, %struct.TYPE_27__** getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @tess, i32 0, i32 0), align 8
  %189 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @SS_OPAQUE, align 8
  %192 = icmp sle i64 %190, %191
  br i1 %192, label %193, label %239

193:                                              ; preds = %187
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** @r_lightmap, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %239

198:                                              ; preds = %193
  %199 = load %struct.TYPE_27__*, %struct.TYPE_27__** getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @tess, i32 0, i32 0), align 8
  %200 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @SURF_NODLIGHT, align 4
  %203 = load i32, i32* @SURF_SKY, align 4
  %204 = or i32 %202, %203
  %205 = and i32 %201, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %239, label %207

207:                                              ; preds = %198
  %208 = load %struct.TYPE_27__*, %struct.TYPE_27__** getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @tess, i32 0, i32 0), align 8
  %209 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = icmp eq i32 %210, 1
  br i1 %211, label %212, label %236

212:                                              ; preds = %207
  %213 = load %struct.TYPE_26__**, %struct.TYPE_26__*** getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @tess, i32 0, i32 2), align 8
  %214 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %213, i64 0
  %215 = load %struct.TYPE_26__*, %struct.TYPE_26__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @tr, i32 0, i32 0), align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %236

220:                                              ; preds = %212
  %221 = load %struct.TYPE_26__**, %struct.TYPE_26__*** getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @tess, i32 0, i32 2), align 8
  %222 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %221, i64 0
  %223 = load %struct.TYPE_26__*, %struct.TYPE_26__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @LIGHTDEF_LIGHTTYPE_MASK, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %220
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** @r_dlightMode, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %229
  %235 = call i32 (...) @ForwardDlight()
  br label %238

236:                                              ; preds = %229, %220, %212, %207
  %237 = call i32 (...) @ProjectDlightTexture()
  br label %238

238:                                              ; preds = %236, %234
  br label %239

239:                                              ; preds = %238, %198, %193, %187, %184
  %240 = load i64, i64* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @tess, i32 0, i32 1), align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %239
  %243 = load %struct.TYPE_27__*, %struct.TYPE_27__** getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @tess, i32 0, i32 0), align 8
  %244 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %243, i32 0, i32 5
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %242
  %248 = call i32 (...) @RB_FogPass()
  br label %249

249:                                              ; preds = %247, %242, %239
  %250 = load %struct.TYPE_28__*, %struct.TYPE_28__** %1, align 8
  %251 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_27__*, %struct.TYPE_27__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %252, i32 0, i32 4
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %249
  %257 = load i32, i32* @GL_POLYGON_OFFSET_FILL, align 4
  %258 = call i32 @qglDisable(i32 %257)
  br label %259

259:                                              ; preds = %13, %126, %153, %256, %249
  ret void
}

declare dso_local i32 @RB_DeformTessGeometry(...) #1

declare dso_local i32 @RB_CalcShaderVertexAttribs(%struct.TYPE_28__*) #1

declare dso_local i32 @RB_UpdateTessVao(i32) #1

declare dso_local i32 @GLimp_LogComment(i32) #1

declare dso_local i32 @va(i8*, i32) #1

declare dso_local i32 @GL_Cull(i64) #1

declare dso_local i32 @qglEnable(i32) #1

declare dso_local i32 @RB_IterateStagesGeneric(%struct.TYPE_28__*) #1

declare dso_local i32 @qglDisable(i32) #1

declare dso_local i32 @RB_RenderShadowmap(%struct.TYPE_28__*) #1

declare dso_local i32 @ProjectPshadowVBOGLSL(...) #1

declare dso_local i32 @ForwardDlight(...) #1

declare dso_local i32 @ProjectDlightTexture(...) #1

declare dso_local i32 @RB_FogPass(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
