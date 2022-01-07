; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_model_iqm.c_R_AddIQMSurfaces.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_model_iqm.c_R_AddIQMSurfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, %struct.TYPE_32__*, %struct.TYPE_32__*, %struct.TYPE_32__*, i32, %struct.TYPE_26__*, %struct.TYPE_25__ }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32, i32*, i64, i32, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { %struct.TYPE_32__*, i32 }
%struct.TYPE_25__ = type { i32, i64 }
%struct.TYPE_23__ = type { i32 (i32, i8*, i32, i32, i32)* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32, i64, i64, i32, i32, i32 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_32__*, i32 }

@tr = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@RF_THIRD_PERSON = common dso_local global i32 0, align 4
@VPF_SHADOWMAP = common dso_local global i32 0, align 4
@VPF_DEPTHSHADOW = common dso_local global i32 0, align 4
@RF_WRAP_FRAMES = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@PRINT_DEVELOPER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"R_AddIQMSurfaces: no such frame %d to %d for '%s'\0A\00", align 1
@CULL_OUT = common dso_local global i32 0, align 4
@r_shadows = common dso_local global %struct.TYPE_24__* null, align 8
@RF_NOSHADOW = common dso_local global i32 0, align 4
@RF_DEPTHHACK = common dso_local global i32 0, align 4
@SS_OPAQUE = common dso_local global i64 0, align 8
@RF_SHADOW_PLANE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_AddIQMSurfaces(%struct.TYPE_29__* %0) #0 {
  %2 = alloca %struct.TYPE_29__*, align 8
  %3 = alloca %struct.TYPE_33__*, align 8
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_32__*, align 8
  %13 = alloca %struct.TYPE_31__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %2, align 8
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 5), align 8
  %15 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  store %struct.TYPE_33__* %16, %struct.TYPE_33__** %3, align 8
  %17 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  store %struct.TYPE_30__* %19, %struct.TYPE_30__** %4, align 8
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @RF_THIRD_PERSON, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %1
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 6, i32 1), align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 6, i32 0), align 8
  %32 = load i32, i32* @VPF_SHADOWMAP, align 4
  %33 = load i32, i32* @VPF_DEPTHSHADOW, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %30, %27
  %38 = phi i1 [ true, %27 ], [ %36, %30 ]
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %37, %1
  %41 = phi i1 [ false, %1 ], [ %39, %37 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %8, align 4
  %43 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @RF_WRAP_FRAMES, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %40
  %51 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = srem i32 %57, %53
  store i32 %58, i32* %56, align 8
  %59 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = srem i32 %65, %61
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %50, %40
  %68 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = icmp sge i32 %71, %74
  br i1 %75, label %97, label %76

76:                                               ; preds = %67
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %97, label %82

82:                                               ; preds = %76
  %83 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = icmp sge i32 %86, %89
  br i1 %90, label %97, label %91

91:                                               ; preds = %82
  %92 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %118

97:                                               ; preds = %91, %82, %76, %67
  %98 = load i32 (i32, i8*, i32, i32, i32)*, i32 (i32, i8*, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @ri, i32 0, i32 0), align 8
  %99 = load i32, i32* @PRINT_DEVELOPER, align 4
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 5), align 8
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 %98(i32 %99, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %103, i32 %107, i32 %110)
  %112 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %113, i32 0, i32 5
  store i32 0, i32* %114, align 8
  %115 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 4
  store i32 0, i32* %117, align 4
  br label %118

118:                                              ; preds = %97, %91
  %119 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %121 = call i32 @R_CullIQM(%struct.TYPE_33__* %119, %struct.TYPE_29__* %120)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @CULL_OUT, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  br label %311

126:                                              ; preds = %118
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** @r_shadows, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp sgt i32 %132, 1
  br i1 %133, label %134, label %137

134:                                              ; preds = %129, %126
  %135 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %136 = call i32 @R_SetupEntityLighting(i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 4), %struct.TYPE_29__* %135)
  br label %137

137:                                              ; preds = %134, %129
  %138 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %140 = call i32 @R_ComputeIQMFogNum(%struct.TYPE_33__* %138, %struct.TYPE_29__* %139)
  store i32 %140, i32* %10, align 4
  %141 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @R_CubemapForPoint(i32 %144)
  store i32 %145, i32* %11, align 4
  store i32 0, i32* %6, align 4
  br label %146

146:                                              ; preds = %308, %137
  %147 = load i32, i32* %6, align 4
  %148 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp slt i32 %147, %150
  br i1 %151, label %152, label %311

152:                                              ; preds = %146
  %153 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %152
  %159 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = call %struct.TYPE_32__* @R_GetShaderByHandle(i64 %162)
  store %struct.TYPE_32__* %163, %struct.TYPE_32__** %12, align 8
  br label %223

164:                                              ; preds = %152
  %165 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp sgt i64 %168, 0
  br i1 %169, label %170, label %218

170:                                              ; preds = %164
  %171 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 0), align 8
  %176 = icmp slt i64 %174, %175
  br i1 %176, label %177, label %218

177:                                              ; preds = %170
  %178 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = call %struct.TYPE_31__* @R_GetSkinByHandle(i64 %181)
  store %struct.TYPE_31__* %182, %struct.TYPE_31__** %13, align 8
  %183 = load %struct.TYPE_32__*, %struct.TYPE_32__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 3), align 8
  store %struct.TYPE_32__* %183, %struct.TYPE_32__** %12, align 8
  store i32 0, i32* %7, align 4
  br label %184

184:                                              ; preds = %214, %177
  %185 = load i32, i32* %7, align 4
  %186 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp slt i32 %185, %188
  br i1 %189, label %190, label %217

190:                                              ; preds = %184
  %191 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %192 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_27__*, %struct.TYPE_27__** %192, align 8
  %194 = load i32, i32* %7, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @strcmp(i32 %198, i32 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %213, label %204

204:                                              ; preds = %190
  %205 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %206 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_27__*, %struct.TYPE_27__** %206, align 8
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_32__*, %struct.TYPE_32__** %211, align 8
  store %struct.TYPE_32__* %212, %struct.TYPE_32__** %12, align 8
  br label %217

213:                                              ; preds = %190
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %7, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %7, align 4
  br label %184

217:                                              ; preds = %204, %184
  br label %222

218:                                              ; preds = %170, %164
  %219 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_32__*, %struct.TYPE_32__** %220, align 8
  store %struct.TYPE_32__* %221, %struct.TYPE_32__** %12, align 8
  br label %222

222:                                              ; preds = %218, %217
  br label %223

223:                                              ; preds = %222, %158
  %224 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %236

228:                                              ; preds = %223
  %229 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %6, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = bitcast i32* %234 to i8*
  store i8* %235, i8** %5, align 8
  br label %239

236:                                              ; preds = %223
  %237 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %238 = bitcast %struct.TYPE_30__* %237 to i8*
  store i8* %238, i8** %5, align 8
  br label %239

239:                                              ; preds = %236, %228
  %240 = load i32, i32* %8, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %270, label %242

242:                                              ; preds = %239
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** @r_shadows, align 8
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = icmp eq i32 %245, 2
  br i1 %246, label %247, label %270

247:                                              ; preds = %242
  %248 = load i32, i32* %10, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %270

250:                                              ; preds = %247
  %251 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %252 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @RF_NOSHADOW, align 4
  %256 = load i32, i32* @RF_DEPTHHACK, align 4
  %257 = or i32 %255, %256
  %258 = and i32 %254, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %270, label %260

260:                                              ; preds = %250
  %261 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %262 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @SS_OPAQUE, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %270

266:                                              ; preds = %260
  %267 = load i8*, i8** %5, align 8
  %268 = load %struct.TYPE_32__*, %struct.TYPE_32__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 2), align 8
  %269 = call i32 @R_AddDrawSurf(i8* %267, %struct.TYPE_32__* %268, i32 0, i32 0, i32 0, i32 0)
  br label %270

270:                                              ; preds = %266, %260, %250, %247, %242, %239
  %271 = load %struct.TYPE_24__*, %struct.TYPE_24__** @r_shadows, align 8
  %272 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = icmp eq i32 %273, 3
  br i1 %274, label %275, label %296

275:                                              ; preds = %270
  %276 = load i32, i32* %10, align 4
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %296

278:                                              ; preds = %275
  %279 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %280 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* @RF_SHADOW_PLANE, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %296

286:                                              ; preds = %278
  %287 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %288 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @SS_OPAQUE, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %296

292:                                              ; preds = %286
  %293 = load i8*, i8** %5, align 8
  %294 = load %struct.TYPE_32__*, %struct.TYPE_32__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 1), align 8
  %295 = call i32 @R_AddDrawSurf(i8* %293, %struct.TYPE_32__* %294, i32 0, i32 0, i32 0, i32 0)
  br label %296

296:                                              ; preds = %292, %286, %278, %275, %270
  %297 = load i32, i32* %8, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %305, label %299

299:                                              ; preds = %296
  %300 = load i8*, i8** %5, align 8
  %301 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %302 = load i32, i32* %10, align 4
  %303 = load i32, i32* %11, align 4
  %304 = call i32 @R_AddDrawSurf(i8* %300, %struct.TYPE_32__* %301, i32 %302, i32 0, i32 0, i32 %303)
  br label %305

305:                                              ; preds = %299, %296
  %306 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %306, i32 1
  store %struct.TYPE_30__* %307, %struct.TYPE_30__** %4, align 8
  br label %308

308:                                              ; preds = %305
  %309 = load i32, i32* %6, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %6, align 4
  br label %146

311:                                              ; preds = %125, %146
  ret void
}

declare dso_local i32 @R_CullIQM(%struct.TYPE_33__*, %struct.TYPE_29__*) #1

declare dso_local i32 @R_SetupEntityLighting(i32*, %struct.TYPE_29__*) #1

declare dso_local i32 @R_ComputeIQMFogNum(%struct.TYPE_33__*, %struct.TYPE_29__*) #1

declare dso_local i32 @R_CubemapForPoint(i32) #1

declare dso_local %struct.TYPE_32__* @R_GetShaderByHandle(i64) #1

declare dso_local %struct.TYPE_31__* @R_GetSkinByHandle(i64) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @R_AddDrawSurf(i8*, %struct.TYPE_32__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
