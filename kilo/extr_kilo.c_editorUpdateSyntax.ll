; ModuleID = '/home/carl/AnghaBench/kilo/extr_kilo.c_editorUpdateSyntax.c'
source_filename = "/home/carl/AnghaBench/kilo/extr_kilo.c_editorUpdateSyntax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64*, i32, i8*, i32, i32, i32 }
%struct.TYPE_6__ = type { i8**, i8*, i8*, i8* }

@HL_NORMAL = common dso_local global i32 0, align 4
@E = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@HL_COMMENT = common dso_local global i32 0, align 4
@HL_MLCOMMENT = common dso_local global i8* null, align 8
@HL_STRING = common dso_local global i8* null, align 8
@HL_NONPRINT = common dso_local global i64 0, align 8
@HL_NUMBER = common dso_local global i64 0, align 8
@HL_KEYWORD2 = common dso_local global i32 0, align 4
@HL_KEYWORD1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @editorUpdateSyntax(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64* @realloc(i64* %18, i32 %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i64* %22, i64** %24, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* @HL_NORMAL, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @memset(i64* %27, i32 %28, i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @E, i32 0, i32 2), align 8
  %34 = icmp eq %struct.TYPE_6__* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  br label %479

36:                                               ; preds = %1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @E, i32 0, i32 2), align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  store i8** %39, i8*** %8, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @E, i32 0, i32 2), align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %9, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @E, i32 0, i32 2), align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %10, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @E, i32 0, i32 2), align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %11, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %7, align 8
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %64, %36
  %53 = load i8*, i8** %7, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i8*, i8** %7, align 8
  %59 = load i8, i8* %58, align 1
  %60 = call i64 @isspace(i8 signext %59)
  %61 = icmp ne i64 %60, 0
  br label %62

62:                                               ; preds = %57, %52
  %63 = phi i1 [ false, %52 ], [ %61, %57 ]
  br i1 %63, label %64, label %69

64:                                               ; preds = %62
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %7, align 8
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %52

69:                                               ; preds = %62
  store i32 1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @E, i32 0, i32 1), align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i64 %80
  %82 = call i32 @editorRowHasOpenComment(%struct.TYPE_7__* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  store i32 1, i32* %6, align 4
  br label %85

85:                                               ; preds = %84, %74, %69
  br label %86

86:                                               ; preds = %444, %442, %341, %291, %269, %254, %233, %194, %170, %156, %85
  %87 = load i8*, i8** %7, align 8
  %88 = load i8, i8* %87, align 1
  %89 = icmp ne i8 %88, 0
  br i1 %89, label %90, label %452

90:                                               ; preds = %86
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %126

93:                                               ; preds = %90
  %94 = load i8*, i8** %7, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = load i8*, i8** %9, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %96, %100
  br i1 %101, label %102, label %126

102:                                              ; preds = %93
  %103 = load i8*, i8** %7, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = load i8*, i8** %9, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %106, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %102
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = load i32, i32* @HL_COMMENT, align 4
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %3, align 4
  %124 = sub nsw i32 %122, %123
  %125 = call i32 @memset(i64* %118, i32 %119, i32 %124)
  br label %479

126:                                              ; preds = %102, %93, %90
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %175

129:                                              ; preds = %126
  %130 = load i8*, i8** @HL_MLCOMMENT, align 8
  %131 = ptrtoint i8* %130 to i64
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i64*, i64** %133, align 8
  %135 = load i32, i32* %3, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  store i64 %131, i64* %137, align 8
  %138 = load i8*, i8** %7, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = load i8*, i8** %11, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %140, %144
  br i1 %145, label %146, label %170

146:                                              ; preds = %129
  %147 = load i8*, i8** %7, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = load i8*, i8** %11, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 1
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %150, %154
  br i1 %155, label %156, label %170

156:                                              ; preds = %146
  %157 = load i8*, i8** @HL_MLCOMMENT, align 8
  %158 = ptrtoint i8* %157 to i64
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i64*, i64** %160, align 8
  %162 = load i32, i32* %3, align 4
  %163 = add nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %161, i64 %164
  store i64 %158, i64* %165, align 8
  %166 = load i8*, i8** %7, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 2
  store i8* %167, i8** %7, align 8
  %168 = load i32, i32* %3, align 4
  %169 = add nsw i32 %168, 2
  store i32 %169, i32* %3, align 4
  store i32 0, i32* %6, align 4
  store i32 1, i32* %4, align 4
  br label %86

170:                                              ; preds = %146, %129
  store i32 0, i32* %4, align 4
  %171 = load i8*, i8** %7, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %7, align 8
  %173 = load i32, i32* %3, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %3, align 4
  br label %86

175:                                              ; preds = %126
  %176 = load i8*, i8** %7, align 8
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = load i8*, i8** %10, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 0
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %178, %182
  br i1 %183, label %184, label %216

184:                                              ; preds = %175
  %185 = load i8*, i8** %7, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 1
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = load i8*, i8** %10, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 1
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %188, %192
  br i1 %193, label %194, label %216

194:                                              ; preds = %184
  %195 = load i8*, i8** @HL_MLCOMMENT, align 8
  %196 = ptrtoint i8* %195 to i64
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  %199 = load i64*, i64** %198, align 8
  %200 = load i32, i32* %3, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i64, i64* %199, i64 %201
  store i64 %196, i64* %202, align 8
  %203 = load i8*, i8** @HL_MLCOMMENT, align 8
  %204 = ptrtoint i8* %203 to i64
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  %207 = load i64*, i64** %206, align 8
  %208 = load i32, i32* %3, align 4
  %209 = add nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i64, i64* %207, i64 %210
  store i64 %204, i64* %211, align 8
  %212 = load i8*, i8** %7, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 2
  store i8* %213, i8** %7, align 8
  %214 = load i32, i32* %3, align 4
  %215 = add nsw i32 %214, 2
  store i32 %215, i32* %3, align 4
  store i32 1, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %86

216:                                              ; preds = %184, %175
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %5, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %259

220:                                              ; preds = %217
  %221 = load i8*, i8** @HL_STRING, align 8
  %222 = ptrtoint i8* %221 to i64
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = load i64*, i64** %224, align 8
  %226 = load i32, i32* %3, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i64, i64* %225, i64 %227
  store i64 %222, i64* %228, align 8
  %229 = load i8*, i8** %7, align 8
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp eq i32 %231, 92
  br i1 %232, label %233, label %247

233:                                              ; preds = %220
  %234 = load i8*, i8** @HL_STRING, align 8
  %235 = ptrtoint i8* %234 to i64
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  %238 = load i64*, i64** %237, align 8
  %239 = load i32, i32* %3, align 4
  %240 = add nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i64, i64* %238, i64 %241
  store i64 %235, i64* %242, align 8
  %243 = load i8*, i8** %7, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 2
  store i8* %244, i8** %7, align 8
  %245 = load i32, i32* %3, align 4
  %246 = add nsw i32 %245, 2
  store i32 %246, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %86

247:                                              ; preds = %220
  %248 = load i8*, i8** %7, align 8
  %249 = load i8, i8* %248, align 1
  %250 = sext i8 %249 to i32
  %251 = load i32, i32* %5, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %247
  store i32 0, i32* %5, align 4
  br label %254

254:                                              ; preds = %253, %247
  %255 = load i8*, i8** %7, align 8
  %256 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %256, i8** %7, align 8
  %257 = load i32, i32* %3, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %3, align 4
  br label %86

259:                                              ; preds = %217
  %260 = load i8*, i8** %7, align 8
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp eq i32 %262, 34
  br i1 %263, label %269, label %264

264:                                              ; preds = %259
  %265 = load i8*, i8** %7, align 8
  %266 = load i8, i8* %265, align 1
  %267 = sext i8 %266 to i32
  %268 = icmp eq i32 %267, 39
  br i1 %268, label %269, label %285

269:                                              ; preds = %264, %259
  %270 = load i8*, i8** %7, align 8
  %271 = load i8, i8* %270, align 1
  %272 = sext i8 %271 to i32
  store i32 %272, i32* %5, align 4
  %273 = load i8*, i8** @HL_STRING, align 8
  %274 = ptrtoint i8* %273 to i64
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 0
  %277 = load i64*, i64** %276, align 8
  %278 = load i32, i32* %3, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i64, i64* %277, i64 %279
  store i64 %274, i64* %280, align 8
  %281 = load i8*, i8** %7, align 8
  %282 = getelementptr inbounds i8, i8* %281, i32 1
  store i8* %282, i8** %7, align 8
  %283 = load i32, i32* %3, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %86

285:                                              ; preds = %264
  br label %286

286:                                              ; preds = %285
  %287 = load i8*, i8** %7, align 8
  %288 = load i8, i8* %287, align 1
  %289 = call i32 @isprint(i8 signext %288)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %303, label %291

291:                                              ; preds = %286
  %292 = load i64, i64* @HL_NONPRINT, align 8
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 0
  %295 = load i64*, i64** %294, align 8
  %296 = load i32, i32* %3, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i64, i64* %295, i64 %297
  store i64 %292, i64* %298, align 8
  %299 = load i8*, i8** %7, align 8
  %300 = getelementptr inbounds i8, i8* %299, i32 1
  store i8* %300, i8** %7, align 8
  %301 = load i32, i32* %3, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %86

303:                                              ; preds = %286
  %304 = load i8*, i8** %7, align 8
  %305 = load i8, i8* %304, align 1
  %306 = call i64 @isdigit(i8 signext %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %322

308:                                              ; preds = %303
  %309 = load i32, i32* %4, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %341, label %311

311:                                              ; preds = %308
  %312 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %313 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %312, i32 0, i32 0
  %314 = load i64*, i64** %313, align 8
  %315 = load i32, i32* %3, align 4
  %316 = sub nsw i32 %315, 1
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i64, i64* %314, i64 %317
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* @HL_NUMBER, align 8
  %321 = icmp eq i64 %319, %320
  br i1 %321, label %341, label %322

322:                                              ; preds = %311, %303
  %323 = load i8*, i8** %7, align 8
  %324 = load i8, i8* %323, align 1
  %325 = sext i8 %324 to i32
  %326 = icmp eq i32 %325, 46
  br i1 %326, label %327, label %353

327:                                              ; preds = %322
  %328 = load i32, i32* %3, align 4
  %329 = icmp sgt i32 %328, 0
  br i1 %329, label %330, label %353

330:                                              ; preds = %327
  %331 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i32 0, i32 0
  %333 = load i64*, i64** %332, align 8
  %334 = load i32, i32* %3, align 4
  %335 = sub nsw i32 %334, 1
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i64, i64* %333, i64 %336
  %338 = load i64, i64* %337, align 8
  %339 = load i64, i64* @HL_NUMBER, align 8
  %340 = icmp eq i64 %338, %339
  br i1 %340, label %341, label %353

341:                                              ; preds = %330, %311, %308
  %342 = load i64, i64* @HL_NUMBER, align 8
  %343 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %344 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %343, i32 0, i32 0
  %345 = load i64*, i64** %344, align 8
  %346 = load i32, i32* %3, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i64, i64* %345, i64 %347
  store i64 %342, i64* %348, align 8
  %349 = load i8*, i8** %7, align 8
  %350 = getelementptr inbounds i8, i8* %349, i32 1
  store i8* %350, i8** %7, align 8
  %351 = load i32, i32* %3, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %86

353:                                              ; preds = %330, %327, %322
  %354 = load i32, i32* %4, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %444

356:                                              ; preds = %353
  store i32 0, i32* %12, align 4
  br label %357

357:                                              ; preds = %432, %356
  %358 = load i8**, i8*** %8, align 8
  %359 = load i32, i32* %12, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i8*, i8** %358, i64 %360
  %362 = load i8*, i8** %361, align 8
  %363 = icmp ne i8* %362, null
  br i1 %363, label %364, label %435

364:                                              ; preds = %357
  %365 = load i8**, i8*** %8, align 8
  %366 = load i32, i32* %12, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i8*, i8** %365, i64 %367
  %369 = load i8*, i8** %368, align 8
  %370 = call i32 @strlen(i8* %369)
  store i32 %370, i32* %13, align 4
  %371 = load i8**, i8*** %8, align 8
  %372 = load i32, i32* %12, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i8*, i8** %371, i64 %373
  %375 = load i8*, i8** %374, align 8
  %376 = load i32, i32* %13, align 4
  %377 = sub nsw i32 %376, 1
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i8, i8* %375, i64 %378
  %380 = load i8, i8* %379, align 1
  %381 = sext i8 %380 to i32
  %382 = icmp eq i32 %381, 124
  %383 = zext i1 %382 to i32
  store i32 %383, i32* %14, align 4
  %384 = load i32, i32* %14, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %389

386:                                              ; preds = %364
  %387 = load i32, i32* %13, align 4
  %388 = add nsw i32 %387, -1
  store i32 %388, i32* %13, align 4
  br label %389

389:                                              ; preds = %386, %364
  %390 = load i8*, i8** %7, align 8
  %391 = load i8**, i8*** %8, align 8
  %392 = load i32, i32* %12, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i8*, i8** %391, i64 %393
  %395 = load i8*, i8** %394, align 8
  %396 = load i32, i32* %13, align 4
  %397 = call i32 @memcmp(i8* %390, i8* %395, i32 %396)
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %431, label %399

399:                                              ; preds = %389
  %400 = load i8*, i8** %7, align 8
  %401 = load i32, i32* %13, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i8, i8* %400, i64 %402
  %404 = load i8, i8* %403, align 1
  %405 = call i32 @is_separator(i8 signext %404)
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %431

407:                                              ; preds = %399
  %408 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %409 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %408, i32 0, i32 0
  %410 = load i64*, i64** %409, align 8
  %411 = load i32, i32* %3, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i64, i64* %410, i64 %412
  %414 = load i32, i32* %14, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %418

416:                                              ; preds = %407
  %417 = load i32, i32* @HL_KEYWORD2, align 4
  br label %420

418:                                              ; preds = %407
  %419 = load i32, i32* @HL_KEYWORD1, align 4
  br label %420

420:                                              ; preds = %418, %416
  %421 = phi i32 [ %417, %416 ], [ %419, %418 ]
  %422 = load i32, i32* %13, align 4
  %423 = call i32 @memset(i64* %413, i32 %421, i32 %422)
  %424 = load i32, i32* %13, align 4
  %425 = load i8*, i8** %7, align 8
  %426 = sext i32 %424 to i64
  %427 = getelementptr inbounds i8, i8* %425, i64 %426
  store i8* %427, i8** %7, align 8
  %428 = load i32, i32* %13, align 4
  %429 = load i32, i32* %3, align 4
  %430 = add nsw i32 %429, %428
  store i32 %430, i32* %3, align 4
  br label %435

431:                                              ; preds = %399, %389
  br label %432

432:                                              ; preds = %431
  %433 = load i32, i32* %12, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %12, align 4
  br label %357

435:                                              ; preds = %420, %357
  %436 = load i8**, i8*** %8, align 8
  %437 = load i32, i32* %12, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i8*, i8** %436, i64 %438
  %440 = load i8*, i8** %439, align 8
  %441 = icmp ne i8* %440, null
  br i1 %441, label %442, label %443

442:                                              ; preds = %435
  store i32 0, i32* %4, align 4
  br label %86

443:                                              ; preds = %435
  br label %444

444:                                              ; preds = %443, %353
  %445 = load i8*, i8** %7, align 8
  %446 = load i8, i8* %445, align 1
  %447 = call i32 @is_separator(i8 signext %446)
  store i32 %447, i32* %4, align 4
  %448 = load i8*, i8** %7, align 8
  %449 = getelementptr inbounds i8, i8* %448, i32 1
  store i8* %449, i8** %7, align 8
  %450 = load i32, i32* %3, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %3, align 4
  br label %86

452:                                              ; preds = %86
  %453 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %454 = call i32 @editorRowHasOpenComment(%struct.TYPE_7__* %453)
  store i32 %454, i32* %15, align 4
  %455 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %456 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %455, i32 0, i32 5
  %457 = load i32, i32* %456, align 8
  %458 = load i32, i32* %15, align 4
  %459 = icmp ne i32 %457, %458
  br i1 %459, label %460, label %475

460:                                              ; preds = %452
  %461 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %462 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %461, i32 0, i32 3
  %463 = load i32, i32* %462, align 8
  %464 = add nsw i32 %463, 1
  %465 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @E, i32 0, i32 0), align 8
  %466 = icmp slt i32 %464, %465
  br i1 %466, label %467, label %475

467:                                              ; preds = %460
  %468 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @E, i32 0, i32 1), align 8
  %469 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %470 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %469, i32 0, i32 3
  %471 = load i32, i32* %470, align 8
  %472 = add nsw i32 %471, 1
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %468, i64 %473
  call void @editorUpdateSyntax(%struct.TYPE_7__* %474)
  br label %475

475:                                              ; preds = %467, %460, %452
  %476 = load i32, i32* %15, align 4
  %477 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %478 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %477, i32 0, i32 5
  store i32 %476, i32* %478, align 8
  br label %479

479:                                              ; preds = %475, %112, %35
  ret void
}

declare dso_local i64* @realloc(i64*, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @editorRowHasOpenComment(%struct.TYPE_7__*) #1

declare dso_local i32 @isprint(i8 signext) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @is_separator(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
