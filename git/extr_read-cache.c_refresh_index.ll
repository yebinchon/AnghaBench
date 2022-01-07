; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_refresh_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_refresh_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, i32, %struct.cache_entry** }
%struct.cache_entry = type { i32, i32, i32 }
%struct.pathspec = type { i32 }
%struct.progress = type { i32 }

@REFRESH_REALLY = common dso_local global i32 0, align 4
@REFRESH_UNMERGED = common dso_local global i32 0, align 4
@REFRESH_QUIET = common dso_local global i32 0, align 4
@REFRESH_IGNORE_MISSING = common dso_local global i32 0, align 4
@REFRESH_IGNORE_SUBMODULES = common dso_local global i32 0, align 4
@REFRESH_IN_PORCELAIN = common dso_local global i32 0, align 4
@CE_MATCH_REFRESH = common dso_local global i32 0, align 4
@CE_MATCH_IGNORE_VALID = common dso_local global i32 0, align 4
@CE_MATCH_IGNORE_MISSING = common dso_local global i32 0, align 4
@REFRESH_PROGRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Refresh index\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"M\09%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"%s: needs update\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"D\09%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"T\09%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"A\09%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"U\09%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"%s: needs merge\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CE_VALID = common dso_local global i32 0, align 4
@CE_UPDATE_IN_BASE = common dso_local global i32 0, align 4
@CE_ENTRY_CHANGED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@TYPE_CHANGED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"refresh index\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @refresh_index(%struct.index_state* %0, i32 %1, %struct.pathspec* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.index_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pathspec*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.progress*, align 8
  %27 = alloca %struct.cache_entry*, align 8
  %28 = alloca %struct.cache_entry*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  store %struct.index_state* %0, %struct.index_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.pathspec* %2, %struct.pathspec** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %12, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @REFRESH_REALLY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @REFRESH_UNMERGED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @REFRESH_QUIET, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @REFRESH_IGNORE_MISSING, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @REFRESH_IGNORE_SUBMODULES, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %17, align 4
  store i32 1, i32* %18, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @REFRESH_IN_PORCELAIN, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %19, align 4
  %61 = load i32, i32* @CE_MATCH_REFRESH, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %5
  %65 = load i32, i32* @CE_MATCH_IGNORE_VALID, align 4
  br label %67

66:                                               ; preds = %5
  br label %67

67:                                               ; preds = %66, %64
  %68 = phi i32 [ %65, %64 ], [ 0, %66 ]
  %69 = or i32 %61, %68
  %70 = load i32, i32* %16, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @CE_MATCH_IGNORE_MISSING, align 4
  br label %75

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi i32 [ %73, %72 ], [ 0, %74 ]
  %77 = or i32 %69, %76
  store i32 %77, i32* %20, align 4
  store %struct.progress* null, %struct.progress** %26, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @REFRESH_PROGRESS, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  %83 = call i64 @isatty(i32 2)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %87 = load %struct.index_state*, %struct.index_state** %6, align 8
  %88 = getelementptr inbounds %struct.index_state, %struct.index_state* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call %struct.progress* @start_delayed_progress(i32 %86, i32 %89)
  store %struct.progress* %90, %struct.progress** %26, align 8
  br label %91

91:                                               ; preds = %85, %82, %75
  %92 = call i32 (...) @trace_performance_enter()
  %93 = load i32, i32* %19, align 4
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0)
  store i8* %96, i8** %21, align 8
  %97 = load i32, i32* %19, align 4
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0)
  store i8* %100, i8** %22, align 8
  %101 = load i32, i32* %19, align 4
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0)
  store i8* %104, i8** %23, align 8
  %105 = load i32, i32* %19, align 4
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0)
  store i8* %108, i8** %24, align 8
  %109 = load i32, i32* %19, align 4
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0)
  store i8* %112, i8** %25, align 8
  %113 = load %struct.index_state*, %struct.index_state** %6, align 8
  %114 = load %struct.pathspec*, %struct.pathspec** %8, align 8
  %115 = call i32 @preload_index(%struct.index_state* %113, %struct.pathspec* %114, i32 0)
  store i32 0, i32* %11, align 4
  br label %116

116:                                              ; preds = %290, %91
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.index_state*, %struct.index_state** %6, align 8
  %119 = getelementptr inbounds %struct.index_state, %struct.index_state* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %293

122:                                              ; preds = %116
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %123 = load %struct.index_state*, %struct.index_state** %6, align 8
  %124 = getelementptr inbounds %struct.index_state, %struct.index_state* %123, i32 0, i32 2
  %125 = load %struct.cache_entry**, %struct.cache_entry*** %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %125, i64 %127
  %129 = load %struct.cache_entry*, %struct.cache_entry** %128, align 8
  store %struct.cache_entry* %129, %struct.cache_entry** %27, align 8
  %130 = load i32, i32* %17, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %122
  %133 = load %struct.cache_entry*, %struct.cache_entry** %27, align 8
  %134 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @S_ISGITLINK(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  br label %290

139:                                              ; preds = %132, %122
  %140 = load %struct.pathspec*, %struct.pathspec** %8, align 8
  %141 = icmp ne %struct.pathspec* %140, null
  br i1 %141, label %142, label %150

142:                                              ; preds = %139
  %143 = load %struct.index_state*, %struct.index_state** %6, align 8
  %144 = load %struct.cache_entry*, %struct.cache_entry** %27, align 8
  %145 = load %struct.pathspec*, %struct.pathspec** %8, align 8
  %146 = load i8*, i8** %9, align 8
  %147 = call i32 @ce_path_match(%struct.index_state* %143, %struct.cache_entry* %144, %struct.pathspec* %145, i8* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %142
  store i32 1, i32* %31, align 4
  br label %150

150:                                              ; preds = %149, %142, %139
  %151 = load %struct.cache_entry*, %struct.cache_entry** %27, align 8
  %152 = call i64 @ce_stage(%struct.cache_entry* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %200

154:                                              ; preds = %150
  br label %155

155:                                              ; preds = %179, %154
  %156 = load i32, i32* %11, align 4
  %157 = load %struct.index_state*, %struct.index_state** %6, align 8
  %158 = getelementptr inbounds %struct.index_state, %struct.index_state* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp slt i32 %156, %159
  br i1 %160, label %161, label %177

161:                                              ; preds = %155
  %162 = load %struct.index_state*, %struct.index_state** %6, align 8
  %163 = getelementptr inbounds %struct.index_state, %struct.index_state* %162, i32 0, i32 2
  %164 = load %struct.cache_entry**, %struct.cache_entry*** %163, align 8
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %164, i64 %166
  %168 = load %struct.cache_entry*, %struct.cache_entry** %167, align 8
  %169 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.cache_entry*, %struct.cache_entry** %27, align 8
  %172 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @strcmp(i32 %170, i32 %173)
  %175 = icmp ne i32 %174, 0
  %176 = xor i1 %175, true
  br label %177

177:                                              ; preds = %161, %155
  %178 = phi i1 [ false, %155 ], [ %176, %161 ]
  br i1 %178, label %179, label %182

179:                                              ; preds = %177
  %180 = load i32, i32* %11, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %11, align 4
  br label %155

182:                                              ; preds = %177
  %183 = load i32, i32* %11, align 4
  %184 = add nsw i32 %183, -1
  store i32 %184, i32* %11, align 4
  %185 = load i32, i32* %14, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  br label %290

188:                                              ; preds = %182
  %189 = load i32, i32* %31, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %199, label %191

191:                                              ; preds = %188
  %192 = load i8*, i8** %25, align 8
  %193 = load %struct.cache_entry*, %struct.cache_entry** %27, align 8
  %194 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %19, align 4
  %197 = load i8*, i8** %10, align 8
  %198 = call i32 @show_file(i8* %192, i32 %195, i32 %196, i32* %18, i8* %197)
  br label %199

199:                                              ; preds = %191, %188
  store i32 1, i32* %12, align 4
  br label %290

200:                                              ; preds = %150
  %201 = load i32, i32* %31, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  br label %290

204:                                              ; preds = %200
  %205 = load %struct.index_state*, %struct.index_state** %6, align 8
  %206 = load %struct.cache_entry*, %struct.cache_entry** %27, align 8
  %207 = load i32, i32* %20, align 4
  %208 = call %struct.cache_entry* @refresh_cache_ent(%struct.index_state* %205, %struct.cache_entry* %206, i32 %207, i32* %29, i32* %30)
  store %struct.cache_entry* %208, %struct.cache_entry** %28, align 8
  %209 = load %struct.cache_entry*, %struct.cache_entry** %28, align 8
  %210 = load %struct.cache_entry*, %struct.cache_entry** %27, align 8
  %211 = icmp eq %struct.cache_entry* %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %204
  br label %290

213:                                              ; preds = %204
  %214 = load %struct.progress*, %struct.progress** %26, align 8
  %215 = icmp ne %struct.progress* %214, null
  br i1 %215, label %216, label %220

216:                                              ; preds = %213
  %217 = load %struct.progress*, %struct.progress** %26, align 8
  %218 = load i32, i32* %11, align 4
  %219 = call i32 @display_progress(%struct.progress* %217, i32 %218)
  br label %220

220:                                              ; preds = %216, %213
  %221 = load %struct.cache_entry*, %struct.cache_entry** %28, align 8
  %222 = icmp ne %struct.cache_entry* %221, null
  br i1 %222, label %285, label %223

223:                                              ; preds = %220
  %224 = load i32, i32* %13, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %250

226:                                              ; preds = %223
  %227 = load i32, i32* %29, align 4
  %228 = load i32, i32* @EINVAL, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %250

230:                                              ; preds = %226
  %231 = load i32, i32* @CE_VALID, align 4
  %232 = xor i32 %231, -1
  %233 = load %struct.cache_entry*, %struct.cache_entry** %27, align 8
  %234 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = and i32 %235, %232
  store i32 %236, i32* %234, align 4
  %237 = load i32, i32* @CE_UPDATE_IN_BASE, align 4
  %238 = load %struct.cache_entry*, %struct.cache_entry** %27, align 8
  %239 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = or i32 %240, %237
  store i32 %241, i32* %239, align 4
  %242 = load %struct.index_state*, %struct.index_state** %6, align 8
  %243 = load %struct.cache_entry*, %struct.cache_entry** %27, align 8
  %244 = call i32 @mark_fsmonitor_invalid(%struct.index_state* %242, %struct.cache_entry* %243)
  %245 = load i32, i32* @CE_ENTRY_CHANGED, align 4
  %246 = load %struct.index_state*, %struct.index_state** %6, align 8
  %247 = getelementptr inbounds %struct.index_state, %struct.index_state* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 4
  br label %250

250:                                              ; preds = %230, %226, %223
  %251 = load i32, i32* %15, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %250
  br label %290

254:                                              ; preds = %250
  %255 = load i32, i32* %29, align 4
  %256 = load i32, i32* @ENOENT, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %260

258:                                              ; preds = %254
  %259 = load i8*, i8** %22, align 8
  store i8* %259, i8** %32, align 8
  br label %277

260:                                              ; preds = %254
  %261 = load %struct.cache_entry*, %struct.cache_entry** %27, align 8
  %262 = call i64 @ce_intent_to_add(%struct.cache_entry* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %260
  %265 = load i8*, i8** %24, align 8
  store i8* %265, i8** %32, align 8
  br label %276

266:                                              ; preds = %260
  %267 = load i32, i32* %30, align 4
  %268 = load i32, i32* @TYPE_CHANGED, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %266
  %272 = load i8*, i8** %23, align 8
  store i8* %272, i8** %32, align 8
  br label %275

273:                                              ; preds = %266
  %274 = load i8*, i8** %21, align 8
  store i8* %274, i8** %32, align 8
  br label %275

275:                                              ; preds = %273, %271
  br label %276

276:                                              ; preds = %275, %264
  br label %277

277:                                              ; preds = %276, %258
  %278 = load i8*, i8** %32, align 8
  %279 = load %struct.cache_entry*, %struct.cache_entry** %27, align 8
  %280 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* %19, align 4
  %283 = load i8*, i8** %10, align 8
  %284 = call i32 @show_file(i8* %278, i32 %281, i32 %282, i32* %18, i8* %283)
  store i32 1, i32* %12, align 4
  br label %290

285:                                              ; preds = %220
  %286 = load %struct.index_state*, %struct.index_state** %6, align 8
  %287 = load i32, i32* %11, align 4
  %288 = load %struct.cache_entry*, %struct.cache_entry** %28, align 8
  %289 = call i32 @replace_index_entry(%struct.index_state* %286, i32 %287, %struct.cache_entry* %288)
  br label %290

290:                                              ; preds = %285, %277, %253, %212, %203, %199, %187, %138
  %291 = load i32, i32* %11, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %11, align 4
  br label %116

293:                                              ; preds = %116
  %294 = load %struct.progress*, %struct.progress** %26, align 8
  %295 = icmp ne %struct.progress* %294, null
  br i1 %295, label %296, label %303

296:                                              ; preds = %293
  %297 = load %struct.progress*, %struct.progress** %26, align 8
  %298 = load %struct.index_state*, %struct.index_state** %6, align 8
  %299 = getelementptr inbounds %struct.index_state, %struct.index_state* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = call i32 @display_progress(%struct.progress* %297, i32 %300)
  %302 = call i32 @stop_progress(%struct.progress** %26)
  br label %303

303:                                              ; preds = %296, %293
  %304 = call i32 @trace_performance_leave(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %305 = load i32, i32* %12, align 4
  ret i32 %305
}

declare dso_local i64 @isatty(i32) #1

declare dso_local %struct.progress* @start_delayed_progress(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @trace_performance_enter(...) #1

declare dso_local i32 @preload_index(%struct.index_state*, %struct.pathspec*, i32) #1

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local i32 @ce_path_match(%struct.index_state*, %struct.cache_entry*, %struct.pathspec*, i8*) #1

declare dso_local i64 @ce_stage(%struct.cache_entry*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @show_file(i8*, i32, i32, i32*, i8*) #1

declare dso_local %struct.cache_entry* @refresh_cache_ent(%struct.index_state*, %struct.cache_entry*, i32, i32*, i32*) #1

declare dso_local i32 @display_progress(%struct.progress*, i32) #1

declare dso_local i32 @mark_fsmonitor_invalid(%struct.index_state*, %struct.cache_entry*) #1

declare dso_local i64 @ce_intent_to_add(%struct.cache_entry*) #1

declare dso_local i32 @replace_index_entry(%struct.index_state*, i32, %struct.cache_entry*) #1

declare dso_local i32 @stop_progress(%struct.progress**) #1

declare dso_local i32 @trace_performance_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
