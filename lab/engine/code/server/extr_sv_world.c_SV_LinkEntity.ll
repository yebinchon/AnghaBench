; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_world.c_SV_LinkEntity.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_world.c_SV_LinkEntity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_14__ = type { i32, i64, %struct.TYPE_15__*, %struct.TYPE_14__** }
%struct.TYPE_15__ = type { i64, i32, i32, i32*, %struct.TYPE_15__*, %struct.TYPE_14__*, i8* }
%struct.TYPE_16__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, i32*, i32*, float*, float*, float*, float*, i32, i32, i64 }
%struct.TYPE_12__ = type { i32, i32 }

@MAX_TOTAL_ENT_LEAFS = common dso_local global i32 0, align 4
@SOLID_BMODEL = common dso_local global i32 0, align 4
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@CONTENTS_BODY = common dso_local global i32 0, align 4
@sv = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@SS_LOADING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Object %i touching 3 areas at %f %f %f\0A\00", align 1
@MAX_ENT_CLUSTERS = common dso_local global i64 0, align 8
@sv_worldSectors = common dso_local global %struct.TYPE_14__* null, align 8
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_LinkEntity(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %18 = load i32, i32* @MAX_TOTAL_ENT_LEAFS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %4, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %5, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %23 = call %struct.TYPE_15__* @SV_SvEntityForGentity(%struct.TYPE_16__* %22)
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %15, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 5
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %27 = icmp ne %struct.TYPE_14__* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %30 = call i32 @SV_UnlinkEntity(%struct.TYPE_16__* %29)
  br label %31

31:                                               ; preds = %28, %1
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 9
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load i32, i32* @SOLID_BMODEL, align 4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  br label %112

42:                                               ; preds = %31
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @CONTENTS_SOLID, align 4
  %48 = load i32, i32* @CONTENTS_BODY, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %107

52:                                               ; preds = %42
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 1
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  store i32 1, i32* %8, align 4
  br label %62

62:                                               ; preds = %61, %52
  %63 = load i32, i32* %8, align 4
  %64 = icmp sgt i32 %63, 255
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 255, i32* %8, align 4
  br label %66

66:                                               ; preds = %65, %62
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %74, 1
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  store i32 1, i32* %9, align 4
  br label %77

77:                                               ; preds = %76, %66
  %78 = load i32, i32* %9, align 4
  %79 = icmp sgt i32 %78, 255
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 255, i32* %9, align 4
  br label %81

81:                                               ; preds = %80, %77
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 32
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  store i32 1, i32* %10, align 4
  br label %92

92:                                               ; preds = %91, %81
  %93 = load i32, i32* %10, align 4
  %94 = icmp sgt i32 %93, 255
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 255, i32* %10, align 4
  br label %96

96:                                               ; preds = %95, %92
  %97 = load i32, i32* %10, align 4
  %98 = shl i32 %97, 16
  %99 = load i32, i32* %9, align 4
  %100 = shl i32 %99, 8
  %101 = or i32 %98, %100
  %102 = load i32, i32* %8, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  br label %111

107:                                              ; preds = %42
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  store i32 0, i32* %110, align 8
  br label %111

111:                                              ; preds = %107, %96
  br label %112

112:                                              ; preds = %111, %37
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 3
  %116 = load float*, float** %115, align 8
  store float* %116, float** %13, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 4
  %120 = load float*, float** %119, align 8
  store float* %120, float** %14, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 9
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %187

126:                                              ; preds = %112
  %127 = load float*, float** %14, align 8
  %128 = getelementptr inbounds float, float* %127, i64 0
  %129 = load float, float* %128, align 4
  %130 = fcmp une float %129, 0.000000e+00
  br i1 %130, label %141, label %131

131:                                              ; preds = %126
  %132 = load float*, float** %14, align 8
  %133 = getelementptr inbounds float, float* %132, i64 1
  %134 = load float, float* %133, align 4
  %135 = fcmp une float %134, 0.000000e+00
  br i1 %135, label %141, label %136

136:                                              ; preds = %131
  %137 = load float*, float** %14, align 8
  %138 = getelementptr inbounds float, float* %137, i64 2
  %139 = load float, float* %138, align 4
  %140 = fcmp une float %139, 0.000000e+00
  br i1 %140, label %141, label %187

141:                                              ; preds = %136, %131, %126
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = call float @RadiusFromBounds(i32* %145, i32* %149)
  store float %150, float* %16, align 4
  store i32 0, i32* %8, align 4
  br label %151

151:                                              ; preds = %183, %141
  %152 = load i32, i32* %8, align 4
  %153 = icmp slt i32 %152, 3
  br i1 %153, label %154, label %186

154:                                              ; preds = %151
  %155 = load float*, float** %13, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds float, float* %155, i64 %157
  %159 = load float, float* %158, align 4
  %160 = load float, float* %16, align 4
  %161 = fsub float %159, %160
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 5
  %165 = load float*, float** %164, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds float, float* %165, i64 %167
  store float %161, float* %168, align 4
  %169 = load float*, float** %13, align 8
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds float, float* %169, i64 %171
  %173 = load float, float* %172, align 4
  %174 = load float, float* %16, align 4
  %175 = fadd float %173, %174
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 6
  %179 = load float*, float** %178, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds float, float* %179, i64 %181
  store float %175, float* %182, align 4
  br label %183

183:                                              ; preds = %154
  %184 = load i32, i32* %8, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %8, align 4
  br label %151

186:                                              ; preds = %151
  br label %208

187:                                              ; preds = %136, %112
  %188 = load float*, float** %13, align 8
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 5
  %196 = load float*, float** %195, align 8
  %197 = call i32 @VectorAdd(float* %188, i32* %192, float* %196)
  %198 = load float*, float** %13, align 8
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 6
  %206 = load float*, float** %205, align 8
  %207 = call i32 @VectorAdd(float* %198, i32* %202, float* %206)
  br label %208

208:                                              ; preds = %187, %186
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 5
  %212 = load float*, float** %211, align 8
  %213 = getelementptr inbounds float, float* %212, i64 0
  %214 = load float, float* %213, align 4
  %215 = fsub float %214, 1.000000e+00
  store float %215, float* %213, align 4
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 5
  %219 = load float*, float** %218, align 8
  %220 = getelementptr inbounds float, float* %219, i64 1
  %221 = load float, float* %220, align 4
  %222 = fsub float %221, 1.000000e+00
  store float %222, float* %220, align 4
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 5
  %226 = load float*, float** %225, align 8
  %227 = getelementptr inbounds float, float* %226, i64 2
  %228 = load float, float* %227, align 4
  %229 = fsub float %228, 1.000000e+00
  store float %229, float* %227, align 4
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 6
  %233 = load float*, float** %232, align 8
  %234 = getelementptr inbounds float, float* %233, i64 0
  %235 = load float, float* %234, align 4
  %236 = fadd float %235, 1.000000e+00
  store float %236, float* %234, align 4
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 6
  %240 = load float*, float** %239, align 8
  %241 = getelementptr inbounds float, float* %240, i64 1
  %242 = load float, float* %241, align 4
  %243 = fadd float %242, 1.000000e+00
  store float %243, float* %241, align 4
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 6
  %247 = load float*, float** %246, align 8
  %248 = getelementptr inbounds float, float* %247, i64 2
  %249 = load float, float* %248, align 4
  %250 = fadd float %249, 1.000000e+00
  store float %250, float* %248, align 4
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 0
  store i64 0, i64* %252, align 8
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 6
  store i8* null, i8** %254, align 8
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 1
  store i32 -1, i32* %256, align 8
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 2
  store i32 -1, i32* %258, align 4
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 5
  %262 = load float*, float** %261, align 8
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 6
  %266 = load float*, float** %265, align 8
  %267 = load i32, i32* @MAX_TOTAL_ENT_LEAFS, align 4
  %268 = call i32 @CM_BoxLeafnums(float* %262, float* %266, i32* %21, i32 %267, i32* %12)
  store i32 %268, i32* %7, align 4
  %269 = load i32, i32* %7, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %272, label %271

271:                                              ; preds = %208
  store i32 1, i32* %17, align 4
  br label %474

272:                                              ; preds = %208
  store i32 0, i32* %8, align 4
  br label %273

273:                                              ; preds = %348, %272
  %274 = load i32, i32* %8, align 4
  %275 = load i32, i32* %7, align 4
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %277, label %351

277:                                              ; preds = %273
  %278 = load i32, i32* %8, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %21, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @CM_LeafArea(i32 %281)
  store i32 %282, i32* %11, align 4
  %283 = load i32, i32* %11, align 4
  %284 = icmp ne i32 %283, -1
  br i1 %284, label %285, label %347

285:                                              ; preds = %277
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = icmp ne i32 %288, -1
  br i1 %289, label %290, label %342

290:                                              ; preds = %285
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* %11, align 4
  %295 = icmp ne i32 %293, %294
  br i1 %295, label %296, label %342

296:                                              ; preds = %290
  %297 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 4
  %300 = icmp ne i32 %299, -1
  br i1 %300, label %301, label %338

301:                                              ; preds = %296
  %302 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %303 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* %11, align 4
  %306 = icmp ne i32 %304, %305
  br i1 %306, label %307, label %338

307:                                              ; preds = %301
  %308 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @sv, i32 0, i32 0), align 8
  %309 = load i64, i64* @SS_LOADING, align 8
  %310 = icmp eq i64 %308, %309
  br i1 %310, label %311, label %338

311:                                              ; preds = %307
  %312 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %313 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %317, i32 0, i32 5
  %319 = load float*, float** %318, align 8
  %320 = getelementptr inbounds float, float* %319, i64 0
  %321 = load float, float* %320, align 4
  %322 = fptosi float %321 to i64
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %324, i32 0, i32 5
  %326 = load float*, float** %325, align 8
  %327 = getelementptr inbounds float, float* %326, i64 1
  %328 = load float, float* %327, align 4
  %329 = fptosi float %328 to i64
  %330 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %331, i32 0, i32 5
  %333 = load float*, float** %332, align 8
  %334 = getelementptr inbounds float, float* %333, i64 2
  %335 = load float, float* %334, align 4
  %336 = fptosi float %335 to i64
  %337 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %315, i64 %322, i64 %329, i64 %336)
  br label %338

338:                                              ; preds = %311, %307, %301, %296
  %339 = load i32, i32* %11, align 4
  %340 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %341 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %340, i32 0, i32 2
  store i32 %339, i32* %341, align 4
  br label %346

342:                                              ; preds = %290, %285
  %343 = load i32, i32* %11, align 4
  %344 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %345 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %344, i32 0, i32 1
  store i32 %343, i32* %345, align 8
  br label %346

346:                                              ; preds = %342, %338
  br label %347

347:                                              ; preds = %346, %277
  br label %348

348:                                              ; preds = %347
  %349 = load i32, i32* %8, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %8, align 4
  br label %273

351:                                              ; preds = %273
  %352 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %353 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %352, i32 0, i32 0
  store i64 0, i64* %353, align 8
  store i32 0, i32* %8, align 4
  br label %354

354:                                              ; preds = %385, %351
  %355 = load i32, i32* %8, align 4
  %356 = load i32, i32* %7, align 4
  %357 = icmp slt i32 %355, %356
  br i1 %357, label %358, label %388

358:                                              ; preds = %354
  %359 = load i32, i32* %8, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %21, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = call i8* @CM_LeafCluster(i32 %362)
  %364 = ptrtoint i8* %363 to i32
  store i32 %364, i32* %6, align 4
  %365 = load i32, i32* %6, align 4
  %366 = icmp ne i32 %365, -1
  br i1 %366, label %367, label %384

367:                                              ; preds = %358
  %368 = load i32, i32* %6, align 4
  %369 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %370 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %369, i32 0, i32 3
  %371 = load i32*, i32** %370, align 8
  %372 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %373 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %372, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = add nsw i64 %374, 1
  store i64 %375, i64* %373, align 8
  %376 = getelementptr inbounds i32, i32* %371, i64 %374
  store i32 %368, i32* %376, align 4
  %377 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %378 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = load i64, i64* @MAX_ENT_CLUSTERS, align 8
  %381 = icmp eq i64 %379, %380
  br i1 %381, label %382, label %383

382:                                              ; preds = %367
  br label %388

383:                                              ; preds = %367
  br label %384

384:                                              ; preds = %383, %358
  br label %385

385:                                              ; preds = %384
  %386 = load i32, i32* %8, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %8, align 4
  br label %354

388:                                              ; preds = %382, %354
  %389 = load i32, i32* %8, align 4
  %390 = load i32, i32* %7, align 4
  %391 = icmp ne i32 %389, %390
  br i1 %391, label %392, label %397

392:                                              ; preds = %388
  %393 = load i32, i32* %12, align 4
  %394 = call i8* @CM_LeafCluster(i32 %393)
  %395 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %396 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %395, i32 0, i32 6
  store i8* %394, i8** %396, align 8
  br label %397

397:                                              ; preds = %392, %388
  %398 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %399 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %399, i32 0, i32 8
  %401 = load i32, i32* %400, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %400, align 4
  %403 = load %struct.TYPE_14__*, %struct.TYPE_14__** @sv_worldSectors, align 8
  store %struct.TYPE_14__* %403, %struct.TYPE_14__** %3, align 8
  br label %404

404:                                              ; preds = %457, %397
  br label %405

405:                                              ; preds = %404
  %406 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %407 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = icmp eq i32 %408, -1
  br i1 %409, label %410, label %411

410:                                              ; preds = %405
  br label %458

411:                                              ; preds = %405
  %412 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %413 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %413, i32 0, i32 5
  %415 = load float*, float** %414, align 8
  %416 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %417 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds float, float* %415, i64 %419
  %421 = load float, float* %420, align 4
  %422 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %423 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %422, i32 0, i32 1
  %424 = load i64, i64* %423, align 8
  %425 = sitofp i64 %424 to float
  %426 = fcmp ogt float %421, %425
  br i1 %426, label %427, label %433

427:                                              ; preds = %411
  %428 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %429 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %428, i32 0, i32 3
  %430 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %430, i64 0
  %432 = load %struct.TYPE_14__*, %struct.TYPE_14__** %431, align 8
  store %struct.TYPE_14__* %432, %struct.TYPE_14__** %3, align 8
  br label %457

433:                                              ; preds = %411
  %434 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %435 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %435, i32 0, i32 6
  %437 = load float*, float** %436, align 8
  %438 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %439 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 8
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds float, float* %437, i64 %441
  %443 = load float, float* %442, align 4
  %444 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %445 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %444, i32 0, i32 1
  %446 = load i64, i64* %445, align 8
  %447 = sitofp i64 %446 to float
  %448 = fcmp olt float %443, %447
  br i1 %448, label %449, label %455

449:                                              ; preds = %433
  %450 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %451 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %450, i32 0, i32 3
  %452 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %451, align 8
  %453 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %452, i64 1
  %454 = load %struct.TYPE_14__*, %struct.TYPE_14__** %453, align 8
  store %struct.TYPE_14__* %454, %struct.TYPE_14__** %3, align 8
  br label %456

455:                                              ; preds = %433
  br label %458

456:                                              ; preds = %449
  br label %457

457:                                              ; preds = %456, %427
  br label %404

458:                                              ; preds = %455, %410
  %459 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %460 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %461 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %460, i32 0, i32 5
  store %struct.TYPE_14__* %459, %struct.TYPE_14__** %461, align 8
  %462 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %463 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %462, i32 0, i32 2
  %464 = load %struct.TYPE_15__*, %struct.TYPE_15__** %463, align 8
  %465 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %466 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %465, i32 0, i32 4
  store %struct.TYPE_15__* %464, %struct.TYPE_15__** %466, align 8
  %467 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %468 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %469 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %468, i32 0, i32 2
  store %struct.TYPE_15__* %467, %struct.TYPE_15__** %469, align 8
  %470 = load i32, i32* @qtrue, align 4
  %471 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %472 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %471, i32 0, i32 0
  %473 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %472, i32 0, i32 7
  store i32 %470, i32* %473, align 8
  store i32 0, i32* %17, align 4
  br label %474

474:                                              ; preds = %458, %271
  %475 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %475)
  %476 = load i32, i32* %17, align 4
  switch i32 %476, label %478 [
    i32 0, label %477
    i32 1, label %477
  ]

477:                                              ; preds = %474, %474
  ret void

478:                                              ; preds = %474
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_15__* @SV_SvEntityForGentity(%struct.TYPE_16__*) #2

declare dso_local i32 @SV_UnlinkEntity(%struct.TYPE_16__*) #2

declare dso_local float @RadiusFromBounds(i32*, i32*) #2

declare dso_local i32 @VectorAdd(float*, i32*, float*) #2

declare dso_local i32 @CM_BoxLeafnums(float*, float*, i32*, i32, i32*) #2

declare dso_local i32 @CM_LeafArea(i32) #2

declare dso_local i32 @Com_DPrintf(i8*, i32, i64, i64, i64) #2

declare dso_local i8* @CM_LeafCluster(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
