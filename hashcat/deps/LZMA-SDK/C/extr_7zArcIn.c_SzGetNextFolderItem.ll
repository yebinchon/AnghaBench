; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_7zArcIn.c_SzGetNextFolderItem.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_7zArcIn.c_SzGetNextFolderItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64*, i64, %struct.TYPE_11__*, i64, i64, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i32*, i32 }

@SZ_NUM_CODERS_IN_FOLDER_MAX = common dso_local global i64 0, align 8
@SZ_ERROR_UNSUPPORTED = common dso_local global i32 0, align 4
@SZ_ERROR_ARCHIVE = common dso_local global i32 0, align 4
@k_NumCodersStreams_in_Folder_MAX = common dso_local global i64 0, align 8
@SZ_NUM_BONDS_IN_FOLDER_MAX = common dso_local global i64 0, align 8
@SZ_NUM_PACK_STREAMS_IN_FOLDER_MAX = common dso_local global i64 0, align 8
@False = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SzGetNextFolderItem(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_11__*, align 8
  %25 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i64 0, i64* %8, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %9, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 5
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = call i32 @SzReadNumber32(%struct.TYPE_9__* %37, i64* %6)
  %39 = call i32 @RINOK(i32 %38)
  %40 = load i64, i64* %6, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %2
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @SZ_NUM_CODERS_IN_FOLDER_MAX, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42, %2
  %47 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %47, i32* %3, align 4
  br label %440

48:                                               ; preds = %42
  store i64 0, i64* %7, align 8
  br label %49

49:                                               ; preds = %210, %48
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %213

53:                                               ; preds = %49
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 6
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i64 %57
  store %struct.TYPE_10__* %58, %struct.TYPE_10__** %11, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @SZ_READ_BYTE(i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %61, 192
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %65, i32* %3, align 4
  br label %440

66:                                               ; preds = %53
  %67 = load i32, i32* %10, align 4
  %68 = and i32 %67, 15
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = zext i32 %69 to i64
  %71 = icmp ugt i64 %70, 4
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %73, i32* %3, align 4
  br label %440

74:                                               ; preds = %66
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp ugt i32 %75, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  store i32 %81, i32* %3, align 4
  br label %440

82:                                               ; preds = %74
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %83

83:                                               ; preds = %103, %82
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %83
  %88 = load i32, i32* %14, align 4
  %89 = shl i32 %88, 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %89, %93
  store i32 %94, i32* %14, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %96, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = add i32 %101, -1
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %87
  %104 = load i32, i32* %13, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %13, align 4
  br label %83

106:                                              ; preds = %83
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = icmp sgt i64 %108, 4294967295
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %111, i32* %3, align 4
  br label %440

112:                                              ; preds = %106
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 3
  store i64 %114, i64* %116, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  store i32 1, i32* %118, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  store i32 0, i32* %120, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 2
  store i32 0, i32* %122, align 8
  %123 = load i32, i32* %10, align 4
  %124 = and i32 %123, 16
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %148

126:                                              ; preds = %112
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %128 = call i32 @SzReadNumber32(%struct.TYPE_9__* %127, i64* %15)
  %129 = call i32 @RINOK(i32 %128)
  %130 = load i64, i64* %15, align 8
  %131 = load i64, i64* @k_NumCodersStreams_in_Folder_MAX, align 8
  %132 = icmp sgt i64 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %134, i32* %3, align 4
  br label %440

135:                                              ; preds = %126
  %136 = load i64, i64* %15, align 8
  %137 = trunc i64 %136 to i32
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %141 = call i32 @SzReadNumber32(%struct.TYPE_9__* %140, i64* %15)
  %142 = call i32 @RINOK(i32 %141)
  %143 = load i64, i64* %15, align 8
  %144 = icmp ne i64 %143, 1
  br i1 %144, label %145, label %147

145:                                              ; preds = %135
  %146 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %146, i32* %3, align 4
  br label %440

147:                                              ; preds = %135
  br label %148

148:                                              ; preds = %147, %112
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  %153 = load i64, i64* %8, align 8
  %154 = add nsw i64 %153, %152
  store i64 %154, i64* %8, align 8
  %155 = load i64, i64* %8, align 8
  %156 = load i64, i64* @k_NumCodersStreams_in_Folder_MAX, align 8
  %157 = icmp sgt i64 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %148
  %159 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %159, i32* %3, align 4
  br label %440

160:                                              ; preds = %148
  %161 = load i32, i32* %10, align 4
  %162 = and i32 %161, 32
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %209

164:                                              ; preds = %160
  store i64 0, i64* %16, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %166 = call i32 @SzReadNumber32(%struct.TYPE_9__* %165, i64* %16)
  %167 = call i32 @RINOK(i32 %166)
  %168 = load i64, i64* %16, align 8
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = zext i32 %171 to i64
  %173 = icmp sgt i64 %168, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %164
  %175 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  store i32 %175, i32* %3, align 4
  br label %440

176:                                              ; preds = %164
  %177 = load i64, i64* %16, align 8
  %178 = icmp sge i64 %177, 128
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %180, i32* %3, align 4
  br label %440

181:                                              ; preds = %176
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = load i32*, i32** %9, align 8
  %186 = ptrtoint i32* %184 to i64
  %187 = ptrtoint i32* %185 to i64
  %188 = sub i64 %186, %187
  %189 = sdiv exact i64 %188, 4
  %190 = trunc i64 %189 to i32
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 4
  %193 = load i64, i64* %16, align 8
  %194 = trunc i64 %193 to i32
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 8
  %197 = load i64, i64* %16, align 8
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 %197
  store i32* %201, i32** %199, align 8
  %202 = load i64, i64* %16, align 8
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = zext i32 %205 to i64
  %207 = sub i64 %206, %202
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %204, align 8
  br label %209

209:                                              ; preds = %181, %160
  br label %210

210:                                              ; preds = %209
  %211 = load i64, i64* %7, align 8
  %212 = add nsw i64 %211, 1
  store i64 %212, i64* %7, align 8
  br label %49

213:                                              ; preds = %49
  %214 = load i64, i64* @k_NumCodersStreams_in_Folder_MAX, align 8
  %215 = call i8* @llvm.stacksave()
  store i8* %215, i8** %17, align 8
  %216 = alloca i32, i64 %214, align 16
  store i64 %214, i64* %18, align 8
  %217 = load i64, i64* %6, align 8
  %218 = sub nsw i64 %217, 1
  store i64 %218, i64* %19, align 8
  %219 = load i64, i64* %8, align 8
  %220 = load i64, i64* %19, align 8
  %221 = icmp slt i64 %219, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %213
  %223 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  store i32 %223, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %432

224:                                              ; preds = %213
  %225 = load i64, i64* %19, align 8
  %226 = load i64, i64* @SZ_NUM_BONDS_IN_FOLDER_MAX, align 8
  %227 = icmp sgt i64 %225, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %224
  %229 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %229, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %432

230:                                              ; preds = %224
  %231 = load i64, i64* %19, align 8
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 5
  store i64 %231, i64* %233, align 8
  %234 = load i64, i64* %8, align 8
  %235 = load i64, i64* %19, align 8
  %236 = sub nsw i64 %234, %235
  store i64 %236, i64* %20, align 8
  %237 = load i64, i64* %20, align 8
  %238 = load i64, i64* @SZ_NUM_PACK_STREAMS_IN_FOLDER_MAX, align 8
  %239 = icmp sgt i64 %237, %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %230
  %241 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %241, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %432

242:                                              ; preds = %230
  %243 = load i64, i64* %20, align 8
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 4
  store i64 %243, i64* %245, align 8
  store i64 0, i64* %7, align 8
  br label %246

246:                                              ; preds = %254, %242
  %247 = load i64, i64* %7, align 8
  %248 = load i64, i64* %8, align 8
  %249 = icmp slt i64 %247, %248
  br i1 %249, label %250, label %257

250:                                              ; preds = %246
  %251 = load i32, i32* @False, align 4
  %252 = load i64, i64* %7, align 8
  %253 = getelementptr inbounds i32, i32* %216, i64 %252
  store i32 %251, i32* %253, align 4
  br label %254

254:                                              ; preds = %250
  %255 = load i64, i64* %7, align 8
  %256 = add nsw i64 %255, 1
  store i64 %256, i64* %7, align 8
  br label %246

257:                                              ; preds = %246
  %258 = load i64, i64* %19, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %368

260:                                              ; preds = %257
  %261 = load i64, i64* @SZ_NUM_CODERS_IN_FOLDER_MAX, align 8
  %262 = call i8* @llvm.stacksave()
  store i8* %262, i8** %22, align 8
  %263 = alloca i32, i64 %261, align 16
  store i64 %261, i64* %23, align 8
  store i64 0, i64* %7, align 8
  br label %264

264:                                              ; preds = %272, %260
  %265 = load i64, i64* %7, align 8
  %266 = load i64, i64* %6, align 8
  %267 = icmp slt i64 %265, %266
  br i1 %267, label %268, label %275

268:                                              ; preds = %264
  %269 = load i32, i32* @False, align 4
  %270 = load i64, i64* %7, align 8
  %271 = getelementptr inbounds i32, i32* %263, i64 %270
  store i32 %269, i32* %271, align 4
  br label %272

272:                                              ; preds = %268
  %273 = load i64, i64* %7, align 8
  %274 = add nsw i64 %273, 1
  store i64 %274, i64* %7, align 8
  br label %264

275:                                              ; preds = %264
  store i64 0, i64* %7, align 8
  br label %276

276:                                              ; preds = %336, %275
  %277 = load i64, i64* %7, align 8
  %278 = load i64, i64* %19, align 8
  %279 = icmp slt i64 %277, %278
  br i1 %279, label %280, label %339

280:                                              ; preds = %276
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 3
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %282, align 8
  %284 = load i64, i64* %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i64 %284
  store %struct.TYPE_11__* %285, %struct.TYPE_11__** %24, align 8
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 0
  %289 = call i32 @SzReadNumber32(%struct.TYPE_9__* %286, i64* %288)
  %290 = call i32 @RINOK(i32 %289)
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* %8, align 8
  %295 = icmp sge i64 %293, %294
  br i1 %295, label %303, label %296

296:                                              ; preds = %280
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = getelementptr inbounds i32, i32* %216, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %296, %280
  %304 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  store i32 %304, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %364

305:                                              ; preds = %296
  %306 = load i32, i32* @True, align 4
  %307 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = getelementptr inbounds i32, i32* %216, i64 %309
  store i32 %306, i32* %310, align 4
  %311 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 1
  %314 = call i32 @SzReadNumber32(%struct.TYPE_9__* %311, i64* %313)
  %315 = call i32 @RINOK(i32 %314)
  %316 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* %6, align 8
  %320 = icmp sge i64 %318, %319
  br i1 %320, label %328, label %321

321:                                              ; preds = %305
  %322 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %322, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  %325 = getelementptr inbounds i32, i32* %263, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %330

328:                                              ; preds = %321, %305
  %329 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  store i32 %329, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %364

330:                                              ; preds = %321
  %331 = load i32, i32* @True, align 4
  %332 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %333 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %332, i32 0, i32 1
  %334 = load i64, i64* %333, align 8
  %335 = getelementptr inbounds i32, i32* %263, i64 %334
  store i32 %331, i32* %335, align 4
  br label %336

336:                                              ; preds = %330
  %337 = load i64, i64* %7, align 8
  %338 = add nsw i64 %337, 1
  store i64 %338, i64* %7, align 8
  br label %276

339:                                              ; preds = %276
  store i64 0, i64* %7, align 8
  br label %340

340:                                              ; preds = %354, %339
  %341 = load i64, i64* %7, align 8
  %342 = load i64, i64* %6, align 8
  %343 = icmp slt i64 %341, %342
  br i1 %343, label %344, label %357

344:                                              ; preds = %340
  %345 = load i64, i64* %7, align 8
  %346 = getelementptr inbounds i32, i32* %263, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %353, label %349

349:                                              ; preds = %344
  %350 = load i64, i64* %7, align 8
  %351 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %351, i32 0, i32 2
  store i64 %350, i64* %352, align 8
  br label %357

353:                                              ; preds = %344
  br label %354

354:                                              ; preds = %353
  %355 = load i64, i64* %7, align 8
  %356 = add nsw i64 %355, 1
  store i64 %356, i64* %7, align 8
  br label %340

357:                                              ; preds = %349, %340
  %358 = load i64, i64* %7, align 8
  %359 = load i64, i64* %6, align 8
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %361, label %363

361:                                              ; preds = %357
  %362 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  store i32 %362, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %364

363:                                              ; preds = %357
  store i32 0, i32* %21, align 4
  br label %364

364:                                              ; preds = %363, %361, %328, %303
  %365 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %365)
  %366 = load i32, i32* %21, align 4
  switch i32 %366, label %432 [
    i32 0, label %367
  ]

367:                                              ; preds = %364
  br label %368

368:                                              ; preds = %367, %257
  %369 = load i64, i64* %20, align 8
  %370 = icmp eq i64 %369, 1
  br i1 %370, label %371, label %398

371:                                              ; preds = %368
  store i64 0, i64* %7, align 8
  br label %372

372:                                              ; preds = %383, %371
  %373 = load i64, i64* %7, align 8
  %374 = load i64, i64* %8, align 8
  %375 = icmp slt i64 %373, %374
  br i1 %375, label %376, label %386

376:                                              ; preds = %372
  %377 = load i64, i64* %7, align 8
  %378 = getelementptr inbounds i32, i32* %216, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %382, label %381

381:                                              ; preds = %376
  br label %386

382:                                              ; preds = %376
  br label %383

383:                                              ; preds = %382
  %384 = load i64, i64* %7, align 8
  %385 = add nsw i64 %384, 1
  store i64 %385, i64* %7, align 8
  br label %372

386:                                              ; preds = %381, %372
  %387 = load i64, i64* %7, align 8
  %388 = load i64, i64* %8, align 8
  %389 = icmp eq i64 %387, %388
  br i1 %389, label %390, label %392

390:                                              ; preds = %386
  %391 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  store i32 %391, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %432

392:                                              ; preds = %386
  %393 = load i64, i64* %7, align 8
  %394 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %395 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %394, i32 0, i32 1
  %396 = load i64*, i64** %395, align 8
  %397 = getelementptr inbounds i64, i64* %396, i64 0
  store i64 %393, i64* %397, align 8
  br label %431

398:                                              ; preds = %368
  store i64 0, i64* %7, align 8
  br label %399

399:                                              ; preds = %427, %398
  %400 = load i64, i64* %7, align 8
  %401 = load i64, i64* %20, align 8
  %402 = icmp slt i64 %400, %401
  br i1 %402, label %403, label %430

403:                                              ; preds = %399
  %404 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %405 = call i32 @SzReadNumber32(%struct.TYPE_9__* %404, i64* %25)
  %406 = call i32 @RINOK(i32 %405)
  %407 = load i64, i64* %25, align 8
  %408 = load i64, i64* %8, align 8
  %409 = icmp sge i64 %407, %408
  br i1 %409, label %415, label %410

410:                                              ; preds = %403
  %411 = load i64, i64* %25, align 8
  %412 = getelementptr inbounds i32, i32* %216, i64 %411
  %413 = load i32, i32* %412, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %417

415:                                              ; preds = %410, %403
  %416 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  store i32 %416, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %432

417:                                              ; preds = %410
  %418 = load i32, i32* @True, align 4
  %419 = load i64, i64* %25, align 8
  %420 = getelementptr inbounds i32, i32* %216, i64 %419
  store i32 %418, i32* %420, align 4
  %421 = load i64, i64* %25, align 8
  %422 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %423 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %422, i32 0, i32 1
  %424 = load i64*, i64** %423, align 8
  %425 = load i64, i64* %7, align 8
  %426 = getelementptr inbounds i64, i64* %424, i64 %425
  store i64 %421, i64* %426, align 8
  br label %427

427:                                              ; preds = %417
  %428 = load i64, i64* %7, align 8
  %429 = add nsw i64 %428, 1
  store i64 %429, i64* %7, align 8
  br label %399

430:                                              ; preds = %399
  br label %431

431:                                              ; preds = %430, %392
  store i32 0, i32* %21, align 4
  br label %432

432:                                              ; preds = %431, %415, %390, %364, %240, %228, %222
  %433 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %433)
  %434 = load i32, i32* %21, align 4
  switch i32 %434, label %442 [
    i32 0, label %435
    i32 1, label %440
  ]

435:                                              ; preds = %432
  %436 = load i64, i64* %6, align 8
  %437 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %438 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %437, i32 0, i32 0
  store i64 %436, i64* %438, align 8
  %439 = load i32, i32* @SZ_OK, align 4
  store i32 %439, i32* %3, align 4
  br label %440

440:                                              ; preds = %435, %432, %179, %174, %158, %145, %133, %110, %80, %72, %64, %46
  %441 = load i32, i32* %3, align 4
  ret i32 %441

442:                                              ; preds = %432
  unreachable
}

declare dso_local i32 @RINOK(i32) #1

declare dso_local i32 @SzReadNumber32(%struct.TYPE_9__*, i64*) #1

declare dso_local i32 @SZ_READ_BYTE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
