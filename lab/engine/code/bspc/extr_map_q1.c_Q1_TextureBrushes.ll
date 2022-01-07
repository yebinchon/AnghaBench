; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_map_q1.c_Q1_TextureBrushes.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_map_q1.c_Q1_TextureBrushes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i64, i32, i32** }
%struct.TYPE_23__ = type { i32, i32, i64, i32, i32** }
%struct.TYPE_19__ = type { i32, %struct.TYPE_19__*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_17__ = type { i32 }

@__const.Q1_TextureBrushes.defaultvec = private unnamed_addr constant [4 x i32] [i32 1, i32 0, i32 0, i32 0], align 16
@.str = private unnamed_addr constant [19 x i8] c"texturing brushes\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%5d brushes\00", align 1
@SFL_TEXTURED = common dso_local global i32 0, align 4
@lessbrushes = common dso_local global i32 0, align 4
@q1_numfaces = common dso_local global i32 0, align 4
@q1_dfaces = common dso_local global %struct.TYPE_22__* null, align 8
@q1_dnodes = common dso_local global %struct.TYPE_21__* null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"brush %d: no real texture split\00", align 1
@q1_texinfo = common dso_local global %struct.TYPE_20__* null, align 8
@map_texinfo = common dso_local global %struct.TYPE_23__* null, align 8
@q1_dtexdata = common dso_local global i64 0, align 8
@q1_texdatasize = common dso_local global i32 0, align 4
@map_numtexinfo = common dso_local global i32 0, align 4
@TEXINFO_NODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"\0D%5d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_19__* @Q1_TextureBrushes(%struct.TYPE_19__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca %struct.TYPE_19__*, align 8
  %19 = alloca %struct.TYPE_19__*, align 8
  %20 = alloca %struct.TYPE_19__*, align 8
  %21 = alloca %struct.TYPE_19__*, align 8
  %22 = alloca %struct.TYPE_19__*, align 8
  %23 = alloca [4 x i32], align 16
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store i32 %1, i32* %4, align 4
  %24 = bitcast [4 x i32]* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 bitcast ([4 x i32]* @__const.Q1_TextureBrushes.defaultvec to i8*), i64 16, i1 false)
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %2
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  store i32 0, i32* %11, align 4
  %33 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %34

34:                                               ; preds = %32, %29
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_19__* %35, %struct.TYPE_19__** %22, align 8
  br label %36

36:                                               ; preds = %46, %34
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %38 = icmp ne %struct.TYPE_19__* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %41, align 8
  %43 = icmp ne %struct.TYPE_19__* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %50

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %48, align 8
  store %struct.TYPE_19__* %49, %struct.TYPE_19__** %22, align 8
  br label %36

50:                                               ; preds = %44, %36
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %20, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_19__* %51, %struct.TYPE_19__** %18, align 8
  br label %52

52:                                               ; preds = %457, %50
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %54 = icmp ne %struct.TYPE_19__* %53, null
  br i1 %54, label %55, label %459

55:                                               ; preds = %52
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %57, align 8
  store %struct.TYPE_19__* %58, %struct.TYPE_19__** %19, align 8
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %441, %55
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %444

65:                                               ; preds = %59
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i64 %70
  store %struct.TYPE_16__* %71, %struct.TYPE_16__** %15, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @SFL_TEXTURED, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %65
  br label %441

79:                                               ; preds = %65
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %14, align 4
  store i32 -1, i32* %13, align 4
  store float 1.000000e+00, float* %6, align 4
  %83 = load i32, i32* @lessbrushes, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %209, label %85

85:                                               ; preds = %79
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %200, %85
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @q1_numfaces, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %203

90:                                               ; preds = %86
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** @q1_dfaces, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** @q1_dnodes, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %96, %102
  br i1 %103, label %104, label %199

104:                                              ; preds = %90
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** @q1_dfaces, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i64 %107
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call float @Q1_FaceOnWinding(%struct.TYPE_22__* %108, i32 %111)
  store float %112, float* %5, align 4
  %113 = load float, float* %5, align 4
  %114 = load float, float* %6, align 4
  %115 = fcmp ogt float %113, %114
  br i1 %115, label %116, label %198

116:                                              ; preds = %104
  %117 = load i32, i32* %13, align 4
  %118 = icmp sge i32 %117, 0
  br i1 %118, label %119, label %195

119:                                              ; preds = %116
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** @q1_dfaces, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** @q1_dfaces, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %125, %131
  br i1 %132, label %133, label %195

133:                                              ; preds = %119
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** @q1_dfaces, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i64 %137
  %139 = call %struct.TYPE_19__* @Q1_SplitBrushWithFace(%struct.TYPE_19__* %134, %struct.TYPE_22__* %138)
  store %struct.TYPE_19__* %139, %struct.TYPE_19__** %21, align 8
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %141 = icmp ne %struct.TYPE_19__* %140, null
  br i1 %141, label %142, label %191

142:                                              ; preds = %133
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %144 = icmp ne %struct.TYPE_19__* %143, null
  br i1 %144, label %145, label %151

145:                                              ; preds = %142
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %147, align 8
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 1
  store %struct.TYPE_19__* %148, %struct.TYPE_19__** %150, align 8
  br label %155

151:                                              ; preds = %142
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %153, align 8
  store %struct.TYPE_19__* %154, %struct.TYPE_19__** %3, align 8
  br label %155

155:                                              ; preds = %151, %145
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %158 = icmp eq %struct.TYPE_19__* %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  store %struct.TYPE_19__* %160, %struct.TYPE_19__** %22, align 8
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  store %struct.TYPE_19__* %161, %struct.TYPE_19__** %19, align 8
  br label %162

162:                                              ; preds = %159, %155
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %164 = icmp ne %struct.TYPE_19__* %163, null
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 1
  store %struct.TYPE_19__* %166, %struct.TYPE_19__** %168, align 8
  br label %171

169:                                              ; preds = %162
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  store %struct.TYPE_19__* %170, %struct.TYPE_19__** %3, align 8
  br label %171

171:                                              ; preds = %169, %165
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %173 = call i32 @FreeBrush(%struct.TYPE_19__* %172)
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  store %struct.TYPE_19__* %174, %struct.TYPE_19__** %18, align 8
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_19__* %175, %struct.TYPE_19__** %22, align 8
  br label %176

176:                                              ; preds = %186, %171
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %178 = icmp ne %struct.TYPE_19__* %177, null
  br i1 %178, label %179, label %190

179:                                              ; preds = %176
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %181, align 8
  %183 = icmp ne %struct.TYPE_19__* %182, null
  br i1 %183, label %185, label %184

184:                                              ; preds = %179
  br label %190

185:                                              ; preds = %179
  br label %186

186:                                              ; preds = %185
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %188, align 8
  store %struct.TYPE_19__* %189, %struct.TYPE_19__** %22, align 8
  br label %176

190:                                              ; preds = %184, %176
  br label %203

191:                                              ; preds = %133
  %192 = load i32, i32* %11, align 4
  %193 = call i32 @Log_Write(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %192)
  br label %194

194:                                              ; preds = %191
  br label %197

195:                                              ; preds = %119, %116
  %196 = load i32, i32* %7, align 4
  store i32 %196, i32* %13, align 4
  br label %197

197:                                              ; preds = %195, %194
  br label %198

198:                                              ; preds = %197, %104
  br label %199

199:                                              ; preds = %198, %90
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %7, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %7, align 4
  br label %86

203:                                              ; preds = %190, %86
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* @q1_numfaces, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %203
  br label %444

208:                                              ; preds = %203
  br label %249

209:                                              ; preds = %79
  store i32 0, i32* %7, align 4
  br label %210

210:                                              ; preds = %245, %209
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* @q1_numfaces, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %248

214:                                              ; preds = %210
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** @q1_dfaces, align 8
  %216 = load i32, i32* %7, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** @q1_dnodes, align 8
  %222 = load i32, i32* %14, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp eq i64 %220, %226
  br i1 %227, label %228, label %244

228:                                              ; preds = %214
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** @q1_dfaces, align 8
  %230 = load i32, i32* %7, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %229, i64 %231
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = call float @Q1_FaceOnWinding(%struct.TYPE_22__* %232, i32 %235)
  store float %236, float* %5, align 4
  %237 = load float, float* %5, align 4
  %238 = load float, float* %6, align 4
  %239 = fcmp ogt float %237, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %228
  %241 = load float, float* %5, align 4
  store float %241, float* %6, align 4
  %242 = load i32, i32* %7, align 4
  store i32 %242, i32* %13, align 4
  br label %243

243:                                              ; preds = %240, %228
  br label %244

244:                                              ; preds = %243, %214
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %7, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %7, align 4
  br label %210

248:                                              ; preds = %210
  br label %249

249:                                              ; preds = %248, %208
  %250 = load i32, i32* %13, align 4
  %251 = icmp sge i32 %250, 0
  br i1 %251, label %252, label %431

252:                                              ; preds = %249
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** @q1_dfaces, align 8
  %254 = load i32, i32* %13, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  store i32 %258, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %259

259:                                              ; preds = %309, %252
  %260 = load i32, i32* %8, align 4
  %261 = icmp slt i32 %260, 4
  br i1 %261, label %262, label %312

262:                                              ; preds = %259
  %263 = load %struct.TYPE_20__*, %struct.TYPE_20__** @q1_texinfo, align 8
  %264 = load i32, i32* %9, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %266, i32 0, i32 2
  %268 = load i32**, i32*** %267, align 8
  %269 = getelementptr inbounds i32*, i32** %268, i64 0
  %270 = load i32*, i32** %269, align 8
  %271 = load i32, i32* %8, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.TYPE_23__*, %struct.TYPE_23__** @map_texinfo, align 8
  %276 = load i32, i32* %9, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %278, i32 0, i32 4
  %280 = load i32**, i32*** %279, align 8
  %281 = getelementptr inbounds i32*, i32** %280, i64 0
  %282 = load i32*, i32** %281, align 8
  %283 = load i32, i32* %8, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  store i32 %274, i32* %285, align 4
  %286 = load %struct.TYPE_20__*, %struct.TYPE_20__** @q1_texinfo, align 8
  %287 = load i32, i32* %9, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %289, i32 0, i32 2
  %291 = load i32**, i32*** %290, align 8
  %292 = getelementptr inbounds i32*, i32** %291, i64 1
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %8, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.TYPE_23__*, %struct.TYPE_23__** @map_texinfo, align 8
  %299 = load i32, i32* %9, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %301, i32 0, i32 4
  %303 = load i32**, i32*** %302, align 8
  %304 = getelementptr inbounds i32*, i32** %303, i64 1
  %305 = load i32*, i32** %304, align 8
  %306 = load i32, i32* %8, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  store i32 %297, i32* %308, align 4
  br label %309

309:                                              ; preds = %262
  %310 = load i32, i32* %8, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %8, align 4
  br label %259

312:                                              ; preds = %259
  %313 = load %struct.TYPE_23__*, %struct.TYPE_23__** @map_texinfo, align 8
  %314 = load i32, i32* %9, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %316, i32 0, i32 4
  %318 = load i32**, i32*** %317, align 8
  %319 = getelementptr inbounds i32*, i32** %318, i64 0
  %320 = load i32*, i32** %319, align 8
  %321 = call double @VectorLength(i32* %320)
  %322 = fcmp olt double %321, 1.000000e-02
  br i1 %322, label %323, label %334

323:                                              ; preds = %312
  %324 = load %struct.TYPE_23__*, %struct.TYPE_23__** @map_texinfo, align 8
  %325 = load i32, i32* %9, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %324, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %327, i32 0, i32 4
  %329 = load i32**, i32*** %328, align 8
  %330 = getelementptr inbounds i32*, i32** %329, i64 0
  %331 = load i32*, i32** %330, align 8
  %332 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0
  %333 = call i32 @memcpy(i32* %331, i32* %332, i32 16)
  br label %334

334:                                              ; preds = %323, %312
  %335 = load %struct.TYPE_23__*, %struct.TYPE_23__** @map_texinfo, align 8
  %336 = load i32, i32* %9, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %335, i64 %337
  %339 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %338, i32 0, i32 4
  %340 = load i32**, i32*** %339, align 8
  %341 = getelementptr inbounds i32*, i32** %340, i64 1
  %342 = load i32*, i32** %341, align 8
  %343 = call double @VectorLength(i32* %342)
  %344 = fcmp olt double %343, 1.000000e-02
  br i1 %344, label %345, label %356

345:                                              ; preds = %334
  %346 = load %struct.TYPE_23__*, %struct.TYPE_23__** @map_texinfo, align 8
  %347 = load i32, i32* %9, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %346, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %349, i32 0, i32 4
  %351 = load i32**, i32*** %350, align 8
  %352 = getelementptr inbounds i32*, i32** %351, i64 1
  %353 = load i32*, i32** %352, align 8
  %354 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0
  %355 = call i32 @memcpy(i32* %353, i32* %354, i32 16)
  br label %356

356:                                              ; preds = %345, %334
  %357 = load %struct.TYPE_20__*, %struct.TYPE_20__** @q1_texinfo, align 8
  %358 = load i32, i32* %9, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 8
  %363 = load %struct.TYPE_23__*, %struct.TYPE_23__** @map_texinfo, align 8
  %364 = load i32, i32* %9, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %363, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %366, i32 0, i32 3
  store i32 %362, i32* %367, align 8
  %368 = load %struct.TYPE_23__*, %struct.TYPE_23__** @map_texinfo, align 8
  %369 = load i32, i32* %9, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %368, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %371, i32 0, i32 2
  store i64 0, i64* %372, align 8
  %373 = load i64, i64* @q1_dtexdata, align 8
  %374 = inttoptr i64 %373 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %374, %struct.TYPE_18__** %16, align 8
  %375 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %376 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %375, i32 0, i32 0
  %377 = load i32*, i32** %376, align 8
  %378 = load %struct.TYPE_20__*, %struct.TYPE_20__** @q1_texinfo, align 8
  %379 = load i32, i32* %9, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %378, i64 %380
  %382 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = getelementptr inbounds i32, i32* %377, i64 %383
  %385 = load i32, i32* %384, align 4
  store i32 %385, i32* %12, align 4
  %386 = load i32, i32* %12, align 4
  %387 = load i32, i32* @q1_texdatasize, align 4
  %388 = icmp sgt i32 %386, %387
  br i1 %388, label %389, label %395

389:                                              ; preds = %356
  %390 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %391 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %390, i32 0, i32 0
  %392 = load i32*, i32** %391, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 0
  %394 = load i32, i32* %393, align 4
  store i32 %394, i32* %12, align 4
  br label %395

395:                                              ; preds = %389, %356
  %396 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %397 = bitcast %struct.TYPE_18__* %396 to i32*
  %398 = load i32, i32* %12, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %397, i64 %399
  %401 = bitcast i32* %400 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %401, %struct.TYPE_17__** %17, align 8
  %402 = load %struct.TYPE_23__*, %struct.TYPE_23__** @map_texinfo, align 8
  %403 = load i32, i32* %9, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %402, i64 %404
  %406 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 4
  %408 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %409 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 4
  %411 = call i32 @strcpy(i32 %407, i32 %410)
  %412 = load %struct.TYPE_23__*, %struct.TYPE_23__** @map_texinfo, align 8
  %413 = load i32, i32* %9, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %412, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %415, i32 0, i32 0
  store i32 -1, i32* %416, align 8
  %417 = load i32, i32* %9, align 4
  %418 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %419 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %418, i32 0, i32 2
  store i32 %417, i32* %419, align 4
  %420 = load i32, i32* %9, align 4
  %421 = load i32, i32* @map_numtexinfo, align 4
  %422 = icmp sgt i32 %420, %421
  br i1 %422, label %423, label %425

423:                                              ; preds = %395
  %424 = load i32, i32* %9, align 4
  store i32 %424, i32* @map_numtexinfo, align 4
  br label %425

425:                                              ; preds = %423, %395
  %426 = load i32, i32* @SFL_TEXTURED, align 4
  %427 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %428 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 4
  %430 = or i32 %429, %426
  store i32 %430, i32* %428, align 4
  br label %440

431:                                              ; preds = %249
  %432 = load i32, i32* @TEXINFO_NODE, align 4
  %433 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %434 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %433, i32 0, i32 2
  store i32 %432, i32* %434, align 4
  %435 = load i32, i32* @SFL_TEXTURED, align 4
  %436 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %437 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 4
  %439 = or i32 %438, %435
  store i32 %439, i32* %437, align 4
  br label %440

440:                                              ; preds = %431, %425
  br label %441

441:                                              ; preds = %440, %78
  %442 = load i32, i32* %10, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %10, align 4
  br label %59

444:                                              ; preds = %207, %59
  %445 = load i32, i32* %4, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %455, label %447

447:                                              ; preds = %444
  %448 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %449 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %450 = icmp ne %struct.TYPE_19__* %448, %449
  br i1 %450, label %451, label %455

451:                                              ; preds = %447
  %452 = load i32, i32* %11, align 4
  %453 = add nsw i32 %452, 1
  store i32 %453, i32* %11, align 4
  %454 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %453)
  br label %455

455:                                              ; preds = %451, %447, %444
  %456 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  store %struct.TYPE_19__* %456, %struct.TYPE_19__** %20, align 8
  br label %457

457:                                              ; preds = %455
  %458 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  store %struct.TYPE_19__* %458, %struct.TYPE_19__** %18, align 8
  br label %52

459:                                              ; preds = %52
  %460 = load i32, i32* %4, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %464, label %462

462:                                              ; preds = %459
  %463 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %464

464:                                              ; preds = %462, %459
  %465 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  ret %struct.TYPE_19__* %465
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @qprintf(i8*, ...) #2

declare dso_local float @Q1_FaceOnWinding(%struct.TYPE_22__*, i32) #2

declare dso_local %struct.TYPE_19__* @Q1_SplitBrushWithFace(%struct.TYPE_19__*, %struct.TYPE_22__*) #2

declare dso_local i32 @FreeBrush(%struct.TYPE_19__*) #2

declare dso_local i32 @Log_Write(i8*, i32) #2

declare dso_local double @VectorLength(i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @strcpy(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
