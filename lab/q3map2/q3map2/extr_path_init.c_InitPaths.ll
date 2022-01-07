; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_path_init.c_InitPaths.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_path_init.c_InitPaths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i32 }

@MAX_OS_PATH = common dso_local global i32 0, align 4
@SYS_VRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"--- InitPaths ---\0A\00", align 1
@games = common dso_local global %struct.TYPE_4__* null, align 8
@game = common dso_local global %struct.TYPE_4__* null, align 8
@numBasePaths = common dso_local global i32 0, align 4
@numGamePaths = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"-game\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Out of arguments: No game specified after %s\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"-fs_basepath\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Out of arguments: No path specified after %s.\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"-fs_game\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Searching for \22%s\22 in \22%s\22 (%d)...\0A\00", align 1
@installPath = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"Failed to find a valid base path.\00", align 1
@MAX_BASE_PATHS = common dso_local global i32 0, align 4
@MAX_GAME_PATHS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"%s/%s/\00", align 1
@basePaths = common dso_local global i8** null, align 8
@gamePaths = common dso_local global i8** null, align 8
@.str.9 = private unnamed_addr constant [10 x i8] c"quakelive\00", align 1
@unz_GAME_QL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitPaths(i32* %0, i8** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8** %1, i8*** %4, align 8
  %12 = load i32, i32* @MAX_OS_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %10, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %11, align 8
  %16 = load i32, i32* @SYS_VRB, align 4
  %17 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %18 = load i8**, i8*** %4, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @LokiInitPaths(i8* %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @games, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 0
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** @game, align 8
  store i32 0, i32* @numBasePaths, align 4
  store i32 0, i32* @numGamePaths, align 4
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %160, %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %163

29:                                               ; preds = %24
  %30 = load i8**, i8*** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %160

37:                                               ; preds = %29
  %38 = load i8**, i8*** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %81

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %47, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load i8**, i8*** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %52, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %51, %45
  %60 = load i8**, i8*** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %60, i64 %63
  store i8* null, i8** %64, align 8
  %65 = load i8**, i8*** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call %struct.TYPE_4__* @GetGame(i8* %69)
  store %struct.TYPE_4__* %70, %struct.TYPE_4__** @game, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @game, align 8
  %72 = icmp eq %struct.TYPE_4__* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %59
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @games, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 0
  store %struct.TYPE_4__* %75, %struct.TYPE_4__** @game, align 8
  br label %76

76:                                               ; preds = %73, %59
  %77 = load i8**, i8*** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  store i8* null, i8** %80, align 8
  br label %159

81:                                               ; preds = %37
  %82 = load i8**, i8*** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @strcmp(i8* %86, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %119

89:                                               ; preds = %81
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  %92 = load i32*, i32** %3, align 8
  %93 = load i32, i32* %92, align 4
  %94 = icmp sge i32 %91, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %89
  %96 = load i8**, i8*** %4, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %96, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %95, %89
  %104 = load i8**, i8*** %4, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %104, i64 %107
  store i8* null, i8** %108, align 8
  %109 = load i8**, i8*** %4, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @AddBasePath(i8* %113)
  %115 = load i8**, i8*** %4, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  store i8* null, i8** %118, align 8
  br label %158

119:                                              ; preds = %81
  %120 = load i8**, i8*** %4, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = call i64 @strcmp(i8* %124, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %157

127:                                              ; preds = %119
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %5, align 4
  %130 = load i32*, i32** %3, align 8
  %131 = load i32, i32* %130, align 4
  %132 = icmp sge i32 %129, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %127
  %134 = load i8**, i8*** %4, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %134, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8* %139)
  br label %141

141:                                              ; preds = %133, %127
  %142 = load i8**, i8*** %4, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %142, i64 %145
  store i8* null, i8** %146, align 8
  %147 = load i8**, i8*** %4, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @AddGamePath(i8* %151)
  %153 = load i8**, i8*** %4, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %153, i64 %155
  store i8* null, i8** %156, align 8
  br label %157

157:                                              ; preds = %141, %119
  br label %158

158:                                              ; preds = %157, %103
  br label %159

159:                                              ; preds = %158, %76
  br label %160

160:                                              ; preds = %159, %36
  %161 = load i32, i32* %5, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %5, align 4
  br label %24

163:                                              ; preds = %24
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %164

164:                                              ; preds = %215, %163
  %165 = load i32, i32* %5, align 4
  %166 = load i32*, i32** %3, align 8
  %167 = load i32, i32* %166, align 4
  %168 = icmp slt i32 %165, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %164
  %170 = load i32, i32* %6, align 4
  %171 = load i32*, i32** %3, align 8
  %172 = load i32, i32* %171, align 4
  %173 = icmp slt i32 %170, %172
  br label %174

174:                                              ; preds = %169, %164
  %175 = phi i1 [ false, %164 ], [ %173, %169 ]
  br i1 %175, label %176, label %220

176:                                              ; preds = %174
  br label %177

177:                                              ; preds = %192, %176
  %178 = load i32, i32* %6, align 4
  %179 = load i32*, i32** %3, align 8
  %180 = load i32, i32* %179, align 4
  %181 = icmp slt i32 %178, %180
  br i1 %181, label %182, label %189

182:                                              ; preds = %177
  %183 = load i8**, i8*** %4, align 8
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8*, i8** %183, i64 %185
  %187 = load i8*, i8** %186, align 8
  %188 = icmp eq i8* %187, null
  br label %189

189:                                              ; preds = %182, %177
  %190 = phi i1 [ false, %177 ], [ %188, %182 ]
  br i1 %190, label %191, label %195

191:                                              ; preds = %189
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %6, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %6, align 4
  br label %177

195:                                              ; preds = %189
  %196 = load i8**, i8*** %4, align 8
  %197 = load i32, i32* %6, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8*, i8** %196, i64 %198
  %200 = load i8*, i8** %199, align 8
  %201 = load i8**, i8*** %4, align 8
  %202 = load i32, i32* %5, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8*, i8** %201, i64 %203
  store i8* %200, i8** %204, align 8
  %205 = load i8**, i8*** %4, align 8
  %206 = load i32, i32* %5, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8*, i8** %205, i64 %207
  %209 = load i8*, i8** %208, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %211, label %214

211:                                              ; preds = %195
  %212 = load i32, i32* %7, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %7, align 4
  br label %214

214:                                              ; preds = %211, %195
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %5, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %5, align 4
  %218 = load i32, i32* %6, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %6, align 4
  br label %164

220:                                              ; preds = %174
  %221 = load i32, i32* %7, align 4
  %222 = load i32*, i32** %3, align 8
  store i32 %221, i32* %222, align 4
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** @game, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 @AddGamePath(i8* %225)
  %227 = load i32, i32* @numBasePaths, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %319

229:                                              ; preds = %220
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** @game, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 1
  %232 = load i8*, i8** %231, align 8
  %233 = call i32 @strlen(i8* %232)
  store i32 %233, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %234

234:                                              ; preds = %304, %229
  %235 = load i32, i32* %5, align 4
  %236 = load i32*, i32** %3, align 8
  %237 = load i32, i32* %236, align 4
  %238 = icmp slt i32 %235, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %234
  %240 = load i32, i32* @numBasePaths, align 4
  %241 = icmp eq i32 %240, 0
  br label %242

242:                                              ; preds = %239, %234
  %243 = phi i1 [ false, %234 ], [ %241, %239 ]
  br i1 %243, label %244, label %307

244:                                              ; preds = %242
  %245 = load i8**, i8*** %4, align 8
  %246 = load i32, i32* %5, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8*, i8** %245, i64 %247
  %249 = load i8*, i8** %248, align 8
  %250 = call i32 @strcpy(i8* %15, i8* %249)
  %251 = call i32 @CleanPath(i8* %15)
  %252 = call i32 @strlen(i8* %15)
  store i32 %252, i32* %8, align 4
  %253 = load i32, i32* @SYS_VRB, align 4
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** @game, align 8
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 1
  %256 = load i8*, i8** %255, align 8
  %257 = load i32, i32* %5, align 4
  %258 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %253, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* %256, i8* %15, i32 %257)
  store i32 0, i32* %6, align 4
  br label %259

259:                                              ; preds = %300, %244
  %260 = load i32, i32* %6, align 4
  %261 = load i32, i32* %8, align 4
  %262 = load i32, i32* %9, align 4
  %263 = sub nsw i32 %261, %262
  %264 = icmp slt i32 %260, %263
  br i1 %264, label %265, label %303

265:                                              ; preds = %259
  %266 = load i32, i32* %6, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8, i8* %15, i64 %267
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** @game, align 8
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 1
  %271 = load i8*, i8** %270, align 8
  %272 = load i32, i32* %9, align 4
  %273 = call i64 @Q_strncasecmp(i8* %268, i8* %271, i32 %272)
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %275, label %299

275:                                              ; preds = %265
  br label %276

276:                                              ; preds = %293, %275
  %277 = load i32, i32* %6, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %6, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8, i8* %15, i64 %279
  %281 = load i8, i8* %280, align 1
  %282 = sext i8 %281 to i32
  %283 = icmp ne i32 %282, 47
  br i1 %283, label %284, label %291

284:                                              ; preds = %276
  %285 = load i32, i32* %6, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8, i8* %15, i64 %286
  %288 = load i8, i8* %287, align 1
  %289 = sext i8 %288 to i32
  %290 = icmp ne i32 %289, 0
  br label %291

291:                                              ; preds = %284, %276
  %292 = phi i1 [ false, %276 ], [ %290, %284 ]
  br i1 %292, label %293, label %294

293:                                              ; preds = %291
  br label %276

294:                                              ; preds = %291
  %295 = load i32, i32* %6, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i8, i8* %15, i64 %296
  store i8 0, i8* %297, align 1
  %298 = call i32 @AddBasePath(i8* %15)
  br label %303

299:                                              ; preds = %265
  br label %300

300:                                              ; preds = %299
  %301 = load i32, i32* %6, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %6, align 4
  br label %259

303:                                              ; preds = %294, %259
  br label %304

304:                                              ; preds = %303
  %305 = load i32, i32* %5, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %5, align 4
  br label %234

307:                                              ; preds = %242
  %308 = load i32, i32* @numBasePaths, align 4
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %313

310:                                              ; preds = %307
  %311 = load i8*, i8** @installPath, align 8
  %312 = call i32 @AddBasePath(i8* %311)
  br label %313

313:                                              ; preds = %310, %307
  %314 = load i32, i32* @numBasePaths, align 4
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %313
  %317 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %318

318:                                              ; preds = %316, %313
  br label %319

319:                                              ; preds = %318, %220
  %320 = load %struct.TYPE_4__*, %struct.TYPE_4__** @game, align 8
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 8
  %323 = call i32 @AddHomeBasePath(i32 %322)
  %324 = load i32, i32* @numBasePaths, align 4
  %325 = load i32, i32* @MAX_BASE_PATHS, align 4
  %326 = icmp sgt i32 %324, %325
  br i1 %326, label %327, label %329

327:                                              ; preds = %319
  %328 = load i32, i32* @MAX_BASE_PATHS, align 4
  store i32 %328, i32* @numBasePaths, align 4
  br label %329

329:                                              ; preds = %327, %319
  %330 = load i32, i32* @numGamePaths, align 4
  %331 = load i32, i32* @MAX_GAME_PATHS, align 4
  %332 = icmp sgt i32 %330, %331
  br i1 %332, label %333, label %335

333:                                              ; preds = %329
  %334 = load i32, i32* @MAX_GAME_PATHS, align 4
  store i32 %334, i32* @numGamePaths, align 4
  br label %335

335:                                              ; preds = %333, %329
  store i32 0, i32* %6, align 4
  br label %336

336:                                              ; preds = %370, %335
  %337 = load i32, i32* %6, align 4
  %338 = load i32, i32* @numGamePaths, align 4
  %339 = icmp slt i32 %337, %338
  br i1 %339, label %340, label %373

340:                                              ; preds = %336
  store i32 0, i32* %5, align 4
  br label %341

341:                                              ; preds = %366, %340
  %342 = load i32, i32* %5, align 4
  %343 = load i32, i32* @numBasePaths, align 4
  %344 = icmp slt i32 %342, %343
  br i1 %344, label %345, label %369

345:                                              ; preds = %341
  %346 = load i8**, i8*** @basePaths, align 8
  %347 = load i32, i32* %5, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i8*, i8** %346, i64 %348
  %350 = load i8*, i8** %349, align 8
  %351 = load i8**, i8*** @gamePaths, align 8
  %352 = load i32, i32* %6, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i8*, i8** %351, i64 %353
  %355 = load i8*, i8** %354, align 8
  %356 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %350, i8* %355)
  %357 = load %struct.TYPE_4__*, %struct.TYPE_4__** @game, align 8
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 2
  %359 = load i8*, i8** %358, align 8
  %360 = call i64 @strcmp(i8* %359, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %361 = icmp eq i64 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %345
  store i32 1, i32* @unz_GAME_QL, align 4
  br label %364

363:                                              ; preds = %345
  store i32 0, i32* @unz_GAME_QL, align 4
  br label %364

364:                                              ; preds = %363, %362
  %365 = call i32 @vfsInitDirectory(i8* %15)
  br label %366

366:                                              ; preds = %364
  %367 = load i32, i32* %5, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %5, align 4
  br label %341

369:                                              ; preds = %341
  br label %370

370:                                              ; preds = %369
  %371 = load i32, i32* %6, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %6, align 4
  br label %336

373:                                              ; preds = %336
  %374 = call i32 @Sys_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %375 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %375)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Sys_FPrintf(i32, i8*, ...) #2

declare dso_local i32 @LokiInitPaths(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @Error(i8*, ...) #2

declare dso_local %struct.TYPE_4__* @GetGame(i8*) #2

declare dso_local i32 @AddBasePath(i8*) #2

declare dso_local i32 @AddGamePath(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @CleanPath(i8*) #2

declare dso_local i64 @Q_strncasecmp(i8*, i8*, i32) #2

declare dso_local i32 @AddHomeBasePath(i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @vfsInitDirectory(i8*) #2

declare dso_local i32 @Sys_Printf(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
