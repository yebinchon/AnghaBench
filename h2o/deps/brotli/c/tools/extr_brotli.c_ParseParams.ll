; ModuleID = '/home/carl/AnghaBench/h2o/deps/brotli/c/tools/extr_brotli.c_ParseParams.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/brotli/c/tools/extr_brotli.c_ParseParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8**, i32*, i8, i8*, i64, i8*, i64, i64, i32, i32, i8*, i8*, i8*, i8*, i8* }

@BROTLI_FALSE = common dso_local global i8* null, align 8
@MAX_OPTIONS = common dso_local global i32 0, align 4
@COMMAND_INVALID = common dso_local global i64 0, align 8
@BROTLI_TRUE = common dso_local global i8* null, align 8
@COMMAND_DECOMPRESS = common dso_local global i64 0, align 8
@COMMAND_HELP = common dso_local global i64 0, align 8
@COMMAND_TEST_INTEGRITY = common dso_local global i64 0, align 8
@COMMAND_VERSION = common dso_local global i64 0, align 8
@BROTLI_MIN_QUALITY = common dso_local global i32 0, align 4
@BROTLI_MAX_QUALITY = common dso_local global i32 0, align 4
@BROTLI_MAX_WINDOW_BITS = common dso_local global i32 0, align 4
@BROTLI_MIN_WINDOW_BITS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"best\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"decompress\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"keep\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"no-copy-stat\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"rm\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"lgwin\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"quality\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"suffix\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*)* @ParseParams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ParseParams(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8, align 1
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %4, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i8**, i8*** %28, align 8
  store i8** %29, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i64 1, i64* %9, align 8
  %30 = load i8*, i8** @BROTLI_FALSE, align 8
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** @BROTLI_FALSE, align 8
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** @BROTLI_FALSE, align 8
  store i8* %32, i8** %12, align 8
  %33 = load i8*, i8** @BROTLI_FALSE, align 8
  store i8* %33, i8** %13, align 8
  %34 = load i8*, i8** @BROTLI_FALSE, align 8
  store i8* %34, i8** %14, align 8
  %35 = load i8*, i8** @BROTLI_FALSE, align 8
  store i8* %35, i8** %15, align 8
  %36 = load i8*, i8** @BROTLI_FALSE, align 8
  store i8* %36, i8** %16, align 8
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @ParseAlias(i8* %39)
  store i64 %40, i64* %17, align 8
  store i32 1, i32* %6, align 4
  br label %41

41:                                               ; preds = %723, %1
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %726

45:                                               ; preds = %41
  %46 = load i8**, i8*** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %18, align 8
  %51 = load i8*, i8** %18, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i8*, i8** %18, align 8
  %55 = call i64 @strlen(i8* %54)
  br label %57

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %53
  %58 = phi i64 [ %55, %53 ], [ 0, %56 ]
  store i64 %58, i64* %19, align 8
  %59 = load i64, i64* %19, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  store i32 %62, i32* %69, align 4
  br label %723

70:                                               ; preds = %57
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @MAX_OPTIONS, align 4
  %73 = sub nsw i32 %72, 2
  %74 = icmp sgt i32 %71, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %76, i64* %2, align 8
  br label %788

77:                                               ; preds = %70
  %78 = load i8*, i8** %16, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %89, label %80

80:                                               ; preds = %77
  %81 = load i8*, i8** %18, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 45
  br i1 %85, label %89, label %86

86:                                               ; preds = %80
  %87 = load i64, i64* %19, align 8
  %88 = icmp eq i64 %87, 1
  br i1 %88, label %89, label %98

89:                                               ; preds = %86, %80, %77
  %90 = load i64, i64* %8, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %8, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* %19, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i64, i64* %19, align 8
  store i64 %96, i64* %9, align 8
  br label %97

97:                                               ; preds = %95, %89
  br label %723

98:                                               ; preds = %86
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  store i32 %99, i32* %106, align 4
  %107 = load i64, i64* %19, align 8
  %108 = icmp eq i64 %107, 2
  br i1 %108, label %109, label %117

109:                                              ; preds = %98
  %110 = load i8*, i8** %18, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 45
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %116, i8** %16, align 8
  br label %723

117:                                              ; preds = %109, %98
  %118 = load i8*, i8** %18, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp ne i32 %121, 45
  br i1 %122, label %123, label %461

123:                                              ; preds = %117
  store i64 1, i64* %20, align 8
  br label %124

124:                                              ; preds = %457, %123
  %125 = load i64, i64* %20, align 8
  %126 = load i64, i64* %19, align 8
  %127 = icmp ult i64 %125, %126
  br i1 %127, label %128, label %460

128:                                              ; preds = %124
  %129 = load i8*, i8** %18, align 8
  %130 = load i64, i64* %20, align 8
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  %132 = load i8, i8* %131, align 1
  store i8 %132, i8* %21, align 1
  %133 = load i8, i8* %21, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp sge i32 %134, 48
  br i1 %135, label %136, label %153

136:                                              ; preds = %128
  %137 = load i8, i8* %21, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp sle i32 %138, 57
  br i1 %139, label %140, label %153

140:                                              ; preds = %136
  %141 = load i8*, i8** %11, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %144, i64* %2, align 8
  br label %788

145:                                              ; preds = %140
  %146 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %146, i8** %11, align 8
  %147 = load i8, i8* %21, align 1
  %148 = sext i8 %147 to i32
  %149 = sub nsw i32 %148, 48
  %150 = trunc i32 %149 to i8
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 3
  store i8 %150, i8* %152, align 8
  br label %457

153:                                              ; preds = %136, %128
  %154 = load i8, i8* %21, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 99
  br i1 %156, label %157, label %167

157:                                              ; preds = %153
  %158 = load i8*, i8** %12, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %161, i64* %2, align 8
  br label %788

162:                                              ; preds = %157
  %163 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %163, i8** %12, align 8
  %164 = load i8*, i8** @BROTLI_TRUE, align 8
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 11
  store i8* %164, i8** %166, align 8
  br label %457

167:                                              ; preds = %153
  %168 = load i8, i8* %21, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 100
  br i1 %170, label %171, label %179

171:                                              ; preds = %167
  %172 = load i8*, i8** %10, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %175, i64* %2, align 8
  br label %788

176:                                              ; preds = %171
  %177 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %177, i8** %10, align 8
  %178 = load i64, i64* @COMMAND_DECOMPRESS, align 8
  store i64 %178, i64* %17, align 8
  br label %457

179:                                              ; preds = %167
  %180 = load i8, i8* %21, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 102
  br i1 %182, label %183, label %194

183:                                              ; preds = %179
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 15
  %186 = load i8*, i8** %185, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %190

188:                                              ; preds = %183
  %189 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %189, i64* %2, align 8
  br label %788

190:                                              ; preds = %183
  %191 = load i8*, i8** @BROTLI_TRUE, align 8
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 15
  store i8* %191, i8** %193, align 8
  br label %457

194:                                              ; preds = %179
  %195 = load i8, i8* %21, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp eq i32 %196, 104
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = load i64, i64* @COMMAND_HELP, align 8
  store i64 %199, i64* %2, align 8
  br label %788

200:                                              ; preds = %194
  %201 = load i8, i8* %21, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 106
  br i1 %203, label %208, label %204

204:                                              ; preds = %200
  %205 = load i8, i8* %21, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %206, 107
  br i1 %207, label %208, label %222

208:                                              ; preds = %204, %200
  %209 = load i8*, i8** %13, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %211, label %213

211:                                              ; preds = %208
  %212 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %212, i64* %2, align 8
  br label %788

213:                                              ; preds = %208
  %214 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %214, i8** %13, align 8
  %215 = load i8, i8* %21, align 1
  %216 = sext i8 %215 to i32
  %217 = icmp eq i32 %216, 106
  %218 = zext i1 %217 to i32
  %219 = call i8* @TO_BROTLI_BOOL(i32 %218)
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 13
  store i8* %219, i8** %221, align 8
  br label %457

222:                                              ; preds = %204
  %223 = load i8, i8* %21, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp eq i32 %224, 110
  br i1 %225, label %226, label %237

226:                                              ; preds = %222
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 14
  %229 = load i8*, i8** %228, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %233, label %231

231:                                              ; preds = %226
  %232 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %232, i64* %2, align 8
  br label %788

233:                                              ; preds = %226
  %234 = load i8*, i8** @BROTLI_FALSE, align 8
  %235 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 14
  store i8* %234, i8** %236, align 8
  br label %457

237:                                              ; preds = %222
  %238 = load i8, i8* %21, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp eq i32 %239, 116
  br i1 %240, label %241, label %249

241:                                              ; preds = %237
  %242 = load i8*, i8** %10, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %244, label %246

244:                                              ; preds = %241
  %245 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %245, i64* %2, align 8
  br label %788

246:                                              ; preds = %241
  %247 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %247, i8** %10, align 8
  %248 = load i64, i64* @COMMAND_TEST_INTEGRITY, align 8
  store i64 %248, i64* %17, align 8
  br label %457

249:                                              ; preds = %237
  %250 = load i8, i8* %21, align 1
  %251 = sext i8 %250 to i32
  %252 = icmp eq i32 %251, 118
  br i1 %252, label %253, label %264

253:                                              ; preds = %249
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 12
  %256 = load i8*, i8** %255, align 8
  %257 = icmp ne i8* %256, null
  br i1 %257, label %258, label %260

258:                                              ; preds = %253
  %259 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %259, i64* %2, align 8
  br label %788

260:                                              ; preds = %253
  %261 = load i8*, i8** @BROTLI_TRUE, align 8
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 12
  store i8* %261, i8** %263, align 8
  br label %457

264:                                              ; preds = %249
  %265 = load i8, i8* %21, align 1
  %266 = sext i8 %265 to i32
  %267 = icmp eq i32 %266, 86
  br i1 %267, label %268, label %270

268:                                              ; preds = %264
  %269 = load i64, i64* @COMMAND_VERSION, align 8
  store i64 %269, i64* %2, align 8
  br label %788

270:                                              ; preds = %264
  %271 = load i8, i8* %21, align 1
  %272 = sext i8 %271 to i32
  %273 = icmp eq i32 %272, 90
  br i1 %273, label %274, label %283

274:                                              ; preds = %270
  %275 = load i8*, i8** %11, align 8
  %276 = icmp ne i8* %275, null
  br i1 %276, label %277, label %279

277:                                              ; preds = %274
  %278 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %278, i64* %2, align 8
  br label %788

279:                                              ; preds = %274
  %280 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %280, i8** %11, align 8
  %281 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %281, i32 0, i32 3
  store i8 11, i8* %282, align 8
  br label %457

283:                                              ; preds = %270
  br label %284

284:                                              ; preds = %283
  br label %285

285:                                              ; preds = %284
  br label %286

286:                                              ; preds = %285
  br label %287

287:                                              ; preds = %286
  br label %288

288:                                              ; preds = %287
  br label %289

289:                                              ; preds = %288
  br label %290

290:                                              ; preds = %289
  br label %291

291:                                              ; preds = %290
  br label %292

292:                                              ; preds = %291
  br label %293

293:                                              ; preds = %292
  %294 = load i8, i8* %21, align 1
  %295 = sext i8 %294 to i32
  %296 = icmp ne i32 %295, 111
  br i1 %296, label %297, label %315

297:                                              ; preds = %293
  %298 = load i8, i8* %21, align 1
  %299 = sext i8 %298 to i32
  %300 = icmp ne i32 %299, 113
  br i1 %300, label %301, label %315

301:                                              ; preds = %297
  %302 = load i8, i8* %21, align 1
  %303 = sext i8 %302 to i32
  %304 = icmp ne i32 %303, 119
  br i1 %304, label %305, label %315

305:                                              ; preds = %301
  %306 = load i8, i8* %21, align 1
  %307 = sext i8 %306 to i32
  %308 = icmp ne i32 %307, 68
  br i1 %308, label %309, label %315

309:                                              ; preds = %305
  %310 = load i8, i8* %21, align 1
  %311 = sext i8 %310 to i32
  %312 = icmp ne i32 %311, 83
  br i1 %312, label %313, label %315

313:                                              ; preds = %309
  %314 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %314, i64* %2, align 8
  br label %788

315:                                              ; preds = %309, %305, %301, %297, %293
  %316 = load i64, i64* %20, align 8
  %317 = add i64 %316, 1
  %318 = load i64, i64* %19, align 8
  %319 = icmp ne i64 %317, %318
  br i1 %319, label %320, label %322

320:                                              ; preds = %315
  %321 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %321, i64* %2, align 8
  br label %788

322:                                              ; preds = %315
  %323 = load i32, i32* %6, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %6, align 4
  %325 = load i32, i32* %6, align 4
  %326 = load i32, i32* %4, align 4
  %327 = icmp eq i32 %325, %326
  br i1 %327, label %345, label %328

328:                                              ; preds = %322
  %329 = load i8**, i8*** %5, align 8
  %330 = load i32, i32* %6, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i8*, i8** %329, i64 %331
  %333 = load i8*, i8** %332, align 8
  %334 = icmp ne i8* %333, null
  br i1 %334, label %335, label %345

335:                                              ; preds = %328
  %336 = load i8**, i8*** %5, align 8
  %337 = load i32, i32* %6, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i8*, i8** %336, i64 %338
  %340 = load i8*, i8** %339, align 8
  %341 = getelementptr inbounds i8, i8* %340, i64 0
  %342 = load i8, i8* %341, align 1
  %343 = sext i8 %342 to i32
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %347

345:                                              ; preds = %335, %328, %322
  %346 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %346, i64* %2, align 8
  br label %788

347:                                              ; preds = %335
  %348 = load i32, i32* %6, align 4
  %349 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %349, i32 0, i32 2
  %351 = load i32*, i32** %350, align 8
  %352 = load i32, i32* %7, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %7, align 4
  %354 = sext i32 %352 to i64
  %355 = getelementptr inbounds i32, i32* %351, i64 %354
  store i32 %348, i32* %355, align 4
  %356 = load i8, i8* %21, align 1
  %357 = sext i8 %356 to i32
  %358 = icmp eq i32 %357, 111
  br i1 %358, label %359, label %372

359:                                              ; preds = %347
  %360 = load i8*, i8** %12, align 8
  %361 = icmp ne i8* %360, null
  br i1 %361, label %362, label %364

362:                                              ; preds = %359
  %363 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %363, i64* %2, align 8
  br label %788

364:                                              ; preds = %359
  %365 = load i8**, i8*** %5, align 8
  %366 = load i32, i32* %6, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i8*, i8** %365, i64 %367
  %369 = load i8*, i8** %368, align 8
  %370 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %371 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %370, i32 0, i32 4
  store i8* %369, i8** %371, align 8
  br label %456

372:                                              ; preds = %347
  %373 = load i8, i8* %21, align 1
  %374 = sext i8 %373 to i32
  %375 = icmp eq i32 %374, 113
  br i1 %375, label %376, label %398

376:                                              ; preds = %372
  %377 = load i8*, i8** %11, align 8
  %378 = icmp ne i8* %377, null
  br i1 %378, label %379, label %381

379:                                              ; preds = %376
  %380 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %380, i64* %2, align 8
  br label %788

381:                                              ; preds = %376
  %382 = load i8**, i8*** %5, align 8
  %383 = load i32, i32* %6, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i8*, i8** %382, i64 %384
  %386 = load i8*, i8** %385, align 8
  %387 = load i32, i32* @BROTLI_MIN_QUALITY, align 4
  %388 = load i32, i32* @BROTLI_MAX_QUALITY, align 4
  %389 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %390 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %389, i32 0, i32 3
  %391 = bitcast i8* %390 to i64*
  %392 = call i8* @ParseInt(i8* %386, i32 %387, i32 %388, i64* %391)
  store i8* %392, i8** %11, align 8
  %393 = load i8*, i8** %11, align 8
  %394 = icmp ne i8* %393, null
  br i1 %394, label %397, label %395

395:                                              ; preds = %381
  %396 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %396, i64* %2, align 8
  br label %788

397:                                              ; preds = %381
  br label %455

398:                                              ; preds = %372
  %399 = load i8, i8* %21, align 1
  %400 = sext i8 %399 to i32
  %401 = icmp eq i32 %400, 119
  br i1 %401, label %402, label %435

402:                                              ; preds = %398
  %403 = load i8*, i8** %14, align 8
  %404 = icmp ne i8* %403, null
  br i1 %404, label %405, label %407

405:                                              ; preds = %402
  %406 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %406, i64* %2, align 8
  br label %788

407:                                              ; preds = %402
  %408 = load i8**, i8*** %5, align 8
  %409 = load i32, i32* %6, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i8*, i8** %408, i64 %410
  %412 = load i8*, i8** %411, align 8
  %413 = load i32, i32* @BROTLI_MAX_WINDOW_BITS, align 4
  %414 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %415 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %414, i32 0, i32 5
  %416 = call i8* @ParseInt(i8* %412, i32 0, i32 %413, i64* %415)
  store i8* %416, i8** %14, align 8
  %417 = load i8*, i8** %14, align 8
  %418 = icmp ne i8* %417, null
  br i1 %418, label %421, label %419

419:                                              ; preds = %407
  %420 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %420, i64* %2, align 8
  br label %788

421:                                              ; preds = %407
  %422 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %423 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %422, i32 0, i32 5
  %424 = load i64, i64* %423, align 8
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %434

426:                                              ; preds = %421
  %427 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %428 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %427, i32 0, i32 5
  %429 = load i64, i64* %428, align 8
  %430 = load i64, i64* @BROTLI_MIN_WINDOW_BITS, align 8
  %431 = icmp slt i64 %429, %430
  br i1 %431, label %432, label %434

432:                                              ; preds = %426
  %433 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %433, i64* %2, align 8
  br label %788

434:                                              ; preds = %426, %421
  br label %454

435:                                              ; preds = %398
  %436 = load i8, i8* %21, align 1
  %437 = sext i8 %436 to i32
  %438 = icmp eq i32 %437, 83
  br i1 %438, label %439, label %453

439:                                              ; preds = %435
  %440 = load i8*, i8** %15, align 8
  %441 = icmp ne i8* %440, null
  br i1 %441, label %442, label %444

442:                                              ; preds = %439
  %443 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %443, i64* %2, align 8
  br label %788

444:                                              ; preds = %439
  %445 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %445, i8** %15, align 8
  %446 = load i8**, i8*** %5, align 8
  %447 = load i32, i32* %6, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i8*, i8** %446, i64 %448
  %450 = load i8*, i8** %449, align 8
  %451 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %452 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %451, i32 0, i32 6
  store i8* %450, i8** %452, align 8
  br label %453

453:                                              ; preds = %444, %435
  br label %454

454:                                              ; preds = %453, %434
  br label %455

455:                                              ; preds = %454, %397
  br label %456

456:                                              ; preds = %455, %364
  br label %457

457:                                              ; preds = %456, %279, %260, %246, %233, %213, %190, %176, %162, %145
  %458 = load i64, i64* %20, align 8
  %459 = add i64 %458, 1
  store i64 %459, i64* %20, align 8
  br label %124

460:                                              ; preds = %124
  br label %722

461:                                              ; preds = %117
  %462 = load i8*, i8** %18, align 8
  %463 = getelementptr inbounds i8, i8* %462, i64 2
  store i8* %463, i8** %18, align 8
  %464 = load i8*, i8** %18, align 8
  %465 = call i64 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %464)
  %466 = icmp eq i64 %465, 0
  br i1 %466, label %467, label %476

467:                                              ; preds = %461
  %468 = load i8*, i8** %11, align 8
  %469 = icmp ne i8* %468, null
  br i1 %469, label %470, label %472

470:                                              ; preds = %467
  %471 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %471, i64* %2, align 8
  br label %788

472:                                              ; preds = %467
  %473 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %473, i8** %11, align 8
  %474 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %475 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %474, i32 0, i32 3
  store i8 11, i8* %475, align 8
  br label %721

476:                                              ; preds = %461
  %477 = load i8*, i8** %18, align 8
  %478 = call i64 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %477)
  %479 = icmp eq i64 %478, 0
  br i1 %479, label %480, label %488

480:                                              ; preds = %476
  %481 = load i8*, i8** %10, align 8
  %482 = icmp ne i8* %481, null
  br i1 %482, label %483, label %485

483:                                              ; preds = %480
  %484 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %484, i64* %2, align 8
  br label %788

485:                                              ; preds = %480
  %486 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %486, i8** %10, align 8
  %487 = load i64, i64* @COMMAND_DECOMPRESS, align 8
  store i64 %487, i64* %17, align 8
  br label %720

488:                                              ; preds = %476
  %489 = load i8*, i8** %18, align 8
  %490 = call i64 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %489)
  %491 = icmp eq i64 %490, 0
  br i1 %491, label %492, label %503

492:                                              ; preds = %488
  %493 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %494 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %493, i32 0, i32 15
  %495 = load i8*, i8** %494, align 8
  %496 = icmp ne i8* %495, null
  br i1 %496, label %497, label %499

497:                                              ; preds = %492
  %498 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %498, i64* %2, align 8
  br label %788

499:                                              ; preds = %492
  %500 = load i8*, i8** @BROTLI_TRUE, align 8
  %501 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %502 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %501, i32 0, i32 15
  store i8* %500, i8** %502, align 8
  br label %719

503:                                              ; preds = %488
  %504 = load i8*, i8** %18, align 8
  %505 = call i64 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %504)
  %506 = icmp eq i64 %505, 0
  br i1 %506, label %507, label %509

507:                                              ; preds = %503
  %508 = load i64, i64* @COMMAND_HELP, align 8
  store i64 %508, i64* %2, align 8
  br label %788

509:                                              ; preds = %503
  %510 = load i8*, i8** %18, align 8
  %511 = call i64 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %510)
  %512 = icmp eq i64 %511, 0
  br i1 %512, label %513, label %523

513:                                              ; preds = %509
  %514 = load i8*, i8** %13, align 8
  %515 = icmp ne i8* %514, null
  br i1 %515, label %516, label %518

516:                                              ; preds = %513
  %517 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %517, i64* %2, align 8
  br label %788

518:                                              ; preds = %513
  %519 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %519, i8** %13, align 8
  %520 = load i8*, i8** @BROTLI_FALSE, align 8
  %521 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %522 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %521, i32 0, i32 13
  store i8* %520, i8** %522, align 8
  br label %717

523:                                              ; preds = %509
  %524 = load i8*, i8** %18, align 8
  %525 = call i64 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %524)
  %526 = icmp eq i64 %525, 0
  br i1 %526, label %527, label %538

527:                                              ; preds = %523
  %528 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %529 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %528, i32 0, i32 14
  %530 = load i8*, i8** %529, align 8
  %531 = icmp ne i8* %530, null
  br i1 %531, label %534, label %532

532:                                              ; preds = %527
  %533 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %533, i64* %2, align 8
  br label %788

534:                                              ; preds = %527
  %535 = load i8*, i8** @BROTLI_FALSE, align 8
  %536 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %537 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %536, i32 0, i32 14
  store i8* %535, i8** %537, align 8
  br label %716

538:                                              ; preds = %523
  %539 = load i8*, i8** %18, align 8
  %540 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %539)
  %541 = icmp eq i64 %540, 0
  br i1 %541, label %542, label %552

542:                                              ; preds = %538
  %543 = load i8*, i8** %13, align 8
  %544 = icmp ne i8* %543, null
  br i1 %544, label %545, label %547

545:                                              ; preds = %542
  %546 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %546, i64* %2, align 8
  br label %788

547:                                              ; preds = %542
  %548 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %548, i8** %13, align 8
  %549 = load i8*, i8** @BROTLI_TRUE, align 8
  %550 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %551 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %550, i32 0, i32 13
  store i8* %549, i8** %551, align 8
  br label %715

552:                                              ; preds = %538
  %553 = load i8*, i8** %18, align 8
  %554 = call i64 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %553)
  %555 = icmp eq i64 %554, 0
  br i1 %555, label %556, label %566

556:                                              ; preds = %552
  %557 = load i8*, i8** %12, align 8
  %558 = icmp ne i8* %557, null
  br i1 %558, label %559, label %561

559:                                              ; preds = %556
  %560 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %560, i64* %2, align 8
  br label %788

561:                                              ; preds = %556
  %562 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %562, i8** %12, align 8
  %563 = load i8*, i8** @BROTLI_TRUE, align 8
  %564 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %565 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %564, i32 0, i32 11
  store i8* %563, i8** %565, align 8
  br label %714

566:                                              ; preds = %552
  %567 = load i8*, i8** %18, align 8
  %568 = call i64 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %567)
  %569 = icmp eq i64 %568, 0
  br i1 %569, label %570, label %578

570:                                              ; preds = %566
  %571 = load i8*, i8** %10, align 8
  %572 = icmp ne i8* %571, null
  br i1 %572, label %573, label %575

573:                                              ; preds = %570
  %574 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %574, i64* %2, align 8
  br label %788

575:                                              ; preds = %570
  %576 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %576, i8** %10, align 8
  %577 = load i64, i64* @COMMAND_TEST_INTEGRITY, align 8
  store i64 %577, i64* %17, align 8
  br label %713

578:                                              ; preds = %566
  %579 = load i8*, i8** %18, align 8
  %580 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %579)
  %581 = icmp eq i64 %580, 0
  br i1 %581, label %582, label %593

582:                                              ; preds = %578
  %583 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %584 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %583, i32 0, i32 12
  %585 = load i8*, i8** %584, align 8
  %586 = icmp ne i8* %585, null
  br i1 %586, label %587, label %589

587:                                              ; preds = %582
  %588 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %588, i64* %2, align 8
  br label %788

589:                                              ; preds = %582
  %590 = load i8*, i8** @BROTLI_TRUE, align 8
  %591 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %592 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %591, i32 0, i32 12
  store i8* %590, i8** %592, align 8
  br label %712

593:                                              ; preds = %578
  %594 = load i8*, i8** %18, align 8
  %595 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* %594)
  %596 = icmp eq i64 %595, 0
  br i1 %596, label %597, label %599

597:                                              ; preds = %593
  %598 = load i64, i64* @COMMAND_VERSION, align 8
  store i64 %598, i64* %2, align 8
  br label %788

599:                                              ; preds = %593
  %600 = load i8*, i8** %18, align 8
  %601 = call i8* @strrchr(i8* %600, i8 signext 61)
  store i8* %601, i8** %22, align 8
  %602 = load i8*, i8** %22, align 8
  %603 = icmp ne i8* %602, null
  br i1 %603, label %604, label %610

604:                                              ; preds = %599
  %605 = load i8*, i8** %22, align 8
  %606 = getelementptr inbounds i8, i8* %605, i64 1
  %607 = load i8, i8* %606, align 1
  %608 = sext i8 %607 to i32
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %610, label %612

610:                                              ; preds = %604, %599
  %611 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %611, i64* %2, align 8
  br label %788

612:                                              ; preds = %604
  %613 = load i8*, i8** %22, align 8
  %614 = load i8*, i8** %18, align 8
  %615 = ptrtoint i8* %613 to i64
  %616 = ptrtoint i8* %614 to i64
  %617 = sub i64 %615, %616
  store i64 %617, i64* %23, align 8
  %618 = load i8*, i8** %22, align 8
  %619 = getelementptr inbounds i8, i8* %618, i32 1
  store i8* %619, i8** %22, align 8
  %620 = load i8*, i8** %18, align 8
  %621 = load i64, i64* %23, align 8
  %622 = call i64 @strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* %620, i64 %621)
  %623 = icmp eq i64 %622, 0
  br i1 %623, label %624, label %653

624:                                              ; preds = %612
  %625 = load i8*, i8** %14, align 8
  %626 = icmp ne i8* %625, null
  br i1 %626, label %627, label %629

627:                                              ; preds = %624
  %628 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %628, i64* %2, align 8
  br label %788

629:                                              ; preds = %624
  %630 = load i8*, i8** %22, align 8
  %631 = load i32, i32* @BROTLI_MAX_WINDOW_BITS, align 4
  %632 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %633 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %632, i32 0, i32 5
  %634 = call i8* @ParseInt(i8* %630, i32 0, i32 %631, i64* %633)
  store i8* %634, i8** %14, align 8
  %635 = load i8*, i8** %14, align 8
  %636 = icmp ne i8* %635, null
  br i1 %636, label %639, label %637

637:                                              ; preds = %629
  %638 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %638, i64* %2, align 8
  br label %788

639:                                              ; preds = %629
  %640 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %641 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %640, i32 0, i32 5
  %642 = load i64, i64* %641, align 8
  %643 = icmp ne i64 %642, 0
  br i1 %643, label %644, label %652

644:                                              ; preds = %639
  %645 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %646 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %645, i32 0, i32 5
  %647 = load i64, i64* %646, align 8
  %648 = load i64, i64* @BROTLI_MIN_WINDOW_BITS, align 8
  %649 = icmp slt i64 %647, %648
  br i1 %649, label %650, label %652

650:                                              ; preds = %644
  %651 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %651, i64* %2, align 8
  br label %788

652:                                              ; preds = %644, %639
  br label %710

653:                                              ; preds = %612
  %654 = load i8*, i8** %18, align 8
  %655 = load i64, i64* %23, align 8
  %656 = call i64 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* %654, i64 %655)
  %657 = icmp eq i64 %656, 0
  br i1 %657, label %658, label %667

658:                                              ; preds = %653
  %659 = load i8*, i8** %12, align 8
  %660 = icmp ne i8* %659, null
  br i1 %660, label %661, label %663

661:                                              ; preds = %658
  %662 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %662, i64* %2, align 8
  br label %788

663:                                              ; preds = %658
  %664 = load i8*, i8** %22, align 8
  %665 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %666 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %665, i32 0, i32 4
  store i8* %664, i8** %666, align 8
  br label %709

667:                                              ; preds = %653
  %668 = load i8*, i8** %18, align 8
  %669 = load i64, i64* %23, align 8
  %670 = call i64 @strncmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* %668, i64 %669)
  %671 = icmp eq i64 %670, 0
  br i1 %671, label %672, label %690

672:                                              ; preds = %667
  %673 = load i8*, i8** %11, align 8
  %674 = icmp ne i8* %673, null
  br i1 %674, label %675, label %677

675:                                              ; preds = %672
  %676 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %676, i64* %2, align 8
  br label %788

677:                                              ; preds = %672
  %678 = load i8*, i8** %22, align 8
  %679 = load i32, i32* @BROTLI_MIN_QUALITY, align 4
  %680 = load i32, i32* @BROTLI_MAX_QUALITY, align 4
  %681 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %682 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %681, i32 0, i32 3
  %683 = bitcast i8* %682 to i64*
  %684 = call i8* @ParseInt(i8* %678, i32 %679, i32 %680, i64* %683)
  store i8* %684, i8** %11, align 8
  %685 = load i8*, i8** %11, align 8
  %686 = icmp ne i8* %685, null
  br i1 %686, label %689, label %687

687:                                              ; preds = %677
  %688 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %688, i64* %2, align 8
  br label %788

689:                                              ; preds = %677
  br label %708

690:                                              ; preds = %667
  %691 = load i8*, i8** %18, align 8
  %692 = load i64, i64* %23, align 8
  %693 = call i64 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* %691, i64 %692)
  %694 = icmp eq i64 %693, 0
  br i1 %694, label %695, label %705

695:                                              ; preds = %690
  %696 = load i8*, i8** %15, align 8
  %697 = icmp ne i8* %696, null
  br i1 %697, label %698, label %700

698:                                              ; preds = %695
  %699 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %699, i64* %2, align 8
  br label %788

700:                                              ; preds = %695
  %701 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %701, i8** %15, align 8
  %702 = load i8*, i8** %22, align 8
  %703 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %704 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %703, i32 0, i32 6
  store i8* %702, i8** %704, align 8
  br label %707

705:                                              ; preds = %690
  %706 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %706, i64* %2, align 8
  br label %788

707:                                              ; preds = %700
  br label %708

708:                                              ; preds = %707, %689
  br label %709

709:                                              ; preds = %708, %663
  br label %710

710:                                              ; preds = %709, %652
  br label %711

711:                                              ; preds = %710
  br label %712

712:                                              ; preds = %711, %589
  br label %713

713:                                              ; preds = %712, %575
  br label %714

714:                                              ; preds = %713, %561
  br label %715

715:                                              ; preds = %714, %547
  br label %716

716:                                              ; preds = %715, %534
  br label %717

717:                                              ; preds = %716, %518
  br label %718

718:                                              ; preds = %717
  br label %719

719:                                              ; preds = %718, %499
  br label %720

720:                                              ; preds = %719, %485
  br label %721

721:                                              ; preds = %720, %472
  br label %722

722:                                              ; preds = %721, %460
  br label %723

723:                                              ; preds = %722, %115, %97, %61
  %724 = load i32, i32* %6, align 4
  %725 = add nsw i32 %724, 1
  store i32 %725, i32* %6, align 4
  br label %41

726:                                              ; preds = %41
  %727 = load i64, i64* %8, align 8
  %728 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %729 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %728, i32 0, i32 7
  store i64 %727, i64* %729, align 8
  %730 = load i64, i64* %9, align 8
  %731 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %732 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %731, i32 0, i32 8
  store i64 %730, i64* %732, align 8
  %733 = load i64, i64* %17, align 8
  %734 = load i64, i64* @COMMAND_DECOMPRESS, align 8
  %735 = icmp eq i64 %733, %734
  %736 = zext i1 %735 to i32
  %737 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %738 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %737, i32 0, i32 9
  store i32 %736, i32* %738, align 8
  %739 = load i64, i64* %17, align 8
  %740 = load i64, i64* @COMMAND_TEST_INTEGRITY, align 8
  %741 = icmp eq i64 %739, %740
  %742 = zext i1 %741 to i32
  %743 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %744 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %743, i32 0, i32 10
  store i32 %742, i32* %744, align 4
  %745 = load i64, i64* %8, align 8
  %746 = icmp ugt i64 %745, 1
  br i1 %746, label %747, label %752

747:                                              ; preds = %726
  %748 = load i8*, i8** %12, align 8
  %749 = icmp ne i8* %748, null
  br i1 %749, label %750, label %752

750:                                              ; preds = %747
  %751 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %751, i64* %2, align 8
  br label %788

752:                                              ; preds = %747, %726
  %753 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %754 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %753, i32 0, i32 10
  %755 = load i32, i32* %754, align 4
  %756 = icmp ne i32 %755, 0
  br i1 %756, label %757, label %772

757:                                              ; preds = %752
  %758 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %759 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %758, i32 0, i32 4
  %760 = load i8*, i8** %759, align 8
  %761 = icmp ne i8* %760, null
  br i1 %761, label %762, label %764

762:                                              ; preds = %757
  %763 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %763, i64* %2, align 8
  br label %788

764:                                              ; preds = %757
  %765 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %766 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %765, i32 0, i32 11
  %767 = load i8*, i8** %766, align 8
  %768 = icmp ne i8* %767, null
  br i1 %768, label %769, label %771

769:                                              ; preds = %764
  %770 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %770, i64* %2, align 8
  br label %788

771:                                              ; preds = %764
  br label %772

772:                                              ; preds = %771, %752
  %773 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %774 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %773, i32 0, i32 6
  %775 = load i8*, i8** %774, align 8
  %776 = call i64 @strchr(i8* %775, i8 signext 47)
  %777 = icmp ne i64 %776, 0
  br i1 %777, label %784, label %778

778:                                              ; preds = %772
  %779 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %780 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %779, i32 0, i32 6
  %781 = load i8*, i8** %780, align 8
  %782 = call i64 @strchr(i8* %781, i8 signext 92)
  %783 = icmp ne i64 %782, 0
  br i1 %783, label %784, label %786

784:                                              ; preds = %778, %772
  %785 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %785, i64* %2, align 8
  br label %788

786:                                              ; preds = %778
  %787 = load i64, i64* %17, align 8
  store i64 %787, i64* %2, align 8
  br label %788

788:                                              ; preds = %786, %784, %769, %762, %750, %705, %698, %687, %675, %661, %650, %637, %627, %610, %597, %587, %573, %559, %545, %532, %516, %507, %497, %483, %470, %442, %432, %419, %405, %395, %379, %362, %345, %320, %313, %277, %268, %258, %244, %231, %211, %198, %188, %174, %160, %143, %75
  %789 = load i64, i64* %2, align 8
  ret i64 %789
}

declare dso_local i64 @ParseAlias(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @TO_BROTLI_BOOL(i32) #1

declare dso_local i8* @ParseInt(i8*, i32, i32, i64*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
