; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_reach.c_AAS_Reachability_FuncBobbing.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_reach.c_AAS_Reachability_FuncBobbing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (i32, i8*)* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32*, i32*, i32, i32, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_10__ = type { i32, i32* }

@MAX_EPAIRKEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"classname\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"func_bobbing\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@botimport = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@PRT_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"func_bobbing without model\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"func_bobbing with invalid model number\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"spawnflags\00", align 1
@.str.8 = private unnamed_addr constant [77 x i8] c"funcbob model %d, start = {%1.1f, %1.1f, %1.1f} end = {%1.1f, %1.1f, %1.1f}\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"funcbob reach from area %d to %d\0A\00", align 1
@TRAVEL_FUNCBOB = common dso_local global i32 0, align 4
@aassettings = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@reach_funcbob = common dso_local global i32 0, align 4
@areareachability = common dso_local global %struct.TYPE_11__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_Reachability_FuncBobbing() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [10 x i32], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca [4 x i32*], align 16
  %20 = alloca [4 x i32*], align 16
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca [10 x i32*], align 16
  %27 = alloca float, align 4
  %28 = alloca %struct.TYPE_10__, align 8
  %29 = alloca %struct.TYPE_10__, align 8
  %30 = alloca %struct.TYPE_11__*, align 8
  %31 = alloca %struct.TYPE_11__*, align 8
  %32 = alloca %struct.TYPE_11__*, align 8
  %33 = alloca %struct.TYPE_11__*, align 8
  %34 = alloca %struct.TYPE_11__*, align 8
  %35 = alloca %struct.TYPE_11__*, align 8
  %36 = alloca %struct.TYPE_11__*, align 8
  %37 = load i32, i32* @MAX_EPAIRKEY, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %8, align 8
  %40 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %9, align 8
  %41 = load i32, i32* @MAX_EPAIRKEY, align 4
  %42 = zext i32 %41 to i64
  %43 = alloca i8, i64 %42, align 16
  store i64 %42, i64* %10, align 8
  store i32* null, i32** %18, align 8
  %44 = call i32 @AAS_NextBSPEntity(i32 0)
  store i32 %44, i32* %1, align 4
  br label %45

45:                                               ; preds = %755, %0
  %46 = load i32, i32* %1, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %758

48:                                               ; preds = %45
  %49 = load i32, i32* %1, align 4
  %50 = load i32, i32* @MAX_EPAIRKEY, align 4
  %51 = call i32 @AAS_ValueForBSPEpairKey(i32 %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %40, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %755

54:                                               ; preds = %48
  %55 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %755

58:                                               ; preds = %54
  %59 = load i32, i32* %1, align 4
  %60 = call i32 @AAS_FloatForBSPEpairKey(i32 %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), float* %27)
  %61 = load float, float* %27, align 4
  %62 = fcmp une float %61, 0.000000e+00
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  store float 3.200000e+01, float* %27, align 4
  br label %64

64:                                               ; preds = %63, %58
  %65 = load i32, i32* %1, align 4
  %66 = load i32, i32* @MAX_EPAIRKEY, align 4
  %67 = call i32 @AAS_ValueForBSPEpairKey(i32 %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %43, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @botimport, i32 0, i32 0), align 8
  %71 = load i32, i32* @PRT_ERROR, align 4
  %72 = call i32 %70(i32 %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %755

73:                                               ; preds = %64
  %74 = getelementptr inbounds i8, i8* %43, i64 1
  %75 = call i32 @atoi(i8* %74)
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @botimport, i32 0, i32 0), align 8
  %80 = load i32, i32* @PRT_ERROR, align 4
  %81 = call i32 %79(i32 %80, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %755

82:                                               ; preds = %73
  %83 = load i32, i32* %1, align 4
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @AAS_VectorForBSPEpairKey(i32 %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @VectorSet(i32* %88, i32 0, i32 0, i32 0)
  br label %90

90:                                               ; preds = %87, %82
  %91 = load i32, i32* %3, align 4
  %92 = load i32*, i32** %18, align 8
  %93 = load i32*, i32** %16, align 8
  %94 = load i32*, i32** %17, align 8
  %95 = call i32 @AAS_BSPModelMinsMaxsOrigin(i32 %91, i32* %92, i32* %93, i32* %94, i32* null)
  %96 = load i32*, i32** %16, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = load i32*, i32** %16, align 8
  %99 = call i32 @VectorAdd(i32* %96, i32* %97, i32* %98)
  %100 = load i32*, i32** %17, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = load i32*, i32** %17, align 8
  %103 = call i32 @VectorAdd(i32* %100, i32* %101, i32* %102)
  %104 = load i32*, i32** %16, align 8
  %105 = load i32*, i32** %17, align 8
  %106 = load i32*, i32** %21, align 8
  %107 = call i32 @VectorAdd(i32* %104, i32* %105, i32* %106)
  %108 = load i32*, i32** %21, align 8
  %109 = load i32*, i32** %21, align 8
  %110 = call i32 @VectorScale(i32* %108, double 5.000000e-01, i32* %109)
  %111 = load i32*, i32** %21, align 8
  %112 = load i32*, i32** %11, align 8
  %113 = call i32 @VectorCopy(i32* %111, i32* %112)
  %114 = load i32*, i32** %11, align 8
  %115 = load i32*, i32** %12, align 8
  %116 = call i32 @VectorCopy(i32* %114, i32* %115)
  %117 = load i32*, i32** %11, align 8
  %118 = load i32*, i32** %13, align 8
  %119 = call i32 @VectorCopy(i32* %117, i32* %118)
  %120 = load i32, i32* %1, align 4
  %121 = call i32 @AAS_IntForBSPEpairKey(i32 %120, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32* %2)
  %122 = load i32, i32* %2, align 4
  %123 = and i32 %122, 1
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %90
  store i32 0, i32* %4, align 4
  br label %133

126:                                              ; preds = %90
  %127 = load i32, i32* %2, align 4
  %128 = and i32 %127, 2
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  store i32 1, i32* %4, align 4
  br label %132

131:                                              ; preds = %126
  store i32 2, i32* %4, align 4
  br label %132

132:                                              ; preds = %131, %130
  br label %133

133:                                              ; preds = %132, %125
  %134 = load float, float* %27, align 4
  %135 = load i32*, i32** %13, align 8
  %136 = load i32, i32* %4, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = sitofp i32 %139 to float
  %141 = fsub float %140, %134
  %142 = fptosi float %141 to i32
  store i32 %142, i32* %138, align 4
  %143 = load float, float* %27, align 4
  %144 = load i32*, i32** %12, align 8
  %145 = load i32, i32* %4, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = sitofp i32 %148 to float
  %150 = fadd float %149, %143
  %151 = fptosi float %150 to i32
  store i32 %151, i32* %147, align 4
  %152 = load i32, i32* %3, align 4
  %153 = sext i32 %152 to i64
  %154 = load i32*, i32** %13, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = load i32*, i32** %13, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32*, i32** %13, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 2
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %12, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %12, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32*, i32** %12, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 2
  %172 = load i32, i32* %171, align 4
  %173 = call i32 (i8*, i64, i64, ...) @Log_Write(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.8, i64 0, i64 0), i64 %153, i64 %157, i32 %160, i32 %163, i32 %166, i32 %169, i32 %172)
  store i32 0, i32* %5, align 4
  br label %174

174:                                              ; preds = %205, %133
  %175 = load i32, i32* %5, align 4
  %176 = icmp slt i32 %175, 4
  br i1 %176, label %177, label %208

177:                                              ; preds = %174
  %178 = load i32*, i32** %13, align 8
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 %180
  %182 = load i32*, i32** %181, align 8
  %183 = call i32 @VectorCopy(i32* %178, i32* %182)
  %184 = load i32*, i32** %17, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 2
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** %21, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 2
  %189 = load i32, i32* %188, align 4
  %190 = sub nsw i32 %186, %189
  %191 = load i32, i32* %5, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 %192
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 2
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, %190
  store i32 %197, i32* %195, align 4
  %198 = load i32, i32* %5, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 %199
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 2
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, 24
  store i32 %204, i32* %202, align 4
  br label %205

205:                                              ; preds = %177
  %206 = load i32, i32* %5, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %5, align 4
  br label %174

208:                                              ; preds = %174
  %209 = load i32*, i32** %17, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32*, i32** %21, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  %214 = load i32, i32* %213, align 4
  %215 = sub nsw i32 %211, %214
  %216 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 0
  %217 = load i32*, i32** %216, align 16
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %219, %215
  store i32 %220, i32* %218, align 4
  %221 = load i32*, i32** %17, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 1
  %223 = load i32, i32* %222, align 4
  %224 = load i32*, i32** %21, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 1
  %226 = load i32, i32* %225, align 4
  %227 = sub nsw i32 %223, %226
  %228 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 0
  %229 = load i32*, i32** %228, align 16
  %230 = getelementptr inbounds i32, i32* %229, i64 1
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %231, %227
  store i32 %232, i32* %230, align 4
  %233 = load i32*, i32** %17, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 0
  %235 = load i32, i32* %234, align 4
  %236 = load i32*, i32** %21, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  %238 = load i32, i32* %237, align 4
  %239 = sub nsw i32 %235, %238
  %240 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 1
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 0
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %243, %239
  store i32 %244, i32* %242, align 4
  %245 = load i32*, i32** %16, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 1
  %247 = load i32, i32* %246, align 4
  %248 = load i32*, i32** %21, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 1
  %250 = load i32, i32* %249, align 4
  %251 = sub nsw i32 %247, %250
  %252 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 1
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 1
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %255, %251
  store i32 %256, i32* %254, align 4
  %257 = load i32*, i32** %16, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 0
  %259 = load i32, i32* %258, align 4
  %260 = load i32*, i32** %21, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 0
  %262 = load i32, i32* %261, align 4
  %263 = sub nsw i32 %259, %262
  %264 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 2
  %265 = load i32*, i32** %264, align 16
  %266 = getelementptr inbounds i32, i32* %265, i64 0
  %267 = load i32, i32* %266, align 4
  %268 = add nsw i32 %267, %263
  store i32 %268, i32* %266, align 4
  %269 = load i32*, i32** %16, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 1
  %271 = load i32, i32* %270, align 4
  %272 = load i32*, i32** %21, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 1
  %274 = load i32, i32* %273, align 4
  %275 = sub nsw i32 %271, %274
  %276 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 2
  %277 = load i32*, i32** %276, align 16
  %278 = getelementptr inbounds i32, i32* %277, i64 1
  %279 = load i32, i32* %278, align 4
  %280 = add nsw i32 %279, %275
  store i32 %280, i32* %278, align 4
  %281 = load i32*, i32** %16, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 0
  %283 = load i32, i32* %282, align 4
  %284 = load i32*, i32** %21, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 0
  %286 = load i32, i32* %285, align 4
  %287 = sub nsw i32 %283, %286
  %288 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 3
  %289 = load i32*, i32** %288, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 0
  %291 = load i32, i32* %290, align 4
  %292 = add nsw i32 %291, %287
  store i32 %292, i32* %290, align 4
  %293 = load i32*, i32** %17, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 1
  %295 = load i32, i32* %294, align 4
  %296 = load i32*, i32** %21, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 1
  %298 = load i32, i32* %297, align 4
  %299 = sub nsw i32 %295, %298
  %300 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 3
  %301 = load i32*, i32** %300, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 1
  %303 = load i32, i32* %302, align 4
  %304 = add nsw i32 %303, %299
  store i32 %304, i32* %302, align 4
  %305 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 0
  %306 = load i32*, i32** %305, align 16
  %307 = getelementptr inbounds i32, i32* %306, i64 2
  %308 = load i32, i32* %307, align 4
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i32 %308, i32* %309, align 8
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %311 = load i32*, i32** %310, align 8
  %312 = call i32 @VectorSet(i32* %311, i32 0, i32 0, i32 1)
  store i32 0, i32* %5, align 4
  br label %313

313:                                              ; preds = %344, %208
  %314 = load i32, i32* %5, align 4
  %315 = icmp slt i32 %314, 4
  br i1 %315, label %316, label %347

316:                                              ; preds = %313
  %317 = load i32*, i32** %12, align 8
  %318 = load i32, i32* %5, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 %319
  %321 = load i32*, i32** %320, align 8
  %322 = call i32 @VectorCopy(i32* %317, i32* %321)
  %323 = load i32*, i32** %17, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 2
  %325 = load i32, i32* %324, align 4
  %326 = load i32*, i32** %21, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 2
  %328 = load i32, i32* %327, align 4
  %329 = sub nsw i32 %325, %328
  %330 = load i32, i32* %5, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 %331
  %333 = load i32*, i32** %332, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 2
  %335 = load i32, i32* %334, align 4
  %336 = add nsw i32 %335, %329
  store i32 %336, i32* %334, align 4
  %337 = load i32, i32* %5, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 %338
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 2
  %342 = load i32, i32* %341, align 4
  %343 = add nsw i32 %342, 24
  store i32 %343, i32* %341, align 4
  br label %344

344:                                              ; preds = %316
  %345 = load i32, i32* %5, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %5, align 4
  br label %313

347:                                              ; preds = %313
  %348 = load i32*, i32** %17, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 0
  %350 = load i32, i32* %349, align 4
  %351 = load i32*, i32** %21, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 0
  %353 = load i32, i32* %352, align 4
  %354 = sub nsw i32 %350, %353
  %355 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 0
  %356 = load i32*, i32** %355, align 16
  %357 = getelementptr inbounds i32, i32* %356, i64 0
  %358 = load i32, i32* %357, align 4
  %359 = add nsw i32 %358, %354
  store i32 %359, i32* %357, align 4
  %360 = load i32*, i32** %17, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 1
  %362 = load i32, i32* %361, align 4
  %363 = load i32*, i32** %21, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 1
  %365 = load i32, i32* %364, align 4
  %366 = sub nsw i32 %362, %365
  %367 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 0
  %368 = load i32*, i32** %367, align 16
  %369 = getelementptr inbounds i32, i32* %368, i64 1
  %370 = load i32, i32* %369, align 4
  %371 = add nsw i32 %370, %366
  store i32 %371, i32* %369, align 4
  %372 = load i32*, i32** %17, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 0
  %374 = load i32, i32* %373, align 4
  %375 = load i32*, i32** %21, align 8
  %376 = getelementptr inbounds i32, i32* %375, i64 0
  %377 = load i32, i32* %376, align 4
  %378 = sub nsw i32 %374, %377
  %379 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 1
  %380 = load i32*, i32** %379, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 0
  %382 = load i32, i32* %381, align 4
  %383 = add nsw i32 %382, %378
  store i32 %383, i32* %381, align 4
  %384 = load i32*, i32** %16, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 1
  %386 = load i32, i32* %385, align 4
  %387 = load i32*, i32** %21, align 8
  %388 = getelementptr inbounds i32, i32* %387, i64 1
  %389 = load i32, i32* %388, align 4
  %390 = sub nsw i32 %386, %389
  %391 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 1
  %392 = load i32*, i32** %391, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 1
  %394 = load i32, i32* %393, align 4
  %395 = add nsw i32 %394, %390
  store i32 %395, i32* %393, align 4
  %396 = load i32*, i32** %16, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 0
  %398 = load i32, i32* %397, align 4
  %399 = load i32*, i32** %21, align 8
  %400 = getelementptr inbounds i32, i32* %399, i64 0
  %401 = load i32, i32* %400, align 4
  %402 = sub nsw i32 %398, %401
  %403 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 2
  %404 = load i32*, i32** %403, align 16
  %405 = getelementptr inbounds i32, i32* %404, i64 0
  %406 = load i32, i32* %405, align 4
  %407 = add nsw i32 %406, %402
  store i32 %407, i32* %405, align 4
  %408 = load i32*, i32** %16, align 8
  %409 = getelementptr inbounds i32, i32* %408, i64 1
  %410 = load i32, i32* %409, align 4
  %411 = load i32*, i32** %21, align 8
  %412 = getelementptr inbounds i32, i32* %411, i64 1
  %413 = load i32, i32* %412, align 4
  %414 = sub nsw i32 %410, %413
  %415 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 2
  %416 = load i32*, i32** %415, align 16
  %417 = getelementptr inbounds i32, i32* %416, i64 1
  %418 = load i32, i32* %417, align 4
  %419 = add nsw i32 %418, %414
  store i32 %419, i32* %417, align 4
  %420 = load i32*, i32** %16, align 8
  %421 = getelementptr inbounds i32, i32* %420, i64 0
  %422 = load i32, i32* %421, align 4
  %423 = load i32*, i32** %21, align 8
  %424 = getelementptr inbounds i32, i32* %423, i64 0
  %425 = load i32, i32* %424, align 4
  %426 = sub nsw i32 %422, %425
  %427 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 3
  %428 = load i32*, i32** %427, align 8
  %429 = getelementptr inbounds i32, i32* %428, i64 0
  %430 = load i32, i32* %429, align 4
  %431 = add nsw i32 %430, %426
  store i32 %431, i32* %429, align 4
  %432 = load i32*, i32** %17, align 8
  %433 = getelementptr inbounds i32, i32* %432, i64 1
  %434 = load i32, i32* %433, align 4
  %435 = load i32*, i32** %21, align 8
  %436 = getelementptr inbounds i32, i32* %435, i64 1
  %437 = load i32, i32* %436, align 4
  %438 = sub nsw i32 %434, %437
  %439 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 3
  %440 = load i32*, i32** %439, align 8
  %441 = getelementptr inbounds i32, i32* %440, i64 1
  %442 = load i32, i32* %441, align 4
  %443 = add nsw i32 %442, %438
  store i32 %443, i32* %441, align 4
  %444 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 0
  %445 = load i32*, i32** %444, align 16
  %446 = getelementptr inbounds i32, i32* %445, i64 2
  %447 = load i32, i32* %446, align 4
  %448 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  store i32 %447, i32* %448, align 8
  %449 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %450 = load i32*, i32** %449, align 8
  %451 = call i32 @VectorSet(i32* %450, i32 0, i32 0, i32 1)
  %452 = load i32*, i32** %13, align 8
  %453 = load i32*, i32** %14, align 8
  %454 = call i32 @VectorCopy(i32* %452, i32* %453)
  %455 = load i32*, i32** %17, align 8
  %456 = getelementptr inbounds i32, i32* %455, i64 2
  %457 = load i32, i32* %456, align 4
  %458 = load i32*, i32** %21, align 8
  %459 = getelementptr inbounds i32, i32* %458, i64 2
  %460 = load i32, i32* %459, align 4
  %461 = sub nsw i32 %457, %460
  %462 = add nsw i32 %461, 24
  %463 = load i32*, i32** %14, align 8
  %464 = getelementptr inbounds i32, i32* %463, i64 2
  %465 = load i32, i32* %464, align 4
  %466 = add nsw i32 %465, %462
  store i32 %466, i32* %464, align 4
  %467 = load i32*, i32** %12, align 8
  %468 = load i32*, i32** %15, align 8
  %469 = call i32 @VectorCopy(i32* %467, i32* %468)
  %470 = load i32*, i32** %17, align 8
  %471 = getelementptr inbounds i32, i32* %470, i64 2
  %472 = load i32, i32* %471, align 4
  %473 = load i32*, i32** %21, align 8
  %474 = getelementptr inbounds i32, i32* %473, i64 2
  %475 = load i32, i32* %474, align 4
  %476 = sub nsw i32 %472, %475
  %477 = add nsw i32 %476, 24
  %478 = load i32*, i32** %15, align 8
  %479 = getelementptr inbounds i32, i32* %478, i64 2
  %480 = load i32, i32* %479, align 4
  %481 = add nsw i32 %480, %477
  store i32 %481, i32* %479, align 4
  %482 = load i32*, i32** %14, align 8
  %483 = call i32 @AAS_PointAreaNum(i32* %482)
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %486, label %485

485:                                              ; preds = %347
  br label %755

486:                                              ; preds = %347
  %487 = load i32*, i32** %15, align 8
  %488 = call i32 @AAS_PointAreaNum(i32* %487)
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %491, label %490

490:                                              ; preds = %486
  br label %755

491:                                              ; preds = %486
  store i32 0, i32* %5, align 4
  br label %492

492:                                              ; preds = %751, %491
  %493 = load i32, i32* %5, align 4
  %494 = icmp slt i32 %493, 2
  br i1 %494, label %495, label %754

495:                                              ; preds = %492
  %496 = load i32, i32* %5, align 4
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %498, label %505

498:                                              ; preds = %495
  %499 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 0
  %500 = load i32, i32* @qtrue, align 4
  %501 = call %struct.TYPE_11__* @AAS_FindFaceReachabilities(i32** %499, i32 4, %struct.TYPE_10__* %28, i32 %500)
  store %struct.TYPE_11__* %501, %struct.TYPE_11__** %35, align 8
  %502 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 0
  %503 = load i32, i32* @qfalse, align 4
  %504 = call %struct.TYPE_11__* @AAS_FindFaceReachabilities(i32** %502, i32 4, %struct.TYPE_10__* %29, i32 %503)
  store %struct.TYPE_11__* %504, %struct.TYPE_11__** %36, align 8
  br label %512

505:                                              ; preds = %495
  %506 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 0
  %507 = load i32, i32* @qtrue, align 4
  %508 = call %struct.TYPE_11__* @AAS_FindFaceReachabilities(i32** %506, i32 4, %struct.TYPE_10__* %29, i32 %507)
  store %struct.TYPE_11__* %508, %struct.TYPE_11__** %35, align 8
  %509 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 0
  %510 = load i32, i32* @qfalse, align 4
  %511 = call %struct.TYPE_11__* @AAS_FindFaceReachabilities(i32** %509, i32 4, %struct.TYPE_10__* %28, i32 %510)
  store %struct.TYPE_11__* %511, %struct.TYPE_11__** %36, align 8
  br label %512

512:                                              ; preds = %505, %498
  %513 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  store %struct.TYPE_11__* %513, %struct.TYPE_11__** %30, align 8
  br label %514

514:                                              ; preds = %713, %512
  %515 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %516 = icmp ne %struct.TYPE_11__* %515, null
  br i1 %516, label %517, label %715

517:                                              ; preds = %514
  %518 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %519 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %518, i32 0, i32 5
  %520 = load %struct.TYPE_11__*, %struct.TYPE_11__** %519, align 8
  store %struct.TYPE_11__* %520, %struct.TYPE_11__** %32, align 8
  %521 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  store %struct.TYPE_11__* %521, %struct.TYPE_11__** %31, align 8
  br label %522

522:                                              ; preds = %710, %517
  %523 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %524 = icmp ne %struct.TYPE_11__* %523, null
  br i1 %524, label %525, label %712

525:                                              ; preds = %522
  %526 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %527 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %526, i32 0, i32 5
  %528 = load %struct.TYPE_11__*, %struct.TYPE_11__** %527, align 8
  store %struct.TYPE_11__* %528, %struct.TYPE_11__** %33, align 8
  %529 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %530 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %529, i32 0, i32 0
  %531 = load i64, i64* %530, align 8
  %532 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %533 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %532, i32 0, i32 0
  %534 = load i64, i64* %533, align 8
  %535 = call i32 (i8*, i64, i64, ...) @Log_Write(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i64 %531, i64 %534)
  %536 = load i32, i32* %5, align 4
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %538, label %542

538:                                              ; preds = %525
  %539 = load i32*, i32** %14, align 8
  %540 = load i32*, i32** %22, align 8
  %541 = call i32 @VectorCopy(i32* %539, i32* %540)
  br label %546

542:                                              ; preds = %525
  %543 = load i32*, i32** %15, align 8
  %544 = load i32*, i32** %22, align 8
  %545 = call i32 @VectorCopy(i32* %543, i32* %544)
  br label %546

546:                                              ; preds = %542, %538
  %547 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %548 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %547, i32 0, i32 1
  %549 = load i32*, i32** %548, align 8
  %550 = load i32*, i32** %22, align 8
  %551 = load i32*, i32** %25, align 8
  %552 = call i32 @VectorSubtract(i32* %549, i32* %550, i32* %551)
  %553 = load i32*, i32** %25, align 8
  %554 = getelementptr inbounds i32, i32* %553, i64 2
  store i32 0, i32* %554, align 4
  %555 = load i32*, i32** %25, align 8
  %556 = call i32 @VectorNormalize(i32* %555)
  %557 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %558 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %557, i32 0, i32 1
  %559 = load i32*, i32** %558, align 8
  %560 = load i32*, i32** %23, align 8
  %561 = call i32 @VectorCopy(i32* %559, i32* %560)
  %562 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %563 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %562, i32 0, i32 1
  %564 = load i32*, i32** %563, align 8
  %565 = load i32*, i32** %25, align 8
  %566 = load i32*, i32** %23, align 8
  %567 = call i32 @VectorMA(i32* %564, i32 1, i32* %565, i32* %566)
  %568 = load i32*, i32** %23, align 8
  %569 = getelementptr inbounds i32, i32* %568, i64 2
  %570 = load i32, i32* %569, align 4
  %571 = add nsw i32 %570, 1
  store i32 %571, i32* %569, align 4
  %572 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %573 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %572, i32 0, i32 1
  %574 = load i32*, i32** %573, align 8
  %575 = load i32*, i32** %25, align 8
  %576 = load i32*, i32** %24, align 8
  %577 = call i32 @VectorMA(i32* %574, i32 16, i32* %575, i32* %576)
  %578 = load i32*, i32** %24, align 8
  %579 = getelementptr inbounds i32, i32* %578, i64 2
  %580 = load i32, i32* %579, align 4
  %581 = add nsw i32 %580, 1
  store i32 %581, i32* %579, align 4
  %582 = load i32*, i32** %23, align 8
  %583 = load i32*, i32** %24, align 8
  %584 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %585 = getelementptr inbounds [10 x i32*], [10 x i32*]* %26, i64 0, i64 0
  %586 = call i32 @AAS_TraceAreas(i32* %582, i32* %583, i32* %584, i32** %585, i32 10)
  store i32 %586, i32* %6, align 4
  %587 = load i32, i32* %6, align 4
  %588 = icmp sle i32 %587, 0
  br i1 %588, label %589, label %590

589:                                              ; preds = %546
  br label %710

590:                                              ; preds = %546
  %591 = load i32, i32* %6, align 4
  %592 = icmp sgt i32 %591, 1
  br i1 %592, label %593, label %600

593:                                              ; preds = %590
  %594 = getelementptr inbounds [10 x i32*], [10 x i32*]* %26, i64 0, i64 1
  %595 = load i32*, i32** %594, align 8
  %596 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %597 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %596, i32 0, i32 1
  %598 = load i32*, i32** %597, align 8
  %599 = call i32 @VectorCopy(i32* %595, i32* %598)
  br label %606

600:                                              ; preds = %590
  %601 = load i32*, i32** %24, align 8
  %602 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %603 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %602, i32 0, i32 1
  %604 = load i32*, i32** %603, align 8
  %605 = call i32 @VectorCopy(i32* %601, i32* %604)
  br label %606

606:                                              ; preds = %600, %593
  %607 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %608 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %607, i32 0, i32 1
  %609 = load i32*, i32** %608, align 8
  %610 = call i32 @AAS_PointAreaNum(i32* %609)
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %613, label %612

612:                                              ; preds = %606
  br label %710

613:                                              ; preds = %606
  %614 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %615 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %614, i32 0, i32 2
  %616 = load i32*, i32** %615, align 8
  %617 = call i32 @AAS_PointAreaNum(i32* %616)
  %618 = icmp ne i32 %617, 0
  br i1 %618, label %620, label %619

619:                                              ; preds = %613
  br label %710

620:                                              ; preds = %613
  %621 = call %struct.TYPE_11__* (...) @AAS_AllocReachability()
  store %struct.TYPE_11__* %621, %struct.TYPE_11__** %34, align 8
  %622 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %623 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %622, i32 0, i32 0
  %624 = load i64, i64* %623, align 8
  %625 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %626 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %625, i32 0, i32 0
  store i64 %624, i64* %626, align 8
  %627 = load i32, i32* %5, align 4
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %629, label %645

629:                                              ; preds = %620
  %630 = load i32*, i32** %13, align 8
  %631 = load i32, i32* %4, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds i32, i32* %630, i64 %632
  %634 = load i32, i32* %633, align 4
  %635 = shl i32 %634, 16
  %636 = load i32*, i32** %12, align 8
  %637 = load i32, i32* %4, align 4
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds i32, i32* %636, i64 %638
  %640 = load i32, i32* %639, align 4
  %641 = and i32 %640, 65535
  %642 = or i32 %635, %641
  %643 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %644 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %643, i32 0, i32 3
  store i32 %642, i32* %644, align 8
  br label %661

645:                                              ; preds = %620
  %646 = load i32*, i32** %12, align 8
  %647 = load i32, i32* %4, align 4
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds i32, i32* %646, i64 %648
  %650 = load i32, i32* %649, align 4
  %651 = shl i32 %650, 16
  %652 = load i32*, i32** %13, align 8
  %653 = load i32, i32* %4, align 4
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds i32, i32* %652, i64 %654
  %656 = load i32, i32* %655, align 4
  %657 = and i32 %656, 65535
  %658 = or i32 %651, %657
  %659 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %660 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %659, i32 0, i32 3
  store i32 %658, i32* %660, align 8
  br label %661

661:                                              ; preds = %645, %629
  %662 = load i32, i32* %2, align 4
  %663 = shl i32 %662, 16
  %664 = load i32, i32* %3, align 4
  %665 = or i32 %663, %664
  %666 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %667 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %666, i32 0, i32 4
  store i32 %665, i32* %667, align 4
  %668 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %669 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %668, i32 0, i32 1
  %670 = load i32*, i32** %669, align 8
  %671 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %672 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %671, i32 0, i32 1
  %673 = load i32*, i32** %672, align 8
  %674 = call i32 @VectorCopy(i32* %670, i32* %673)
  %675 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %676 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %675, i32 0, i32 2
  %677 = load i32*, i32** %676, align 8
  %678 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %679 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %678, i32 0, i32 2
  %680 = load i32*, i32** %679, align 8
  %681 = call i32 @VectorCopy(i32* %677, i32* %680)
  %682 = load i32, i32* @TRAVEL_FUNCBOB, align 4
  %683 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %684 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %683, i32 0, i32 7
  store i32 %682, i32* %684, align 4
  %685 = load i32, i32* %1, align 4
  %686 = call i32 @AAS_TravelFlagsForTeam(i32 %685)
  %687 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %688 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %687, i32 0, i32 7
  %689 = load i32, i32* %688, align 4
  %690 = or i32 %689, %686
  store i32 %690, i32* %688, align 4
  %691 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aassettings, i32 0, i32 0), align 4
  %692 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %693 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %692, i32 0, i32 6
  store i32 %691, i32* %693, align 8
  %694 = load i32, i32* @reach_funcbob, align 4
  %695 = add nsw i32 %694, 1
  store i32 %695, i32* @reach_funcbob, align 4
  %696 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @areareachability, align 8
  %697 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %698 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %697, i32 0, i32 0
  %699 = load i64, i64* %698, align 8
  %700 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %696, i64 %699
  %701 = load %struct.TYPE_11__*, %struct.TYPE_11__** %700, align 8
  %702 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %703 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %702, i32 0, i32 5
  store %struct.TYPE_11__* %701, %struct.TYPE_11__** %703, align 8
  %704 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %705 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @areareachability, align 8
  %706 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %707 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %706, i32 0, i32 0
  %708 = load i64, i64* %707, align 8
  %709 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %705, i64 %708
  store %struct.TYPE_11__* %704, %struct.TYPE_11__** %709, align 8
  br label %710

710:                                              ; preds = %661, %619, %612, %589
  %711 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  store %struct.TYPE_11__* %711, %struct.TYPE_11__** %31, align 8
  br label %522

712:                                              ; preds = %522
  br label %713

713:                                              ; preds = %712
  %714 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  store %struct.TYPE_11__* %714, %struct.TYPE_11__** %30, align 8
  br label %514

715:                                              ; preds = %514
  %716 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  store %struct.TYPE_11__* %716, %struct.TYPE_11__** %30, align 8
  br label %717

717:                                              ; preds = %726, %715
  %718 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %719 = icmp ne %struct.TYPE_11__* %718, null
  br i1 %719, label %720, label %728

720:                                              ; preds = %717
  %721 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %722 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %721, i32 0, i32 5
  %723 = load %struct.TYPE_11__*, %struct.TYPE_11__** %722, align 8
  store %struct.TYPE_11__* %723, %struct.TYPE_11__** %32, align 8
  %724 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %725 = call i32 @AAS_FreeReachability(%struct.TYPE_11__* %724)
  br label %726

726:                                              ; preds = %720
  %727 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  store %struct.TYPE_11__* %727, %struct.TYPE_11__** %30, align 8
  br label %717

728:                                              ; preds = %717
  %729 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  store %struct.TYPE_11__* %729, %struct.TYPE_11__** %31, align 8
  br label %730

730:                                              ; preds = %739, %728
  %731 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %732 = icmp ne %struct.TYPE_11__* %731, null
  br i1 %732, label %733, label %741

733:                                              ; preds = %730
  %734 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %735 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %734, i32 0, i32 5
  %736 = load %struct.TYPE_11__*, %struct.TYPE_11__** %735, align 8
  store %struct.TYPE_11__* %736, %struct.TYPE_11__** %33, align 8
  %737 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %738 = call i32 @AAS_FreeReachability(%struct.TYPE_11__* %737)
  br label %739

739:                                              ; preds = %733
  %740 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  store %struct.TYPE_11__* %740, %struct.TYPE_11__** %31, align 8
  br label %730

741:                                              ; preds = %730
  %742 = load i32, i32* %2, align 4
  %743 = and i32 %742, 1
  %744 = icmp ne i32 %743, 0
  br i1 %744, label %750, label %745

745:                                              ; preds = %741
  %746 = load i32, i32* %2, align 4
  %747 = and i32 %746, 2
  %748 = icmp ne i32 %747, 0
  br i1 %748, label %750, label %749

749:                                              ; preds = %745
  br label %754

750:                                              ; preds = %745, %741
  br label %751

751:                                              ; preds = %750
  %752 = load i32, i32* %5, align 4
  %753 = add nsw i32 %752, 1
  store i32 %753, i32* %5, align 4
  br label %492

754:                                              ; preds = %749, %492
  br label %755

755:                                              ; preds = %754, %490, %485, %78, %69, %57, %53
  %756 = load i32, i32* %1, align 4
  %757 = call i32 @AAS_NextBSPEntity(i32 %756)
  store i32 %757, i32* %1, align 4
  br label %45

758:                                              ; preds = %45
  %759 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %759)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @AAS_NextBSPEntity(i32) #2

declare dso_local i32 @AAS_ValueForBSPEpairKey(i32, i8*, i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @AAS_FloatForBSPEpairKey(i32, i8*, float*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @AAS_VectorForBSPEpairKey(i32, i8*, i32*) #2

declare dso_local i32 @VectorSet(i32*, i32, i32, i32) #2

declare dso_local i32 @AAS_BSPModelMinsMaxsOrigin(i32, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @VectorAdd(i32*, i32*, i32*) #2

declare dso_local i32 @VectorScale(i32*, double, i32*) #2

declare dso_local i32 @VectorCopy(i32*, i32*) #2

declare dso_local i32 @AAS_IntForBSPEpairKey(i32, i8*, i32*) #2

declare dso_local i32 @Log_Write(i8*, i64, i64, ...) #2

declare dso_local i32 @AAS_PointAreaNum(i32*) #2

declare dso_local %struct.TYPE_11__* @AAS_FindFaceReachabilities(i32**, i32, %struct.TYPE_10__*, i32) #2

declare dso_local i32 @VectorSubtract(i32*, i32*, i32*) #2

declare dso_local i32 @VectorNormalize(i32*) #2

declare dso_local i32 @VectorMA(i32*, i32, i32*, i32*) #2

declare dso_local i32 @AAS_TraceAreas(i32*, i32*, i32*, i32**, i32) #2

declare dso_local %struct.TYPE_11__* @AAS_AllocReachability(...) #2

declare dso_local i32 @AAS_TravelFlagsForTeam(i32) #2

declare dso_local i32 @AAS_FreeReachability(%struct.TYPE_11__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
