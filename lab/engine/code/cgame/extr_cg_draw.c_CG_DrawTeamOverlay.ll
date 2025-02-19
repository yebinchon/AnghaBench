; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawTeamOverlay.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawTeamOverlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64* }
%struct.TYPE_16__ = type { %struct.TYPE_13__, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_15__ = type { i64, i8*, i64, i32, i32, i32, i64, i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_14__ = type { i32 }

@cg_drawTeamOverlay = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@cg = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@PERS_TEAM = common dso_local global i64 0, align 8
@TEAM_RED = common dso_local global i64 0, align 8
@TEAM_BLUE = common dso_local global i64 0, align 8
@numSortedTeamPlayers = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@sortedTeamPlayers = common dso_local global i32* null, align 8
@TEAM_OVERLAY_MAXNAME_WIDTH = common dso_local global i32 0, align 4
@MAX_LOCATIONS = common dso_local global i32 0, align 4
@CS_LOCATIONS = common dso_local global i64 0, align 8
@TEAM_OVERLAY_MAXLOCATION_WIDTH = common dso_local global i32 0, align 4
@TINYCHAR_WIDTH = common dso_local global i32 0, align 4
@TINYCHAR_HEIGHT = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%3i %3i\00", align 1
@cg_weapons = common dso_local global %struct.TYPE_17__* null, align 8
@PW_NUM_POWERUPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, i64, i64)* @CG_DrawTeamOverlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @CG_DrawTeamOverlay(float %0, i64 %1, i64 %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca double*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [16 x i8], align 16
  %21 = alloca %struct.TYPE_15__*, align 8
  %22 = alloca %struct.TYPE_14__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store float %0, float* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cg_drawTeamOverlay, i32 0, i32 0), align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %3
  %28 = load float, float* %5, align 4
  store float %28, float* %4, align 4
  br label %449

29:                                               ; preds = %3
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 0), align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* @PERS_TEAM, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TEAM_RED, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %29
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 0), align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* @PERS_TEAM, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @TEAM_BLUE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load float, float* %5, align 4
  store float %50, float* %4, align 4
  br label %449

51:                                               ; preds = %39, %29
  store i32 0, i32* %19, align 4
  store i32 0, i32* %17, align 4
  %52 = load i32, i32* @numSortedTeamPlayers, align 4
  %53 = icmp sgt i32 %52, 8
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @numSortedTeamPlayers, align 4
  br label %57

57:                                               ; preds = %55, %54
  %58 = phi i32 [ 8, %54 ], [ %56, %55 ]
  store i32 %58, i32* %24, align 4
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %102, %57
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %24, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %105

63:                                               ; preds = %59
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cgs, i32 0, i32 1), align 8
  %65 = load i32*, i32** @sortedTeamPlayers, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i64 %70
  store %struct.TYPE_15__* %71, %struct.TYPE_15__** %21, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 7
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %101

76:                                               ; preds = %63
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 0), align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* @PERS_TEAM, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %79, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %76
  %89 = load i32, i32* %19, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %19, align 4
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @CG_DrawStrlen(i8* %93)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %17, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = load i32, i32* %14, align 4
  store i32 %99, i32* %17, align 4
  br label %100

100:                                              ; preds = %98, %88
  br label %101

101:                                              ; preds = %100, %76, %63
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %12, align 4
  br label %59

105:                                              ; preds = %59
  %106 = load i32, i32* %19, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = load float, float* %5, align 4
  store float %109, float* %4, align 4
  br label %449

110:                                              ; preds = %105
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* @TEAM_OVERLAY_MAXNAME_WIDTH, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i32, i32* @TEAM_OVERLAY_MAXNAME_WIDTH, align 4
  store i32 %115, i32* %17, align 4
  br label %116

116:                                              ; preds = %114, %110
  store i32 0, i32* %18, align 4
  store i32 1, i32* %12, align 4
  br label %117

117:                                              ; preds = %144, %116
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @MAX_LOCATIONS, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %147

121:                                              ; preds = %117
  %122 = load i64, i64* @CS_LOCATIONS, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %122, %124
  %126 = call i8* @CG_ConfigString(i64 %125)
  store i8* %126, i8** %15, align 8
  %127 = load i8*, i8** %15, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %143

129:                                              ; preds = %121
  %130 = load i8*, i8** %15, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %129
  %135 = load i8*, i8** %15, align 8
  %136 = call i32 @CG_DrawStrlen(i8* %135)
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %18, align 4
  %139 = icmp sgt i32 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %134
  %141 = load i32, i32* %14, align 4
  store i32 %141, i32* %18, align 4
  br label %142

142:                                              ; preds = %140, %134
  br label %143

143:                                              ; preds = %142, %129, %121
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %12, align 4
  br label %117

147:                                              ; preds = %117
  %148 = load i32, i32* %18, align 4
  %149 = load i32, i32* @TEAM_OVERLAY_MAXLOCATION_WIDTH, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i32, i32* @TEAM_OVERLAY_MAXLOCATION_WIDTH, align 4
  store i32 %152, i32* %18, align 4
  br label %153

153:                                              ; preds = %151, %147
  %154 = load i32, i32* %17, align 4
  %155 = load i32, i32* %18, align 4
  %156 = add nsw i32 %154, %155
  %157 = add nsw i32 %156, 4
  %158 = add nsw i32 %157, 7
  %159 = load i32, i32* @TINYCHAR_WIDTH, align 4
  %160 = mul nsw i32 %158, %159
  store i32 %160, i32* %9, align 4
  %161 = load i64, i64* %6, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %153
  %164 = load i32, i32* %9, align 4
  %165 = sub nsw i32 640, %164
  store i32 %165, i32* %8, align 4
  br label %167

166:                                              ; preds = %153
  store i32 0, i32* %8, align 4
  br label %167

167:                                              ; preds = %166, %163
  %168 = load i32, i32* %19, align 4
  %169 = load i32, i32* @TINYCHAR_HEIGHT, align 4
  %170 = mul nsw i32 %168, %169
  store i32 %170, i32* %10, align 4
  %171 = load i64, i64* %7, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %167
  %174 = load float, float* %5, align 4
  %175 = load i32, i32* %10, align 4
  %176 = sitofp i32 %175 to float
  %177 = fadd float %174, %176
  %178 = fptosi float %177 to i32
  store i32 %178, i32* %23, align 4
  br label %186

179:                                              ; preds = %167
  %180 = load i32, i32* %10, align 4
  %181 = sitofp i32 %180 to float
  %182 = load float, float* %5, align 4
  %183 = fsub float %182, %181
  store float %183, float* %5, align 4
  %184 = load float, float* %5, align 4
  %185 = fptosi float %184 to i32
  store i32 %185, i32* %23, align 4
  br label %186

186:                                              ; preds = %179, %173
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 0), align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  %190 = load i64*, i64** %189, align 8
  %191 = load i64, i64* @PERS_TEAM, align 8
  %192 = getelementptr inbounds i64, i64* %190, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @TEAM_RED, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %205

196:                                              ; preds = %186
  %197 = load double*, double** %16, align 8
  %198 = getelementptr inbounds double, double* %197, i64 0
  store double 1.000000e+00, double* %198, align 8
  %199 = load double*, double** %16, align 8
  %200 = getelementptr inbounds double, double* %199, i64 1
  store double 0.000000e+00, double* %200, align 8
  %201 = load double*, double** %16, align 8
  %202 = getelementptr inbounds double, double* %201, i64 2
  store double 0.000000e+00, double* %202, align 8
  %203 = load double*, double** %16, align 8
  %204 = getelementptr inbounds double, double* %203, i64 3
  store double 0x3FD51EB860000000, double* %204, align 8
  br label %214

205:                                              ; preds = %186
  %206 = load double*, double** %16, align 8
  %207 = getelementptr inbounds double, double* %206, i64 0
  store double 0.000000e+00, double* %207, align 8
  %208 = load double*, double** %16, align 8
  %209 = getelementptr inbounds double, double* %208, i64 1
  store double 0.000000e+00, double* %209, align 8
  %210 = load double*, double** %16, align 8
  %211 = getelementptr inbounds double, double* %210, i64 2
  store double 1.000000e+00, double* %211, align 8
  %212 = load double*, double** %16, align 8
  %213 = getelementptr inbounds double, double* %212, i64 3
  store double 0x3FD51EB860000000, double* %213, align 8
  br label %214

214:                                              ; preds = %205, %196
  %215 = load double*, double** %16, align 8
  %216 = call i32 @trap_R_SetColor(double* %215)
  %217 = load i32, i32* %8, align 4
  %218 = load float, float* %5, align 4
  %219 = load i32, i32* %9, align 4
  %220 = load i32, i32* %10, align 4
  %221 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cgs, i32 0, i32 0, i32 1), align 8
  %222 = call i32 @CG_DrawPic(i32 %217, float %218, i32 %219, i32 %220, i64 %221)
  %223 = call i32 @trap_R_SetColor(double* null)
  store i32 0, i32* %12, align 4
  br label %224

224:                                              ; preds = %443, %214
  %225 = load i32, i32* %12, align 4
  %226 = load i32, i32* %24, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %446

228:                                              ; preds = %224
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cgs, i32 0, i32 1), align 8
  %230 = load i32*, i32** @sortedTeamPlayers, align 8
  %231 = load i32, i32* %12, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i64 %235
  store %struct.TYPE_15__* %236, %struct.TYPE_15__** %21, align 8
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 7
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %442

241:                                              ; preds = %228
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 0), align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 0
  %248 = load i64*, i64** %247, align 8
  %249 = load i64, i64* @PERS_TEAM, align 8
  %250 = getelementptr inbounds i64, i64* %248, i64 %249
  %251 = load i64, i64* %250, align 8
  %252 = icmp eq i64 %244, %251
  br i1 %252, label %253, label %442

253:                                              ; preds = %241
  %254 = load double*, double** %16, align 8
  %255 = getelementptr inbounds double, double* %254, i64 3
  store double 1.000000e+00, double* %255, align 8
  %256 = load double*, double** %16, align 8
  %257 = getelementptr inbounds double, double* %256, i64 2
  store double 1.000000e+00, double* %257, align 8
  %258 = load double*, double** %16, align 8
  %259 = getelementptr inbounds double, double* %258, i64 1
  store double 1.000000e+00, double* %259, align 8
  %260 = load double*, double** %16, align 8
  %261 = getelementptr inbounds double, double* %260, i64 0
  store double 1.000000e+00, double* %261, align 8
  %262 = load i32, i32* %8, align 4
  %263 = load i32, i32* @TINYCHAR_WIDTH, align 4
  %264 = add nsw i32 %262, %263
  store i32 %264, i32* %11, align 4
  %265 = load i32, i32* %11, align 4
  %266 = load float, float* %5, align 4
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 1
  %269 = load i8*, i8** %268, align 8
  %270 = load double*, double** %16, align 8
  %271 = load i32, i32* @qfalse, align 4
  %272 = load i32, i32* @qfalse, align 4
  %273 = load i32, i32* @TINYCHAR_WIDTH, align 4
  %274 = load i32, i32* @TINYCHAR_HEIGHT, align 4
  %275 = load i32, i32* @TEAM_OVERLAY_MAXNAME_WIDTH, align 4
  %276 = call i32 @CG_DrawStringExt(i32 %265, float %266, i8* %269, double* %270, i32 %271, i32 %272, i32 %273, i32 %274, i32 %275)
  %277 = load i32, i32* %18, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %312

279:                                              ; preds = %253
  %280 = load i64, i64* @CS_LOCATIONS, align 8
  %281 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 6
  %283 = load i64, i64* %282, align 8
  %284 = add nsw i64 %280, %283
  %285 = call i8* @CG_ConfigString(i64 %284)
  store i8* %285, i8** %15, align 8
  %286 = load i8*, i8** %15, align 8
  %287 = icmp ne i8* %286, null
  br i1 %287, label %288, label %292

288:                                              ; preds = %279
  %289 = load i8*, i8** %15, align 8
  %290 = load i8, i8* %289, align 1
  %291 = icmp ne i8 %290, 0
  br i1 %291, label %293, label %292

292:                                              ; preds = %288, %279
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  br label %293

293:                                              ; preds = %292, %288
  %294 = load i32, i32* %8, align 4
  %295 = load i32, i32* @TINYCHAR_WIDTH, align 4
  %296 = mul nsw i32 %295, 2
  %297 = add nsw i32 %294, %296
  %298 = load i32, i32* @TINYCHAR_WIDTH, align 4
  %299 = load i32, i32* %17, align 4
  %300 = mul nsw i32 %298, %299
  %301 = add nsw i32 %297, %300
  store i32 %301, i32* %11, align 4
  %302 = load i32, i32* %11, align 4
  %303 = load float, float* %5, align 4
  %304 = load i8*, i8** %15, align 8
  %305 = load double*, double** %16, align 8
  %306 = load i32, i32* @qfalse, align 4
  %307 = load i32, i32* @qfalse, align 4
  %308 = load i32, i32* @TINYCHAR_WIDTH, align 4
  %309 = load i32, i32* @TINYCHAR_HEIGHT, align 4
  %310 = load i32, i32* @TEAM_OVERLAY_MAXLOCATION_WIDTH, align 4
  %311 = call i32 @CG_DrawStringExt(i32 %302, float %303, i8* %304, double* %305, i32 %306, i32 %307, i32 %308, i32 %309, i32 %310)
  br label %312

312:                                              ; preds = %293, %253
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %313, i32 0, i32 5
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %316, i32 0, i32 4
  %318 = load i32, i32* %317, align 4
  %319 = load double*, double** %16, align 8
  %320 = call i32 @CG_GetColorForHealth(i32 %315, i32 %318, double* %319)
  %321 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i64 0, i64 0
  %322 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %323 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %322, i32 0, i32 5
  %324 = load i32, i32* %323, align 8
  %325 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %326 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %325, i32 0, i32 4
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @Com_sprintf(i8* %321, i32 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %324, i32 %327)
  %329 = load i32, i32* %8, align 4
  %330 = load i32, i32* @TINYCHAR_WIDTH, align 4
  %331 = mul nsw i32 %330, 3
  %332 = add nsw i32 %329, %331
  %333 = load i32, i32* @TINYCHAR_WIDTH, align 4
  %334 = load i32, i32* %17, align 4
  %335 = mul nsw i32 %333, %334
  %336 = add nsw i32 %332, %335
  %337 = load i32, i32* @TINYCHAR_WIDTH, align 4
  %338 = load i32, i32* %18, align 4
  %339 = mul nsw i32 %337, %338
  %340 = add nsw i32 %336, %339
  store i32 %340, i32* %11, align 4
  %341 = load i32, i32* %11, align 4
  %342 = load float, float* %5, align 4
  %343 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i64 0, i64 0
  %344 = load double*, double** %16, align 8
  %345 = load i32, i32* @qfalse, align 4
  %346 = load i32, i32* @qfalse, align 4
  %347 = load i32, i32* @TINYCHAR_WIDTH, align 4
  %348 = load i32, i32* @TINYCHAR_HEIGHT, align 4
  %349 = call i32 @CG_DrawStringExt(i32 %341, float %342, i8* %343, double* %344, i32 %345, i32 %346, i32 %347, i32 %348, i32 0)
  %350 = load i32, i32* @TINYCHAR_WIDTH, align 4
  %351 = mul nsw i32 %350, 3
  %352 = load i32, i32* %11, align 4
  %353 = add nsw i32 %352, %351
  store i32 %353, i32* %11, align 4
  %354 = load %struct.TYPE_17__*, %struct.TYPE_17__** @cg_weapons, align 8
  %355 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %356 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %355, i32 0, i32 2
  %357 = load i64, i64* %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %354, i64 %357
  %359 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %375

362:                                              ; preds = %312
  %363 = load i32, i32* %11, align 4
  %364 = load float, float* %5, align 4
  %365 = load i32, i32* @TINYCHAR_WIDTH, align 4
  %366 = load i32, i32* @TINYCHAR_HEIGHT, align 4
  %367 = load %struct.TYPE_17__*, %struct.TYPE_17__** @cg_weapons, align 8
  %368 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %369 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %368, i32 0, i32 2
  %370 = load i64, i64* %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %367, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = call i32 @CG_DrawPic(i32 %363, float %364, i32 %365, i32 %366, i64 %373)
  br label %382

375:                                              ; preds = %312
  %376 = load i32, i32* %11, align 4
  %377 = load float, float* %5, align 4
  %378 = load i32, i32* @TINYCHAR_WIDTH, align 4
  %379 = load i32, i32* @TINYCHAR_HEIGHT, align 4
  %380 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cgs, i32 0, i32 0, i32 0), align 8
  %381 = call i32 @CG_DrawPic(i32 %376, float %377, i32 %378, i32 %379, i64 %380)
  br label %382

382:                                              ; preds = %375, %362
  %383 = load i64, i64* %6, align 8
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %387

385:                                              ; preds = %382
  %386 = load i32, i32* %8, align 4
  store i32 %386, i32* %11, align 4
  br label %393

387:                                              ; preds = %382
  %388 = load i32, i32* %8, align 4
  %389 = load i32, i32* %9, align 4
  %390 = add nsw i32 %388, %389
  %391 = load i32, i32* @TINYCHAR_WIDTH, align 4
  %392 = sub nsw i32 %390, %391
  store i32 %392, i32* %11, align 4
  br label %393

393:                                              ; preds = %387, %385
  store i32 0, i32* %13, align 4
  br label %394

394:                                              ; preds = %434, %393
  %395 = load i32, i32* %13, align 4
  %396 = load i32, i32* @PW_NUM_POWERUPS, align 4
  %397 = icmp sle i32 %395, %396
  br i1 %397, label %398, label %437

398:                                              ; preds = %394
  %399 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %400 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %399, i32 0, i32 3
  %401 = load i32, i32* %400, align 8
  %402 = load i32, i32* %13, align 4
  %403 = shl i32 1, %402
  %404 = and i32 %401, %403
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %433

406:                                              ; preds = %398
  %407 = load i32, i32* %13, align 4
  %408 = call %struct.TYPE_14__* @BG_FindItemForPowerup(i32 %407)
  store %struct.TYPE_14__* %408, %struct.TYPE_14__** %22, align 8
  %409 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %410 = icmp ne %struct.TYPE_14__* %409, null
  br i1 %410, label %411, label %432

411:                                              ; preds = %406
  %412 = load i32, i32* %11, align 4
  %413 = load float, float* %5, align 4
  %414 = load i32, i32* @TINYCHAR_WIDTH, align 4
  %415 = load i32, i32* @TINYCHAR_HEIGHT, align 4
  %416 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %417 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 4
  %419 = call i64 @trap_R_RegisterShader(i32 %418)
  %420 = call i32 @CG_DrawPic(i32 %412, float %413, i32 %414, i32 %415, i64 %419)
  %421 = load i64, i64* %6, align 8
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %427

423:                                              ; preds = %411
  %424 = load i32, i32* @TINYCHAR_WIDTH, align 4
  %425 = load i32, i32* %11, align 4
  %426 = sub nsw i32 %425, %424
  store i32 %426, i32* %11, align 4
  br label %431

427:                                              ; preds = %411
  %428 = load i32, i32* @TINYCHAR_WIDTH, align 4
  %429 = load i32, i32* %11, align 4
  %430 = add nsw i32 %429, %428
  store i32 %430, i32* %11, align 4
  br label %431

431:                                              ; preds = %427, %423
  br label %432

432:                                              ; preds = %431, %406
  br label %433

433:                                              ; preds = %432, %398
  br label %434

434:                                              ; preds = %433
  %435 = load i32, i32* %13, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %13, align 4
  br label %394

437:                                              ; preds = %394
  %438 = load i32, i32* @TINYCHAR_HEIGHT, align 4
  %439 = sitofp i32 %438 to float
  %440 = load float, float* %5, align 4
  %441 = fadd float %440, %439
  store float %441, float* %5, align 4
  br label %442

442:                                              ; preds = %437, %241, %228
  br label %443

443:                                              ; preds = %442
  %444 = load i32, i32* %12, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %12, align 4
  br label %224

446:                                              ; preds = %224
  %447 = load i32, i32* %23, align 4
  %448 = sitofp i32 %447 to float
  store float %448, float* %4, align 4
  br label %449

449:                                              ; preds = %446, %108, %49, %27
  %450 = load float, float* %4, align 4
  ret float %450
}

declare dso_local i32 @CG_DrawStrlen(i8*) #1

declare dso_local i8* @CG_ConfigString(i64) #1

declare dso_local i32 @trap_R_SetColor(double*) #1

declare dso_local i32 @CG_DrawPic(i32, float, i32, i32, i64) #1

declare dso_local i32 @CG_DrawStringExt(i32, float, i8*, double*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CG_GetColorForHealth(i32, i32, double*) #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local %struct.TYPE_14__* @BG_FindItemForPowerup(i32) #1

declare dso_local i64 @trap_R_RegisterShader(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
