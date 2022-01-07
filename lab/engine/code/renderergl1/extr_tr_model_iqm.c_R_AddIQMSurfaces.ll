; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_model_iqm.c_R_AddIQMSurfaces.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_model_iqm.c_R_AddIQMSurfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, %struct.TYPE_32__*, %struct.TYPE_32__*, %struct.TYPE_32__*, i32, %struct.TYPE_26__*, %struct.TYPE_25__ }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32, i32, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { %struct.TYPE_32__*, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_23__ = type { i32 (i32, i8*, i32, i32, i32)* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32, i64, i64, i32, i32 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_32__*, i32 }

@tr = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@RF_THIRD_PERSON = common dso_local global i32 0, align 4
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
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca %struct.TYPE_31__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %2, align 8
  %12 = load %struct.TYPE_26__*, %struct.TYPE_26__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 5), align 8
  %13 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  store %struct.TYPE_33__* %14, %struct.TYPE_33__** %3, align 8
  %15 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  store %struct.TYPE_30__* %17, %struct.TYPE_30__** %4, align 8
  %18 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @RF_THIRD_PERSON, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 6, i32 0), align 8
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %25, %1
  %30 = phi i1 [ false, %1 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @RF_WRAP_FRAMES, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %29
  %40 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = srem i32 %46, %42
  store i32 %47, i32* %45, align 4
  %48 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = srem i32 %54, %50
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %39, %29
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sge i32 %60, %63
  br i1 %64, label %86, label %65

65:                                               ; preds = %56
  %66 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %65
  %72 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp sge i32 %75, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %71
  %81 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %107

86:                                               ; preds = %80, %71, %65, %56
  %87 = load i32 (i32, i8*, i32, i32, i32)*, i32 (i32, i8*, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @ri, i32 0, i32 0), align 8
  %88 = load i32, i32* @PRINT_DEVELOPER, align 4
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 5), align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 %87(i32 %88, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %96, i32 %99)
  %101 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 4
  store i32 0, i32* %103, align 4
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 3
  store i32 0, i32* %106, align 8
  br label %107

107:                                              ; preds = %86, %80
  %108 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %110 = call i32 @R_CullIQM(%struct.TYPE_33__* %108, %struct.TYPE_29__* %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @CULL_OUT, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  br label %281

115:                                              ; preds = %107
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** @r_shadows, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp sgt i32 %121, 1
  br i1 %122, label %123, label %126

123:                                              ; preds = %118, %115
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %125 = call i32 @R_SetupEntityLighting(i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 4), %struct.TYPE_29__* %124)
  br label %126

126:                                              ; preds = %123, %118
  %127 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %128 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %129 = call i32 @R_ComputeIQMFogNum(%struct.TYPE_33__* %127, %struct.TYPE_29__* %128)
  store i32 %129, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %130

130:                                              ; preds = %278, %126
  %131 = load i32, i32* %5, align 4
  %132 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %281

136:                                              ; preds = %130
  %137 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %136
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = call %struct.TYPE_32__* @R_GetShaderByHandle(i64 %146)
  store %struct.TYPE_32__* %147, %struct.TYPE_32__** %10, align 8
  br label %207

148:                                              ; preds = %136
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp sgt i64 %152, 0
  br i1 %153, label %154, label %202

154:                                              ; preds = %148
  %155 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 0), align 8
  %160 = icmp slt i64 %158, %159
  br i1 %160, label %161, label %202

161:                                              ; preds = %154
  %162 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = call %struct.TYPE_31__* @R_GetSkinByHandle(i64 %165)
  store %struct.TYPE_31__* %166, %struct.TYPE_31__** %11, align 8
  %167 = load %struct.TYPE_32__*, %struct.TYPE_32__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 3), align 8
  store %struct.TYPE_32__* %167, %struct.TYPE_32__** %10, align 8
  store i32 0, i32* %6, align 4
  br label %168

168:                                              ; preds = %198, %161
  %169 = load i32, i32* %6, align 4
  %170 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp slt i32 %169, %172
  br i1 %173, label %174, label %201

174:                                              ; preds = %168
  %175 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_27__*, %struct.TYPE_27__** %176, align 8
  %178 = load i32, i32* %6, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @strcmp(i32 %182, i32 %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %197, label %188

188:                                              ; preds = %174
  %189 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_27__*, %struct.TYPE_27__** %190, align 8
  %192 = load i32, i32* %6, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_32__*, %struct.TYPE_32__** %195, align 8
  store %struct.TYPE_32__* %196, %struct.TYPE_32__** %10, align 8
  br label %201

197:                                              ; preds = %174
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %6, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %6, align 4
  br label %168

201:                                              ; preds = %188, %168
  br label %206

202:                                              ; preds = %154, %148
  %203 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_32__*, %struct.TYPE_32__** %204, align 8
  store %struct.TYPE_32__* %205, %struct.TYPE_32__** %10, align 8
  br label %206

206:                                              ; preds = %202, %201
  br label %207

207:                                              ; preds = %206, %142
  %208 = load i32, i32* %7, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %239, label %210

210:                                              ; preds = %207
  %211 = load %struct.TYPE_24__*, %struct.TYPE_24__** @r_shadows, align 8
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = icmp eq i32 %213, 2
  br i1 %214, label %215, label %239

215:                                              ; preds = %210
  %216 = load i32, i32* %9, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %239

218:                                              ; preds = %215
  %219 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @RF_NOSHADOW, align 4
  %224 = load i32, i32* @RF_DEPTHHACK, align 4
  %225 = or i32 %223, %224
  %226 = and i32 %222, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %239, label %228

228:                                              ; preds = %218
  %229 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @SS_OPAQUE, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %239

234:                                              ; preds = %228
  %235 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %236 = bitcast %struct.TYPE_30__* %235 to i8*
  %237 = load %struct.TYPE_32__*, %struct.TYPE_32__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 2), align 8
  %238 = call i32 @R_AddDrawSurf(i8* %236, %struct.TYPE_32__* %237, i32 0, i32 0)
  br label %239

239:                                              ; preds = %234, %228, %218, %215, %210, %207
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** @r_shadows, align 8
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = icmp eq i32 %242, 3
  br i1 %243, label %244, label %266

244:                                              ; preds = %239
  %245 = load i32, i32* %9, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %266

247:                                              ; preds = %244
  %248 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %249 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @RF_SHADOW_PLANE, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %266

255:                                              ; preds = %247
  %256 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %257 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @SS_OPAQUE, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %266

261:                                              ; preds = %255
  %262 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %263 = bitcast %struct.TYPE_30__* %262 to i8*
  %264 = load %struct.TYPE_32__*, %struct.TYPE_32__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @tr, i32 0, i32 1), align 8
  %265 = call i32 @R_AddDrawSurf(i8* %263, %struct.TYPE_32__* %264, i32 0, i32 0)
  br label %266

266:                                              ; preds = %261, %255, %247, %244, %239
  %267 = load i32, i32* %7, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %275, label %269

269:                                              ; preds = %266
  %270 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %271 = bitcast %struct.TYPE_30__* %270 to i8*
  %272 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %273 = load i32, i32* %9, align 4
  %274 = call i32 @R_AddDrawSurf(i8* %271, %struct.TYPE_32__* %272, i32 %273, i32 0)
  br label %275

275:                                              ; preds = %269, %266
  %276 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %276, i32 1
  store %struct.TYPE_30__* %277, %struct.TYPE_30__** %4, align 8
  br label %278

278:                                              ; preds = %275
  %279 = load i32, i32* %5, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %5, align 4
  br label %130

281:                                              ; preds = %114, %130
  ret void
}

declare dso_local i32 @R_CullIQM(%struct.TYPE_33__*, %struct.TYPE_29__*) #1

declare dso_local i32 @R_SetupEntityLighting(i32*, %struct.TYPE_29__*) #1

declare dso_local i32 @R_ComputeIQMFogNum(%struct.TYPE_33__*, %struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_32__* @R_GetShaderByHandle(i64) #1

declare dso_local %struct.TYPE_31__* @R_GetSkinByHandle(i64) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @R_AddDrawSurf(i8*, %struct.TYPE_32__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
