; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_unzip.c_unzlocal_GetCurrentFileInfoInternal.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_unzip.c_unzlocal_GetCurrentFileInfoInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i32 }

@UNZ_OK = common dso_local global i32 0, align 4
@UNZ_PARAMERROR = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@UNZ_ERRNO = common dso_local global i32 0, align 4
@UNZ_BADZIPFILE = common dso_local global i32 0, align 4
@unz_GAME_QL = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, %struct.TYPE_7__*, i8*, i32, i8*, i32, i8*, i32)* @unzlocal_GetCurrentFileInfoInternal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unzlocal_GetCurrentFileInfoInternal(i32* %0, %struct.TYPE_8__* %1, %struct.TYPE_7__* %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_6__*, align 8
  %21 = alloca %struct.TYPE_8__, align 4
  %22 = alloca %struct.TYPE_7__, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  store i32* %0, i32** %11, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i8* %5, i8** %16, align 8
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i32 %8, i32* %19, align 4
  %32 = load i32, i32* @UNZ_OK, align 4
  store i32 %32, i32* %23, align 4
  store i64 0, i64* %25, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %9
  %36 = load i32, i32* @UNZ_PARAMERROR, align 4
  store i32 %36, i32* %10, align 4
  br label %472

37:                                               ; preds = %9
  %38 = load i32*, i32** %11, align 8
  %39 = bitcast i32* %38 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %20, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = load i32, i32* @SEEK_SET, align 4
  %51 = call i64 @fseek(i32 %42, i64 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %37
  %54 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %54, i32* %23, align 4
  br label %55

55:                                               ; preds = %53, %37
  %56 = load i32, i32* %23, align 4
  %57 = load i32, i32* @UNZ_OK, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %55
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @unzlocal_getLong(i32 %62, i32* %24)
  %64 = load i32, i32* @UNZ_OK, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %67, i32* %23, align 4
  br label %74

68:                                               ; preds = %59
  %69 = load i32, i32* %24, align 4
  %70 = icmp ne i32 %69, 33639248
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* @UNZ_BADZIPFILE, align 4
  store i32 %72, i32* %23, align 4
  br label %73

73:                                               ; preds = %71, %68
  br label %74

74:                                               ; preds = %73, %66
  br label %75

75:                                               ; preds = %74, %55
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %80 = call i32 @unzlocal_getShort(i32 %78, i32* %79)
  %81 = load i32, i32* @UNZ_OK, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %84, i32* %23, align 4
  br label %85

85:                                               ; preds = %83, %75
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %90 = call i32 @unzlocal_getShort(i32 %88, i32* %89)
  %91 = load i32, i32* @UNZ_OK, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %94, i32* %23, align 4
  br label %95

95:                                               ; preds = %93, %85
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %100 = call i32 @unzlocal_getShort(i32 %98, i32* %99)
  %101 = load i32, i32* @UNZ_OK, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %95
  %104 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %104, i32* %23, align 4
  br label %105

105:                                              ; preds = %103, %95
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 3
  %110 = call i32 @unzlocal_getShort(i32 %108, i32* %109)
  %111 = load i32, i32* @UNZ_OK, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %114, i32* %23, align 4
  br label %115

115:                                              ; preds = %113, %105
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 4
  %120 = call i32 @unzlocal_getLong(i32 %118, i32* %119)
  %121 = load i32, i32* @UNZ_OK, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %115
  %124 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %124, i32* %23, align 4
  br label %125

125:                                              ; preds = %123, %115
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 14
  %129 = call i32 @unzlocal_DosDateToTmuDate(i32 %127, i32* %128)
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 5
  %134 = call i32 @unzlocal_getLong(i32 %132, i32* %133)
  %135 = load i32, i32* @UNZ_OK, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %125
  %138 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %138, i32* %23, align 4
  br label %139

139:                                              ; preds = %137, %125
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 6
  %144 = call i32 @unzlocal_getLong(i32 %142, i32* %143)
  %145 = load i32, i32* @UNZ_OK, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %139
  %148 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %148, i32* %23, align 4
  br label %149

149:                                              ; preds = %147, %139
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 7
  %154 = call i32 @unzlocal_getLong(i32 %152, i32* %153)
  %155 = load i32, i32* @UNZ_OK, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %149
  %158 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %158, i32* %23, align 4
  br label %159

159:                                              ; preds = %157, %149
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 8
  %164 = call i32 @unzlocal_getShort(i32 %162, i32* %163)
  %165 = load i32, i32* @UNZ_OK, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %159
  %168 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %168, i32* %23, align 4
  br label %169

169:                                              ; preds = %167, %159
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 9
  %174 = call i32 @unzlocal_getShort(i32 %172, i32* %173)
  %175 = load i32, i32* @UNZ_OK, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %169
  %178 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %178, i32* %23, align 4
  br label %179

179:                                              ; preds = %177, %169
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 10
  %184 = call i32 @unzlocal_getShort(i32 %182, i32* %183)
  %185 = load i32, i32* @UNZ_OK, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %179
  %188 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %188, i32* %23, align 4
  br label %189

189:                                              ; preds = %187, %179
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 11
  %194 = call i32 @unzlocal_getShort(i32 %192, i32* %193)
  %195 = load i32, i32* @UNZ_OK, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %189
  %198 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %198, i32* %23, align 4
  br label %199

199:                                              ; preds = %197, %189
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 12
  %204 = call i32 @unzlocal_getShort(i32 %202, i32* %203)
  %205 = load i32, i32* @UNZ_OK, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %209

207:                                              ; preds = %199
  %208 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %208, i32* %23, align 4
  br label %209

209:                                              ; preds = %207, %199
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 13
  %214 = call i32 @unzlocal_getLong(i32 %212, i32* %213)
  %215 = load i32, i32* @UNZ_OK, align 4
  %216 = icmp ne i32 %214, %215
  br i1 %216, label %217, label %219

217:                                              ; preds = %209
  %218 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %218, i32* %23, align 4
  br label %219

219:                                              ; preds = %217, %209
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %224 = call i32 @unzlocal_getLong(i32 %222, i32* %223)
  %225 = load i32, i32* @UNZ_OK, align 4
  %226 = icmp ne i32 %224, %225
  br i1 %226, label %227, label %229

227:                                              ; preds = %219
  %228 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %228, i32* %23, align 4
  br label %229

229:                                              ; preds = %227, %219
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 8
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  %233 = load i64, i64* %25, align 8
  %234 = add nsw i64 %233, %232
  store i64 %234, i64* %25, align 8
  %235 = load i32, i32* %23, align 4
  %236 = load i32, i32* @UNZ_OK, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %291

238:                                              ; preds = %229
  %239 = load i8*, i8** %14, align 8
  %240 = icmp ne i8* %239, null
  br i1 %240, label %241, label %291

241:                                              ; preds = %238
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 8
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* %15, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %254

246:                                              ; preds = %241
  %247 = load i8*, i8** %14, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 8
  %249 = load i32, i32* %248, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, i8* %247, i64 %250
  store i8 0, i8* %251, align 1
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 8
  %253 = load i32, i32* %252, align 4
  store i32 %253, i32* %26, align 4
  br label %256

254:                                              ; preds = %241
  %255 = load i32, i32* %15, align 4
  store i32 %255, i32* %26, align 4
  br label %256

256:                                              ; preds = %254, %246
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 8
  %258 = load i32, i32* %257, align 4
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %260, label %286

260:                                              ; preds = %256
  %261 = load i32, i32* %15, align 4
  %262 = icmp sgt i32 %261, 0
  br i1 %262, label %263, label %286

263:                                              ; preds = %260
  %264 = load i32, i32* @unz_GAME_QL, align 4
  %265 = icmp eq i32 %264, 1
  br i1 %265, label %266, label %273

266:                                              ; preds = %263
  %267 = load i8*, i8** %14, align 8
  %268 = load i32, i32* %26, align 4
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = call i64 @fread_ql(i8* %267, i32 %268, i32 1, i32 %271)
  store i64 %272, i64* %27, align 8
  br label %280

273:                                              ; preds = %263
  %274 = load i8*, i8** %14, align 8
  %275 = load i32, i32* %26, align 4
  %276 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = call i64 @fread(i8* %274, i32 %275, i32 1, i32 %278)
  store i64 %279, i64* %27, align 8
  br label %280

280:                                              ; preds = %273, %266
  %281 = load i64, i64* %27, align 8
  %282 = icmp ne i64 %281, 1
  br i1 %282, label %283, label %285

283:                                              ; preds = %280
  %284 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %284, i32* %23, align 4
  br label %285

285:                                              ; preds = %283, %280
  br label %286

286:                                              ; preds = %285, %260, %256
  %287 = load i32, i32* %26, align 4
  %288 = sext i32 %287 to i64
  %289 = load i64, i64* %25, align 8
  %290 = sub nsw i64 %289, %288
  store i64 %290, i64* %25, align 8
  br label %291

291:                                              ; preds = %286, %238, %229
  %292 = load i32, i32* %23, align 4
  %293 = load i32, i32* @UNZ_OK, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %361

295:                                              ; preds = %291
  %296 = load i8*, i8** %16, align 8
  %297 = icmp ne i8* %296, null
  br i1 %297, label %298, label %361

298:                                              ; preds = %295
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 9
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* %17, align 4
  %302 = icmp slt i32 %300, %301
  br i1 %302, label %303, label %306

303:                                              ; preds = %298
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 9
  %305 = load i32, i32* %304, align 4
  store i32 %305, i32* %28, align 4
  br label %308

306:                                              ; preds = %298
  %307 = load i32, i32* %17, align 4
  store i32 %307, i32* %28, align 4
  br label %308

308:                                              ; preds = %306, %303
  %309 = load i64, i64* %25, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %323

311:                                              ; preds = %308
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = load i64, i64* %25, align 8
  %316 = load i32, i32* @SEEK_CUR, align 4
  %317 = call i64 @fseek(i32 %314, i64 %315, i32 %316)
  %318 = icmp eq i64 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %311
  store i64 0, i64* %25, align 8
  br label %322

320:                                              ; preds = %311
  %321 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %321, i32* %23, align 4
  br label %322

322:                                              ; preds = %320, %319
  br label %323

323:                                              ; preds = %322, %308
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 9
  %325 = load i32, i32* %324, align 4
  %326 = icmp sgt i32 %325, 0
  br i1 %326, label %327, label %353

327:                                              ; preds = %323
  %328 = load i32, i32* %17, align 4
  %329 = icmp sgt i32 %328, 0
  br i1 %329, label %330, label %353

330:                                              ; preds = %327
  %331 = load i32, i32* @unz_GAME_QL, align 4
  %332 = icmp eq i32 %331, 1
  br i1 %332, label %333, label %340

333:                                              ; preds = %330
  %334 = load i8*, i8** %16, align 8
  %335 = load i32, i32* %28, align 4
  %336 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 8
  %339 = call i64 @fread_ql(i8* %334, i32 %335, i32 1, i32 %338)
  store i64 %339, i64* %29, align 8
  br label %347

340:                                              ; preds = %330
  %341 = load i8*, i8** %16, align 8
  %342 = load i32, i32* %28, align 4
  %343 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = call i64 @fread(i8* %341, i32 %342, i32 1, i32 %345)
  store i64 %346, i64* %29, align 8
  br label %347

347:                                              ; preds = %340, %333
  %348 = load i64, i64* %29, align 8
  %349 = icmp ne i64 %348, 1
  br i1 %349, label %350, label %352

350:                                              ; preds = %347
  %351 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %351, i32* %23, align 4
  br label %352

352:                                              ; preds = %350, %347
  br label %353

353:                                              ; preds = %352, %327, %323
  %354 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 9
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* %28, align 4
  %357 = sub nsw i32 %355, %356
  %358 = sext i32 %357 to i64
  %359 = load i64, i64* %25, align 8
  %360 = add nsw i64 %359, %358
  store i64 %360, i64* %25, align 8
  br label %367

361:                                              ; preds = %295, %291
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 9
  %363 = load i32, i32* %362, align 4
  %364 = sext i32 %363 to i64
  %365 = load i64, i64* %25, align 8
  %366 = add nsw i64 %365, %364
  store i64 %366, i64* %25, align 8
  br label %367

367:                                              ; preds = %361, %353
  %368 = load i32, i32* %23, align 4
  %369 = load i32, i32* @UNZ_OK, align 4
  %370 = icmp eq i32 %368, %369
  br i1 %370, label %371, label %442

371:                                              ; preds = %367
  %372 = load i8*, i8** %18, align 8
  %373 = icmp ne i8* %372, null
  br i1 %373, label %374, label %442

374:                                              ; preds = %371
  %375 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 10
  %376 = load i32, i32* %375, align 4
  %377 = load i32, i32* %19, align 4
  %378 = icmp slt i32 %376, %377
  br i1 %378, label %379, label %387

379:                                              ; preds = %374
  %380 = load i8*, i8** %18, align 8
  %381 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 10
  %382 = load i32, i32* %381, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i8, i8* %380, i64 %383
  store i8 0, i8* %384, align 1
  %385 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 10
  %386 = load i32, i32* %385, align 4
  store i32 %386, i32* %30, align 4
  br label %389

387:                                              ; preds = %374
  %388 = load i32, i32* %19, align 4
  store i32 %388, i32* %30, align 4
  br label %389

389:                                              ; preds = %387, %379
  %390 = load i64, i64* %25, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %404

392:                                              ; preds = %389
  %393 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %394 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %393, i32 0, i32 2
  %395 = load i32, i32* %394, align 8
  %396 = load i64, i64* %25, align 8
  %397 = load i32, i32* @SEEK_CUR, align 4
  %398 = call i64 @fseek(i32 %395, i64 %396, i32 %397)
  %399 = icmp eq i64 %398, 0
  br i1 %399, label %400, label %401

400:                                              ; preds = %392
  store i64 0, i64* %25, align 8
  br label %403

401:                                              ; preds = %392
  %402 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %402, i32* %23, align 4
  br label %403

403:                                              ; preds = %401, %400
  br label %404

404:                                              ; preds = %403, %389
  %405 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 10
  %406 = load i32, i32* %405, align 4
  %407 = icmp sgt i32 %406, 0
  br i1 %407, label %408, label %434

408:                                              ; preds = %404
  %409 = load i32, i32* %19, align 4
  %410 = icmp sgt i32 %409, 0
  br i1 %410, label %411, label %434

411:                                              ; preds = %408
  %412 = load i32, i32* @unz_GAME_QL, align 4
  %413 = icmp eq i32 %412, 1
  br i1 %413, label %414, label %421

414:                                              ; preds = %411
  %415 = load i8*, i8** %18, align 8
  %416 = load i32, i32* %30, align 4
  %417 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %418 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %417, i32 0, i32 2
  %419 = load i32, i32* %418, align 8
  %420 = call i64 @fread_ql(i8* %415, i32 %416, i32 1, i32 %419)
  store i64 %420, i64* %31, align 8
  br label %428

421:                                              ; preds = %411
  %422 = load i8*, i8** %18, align 8
  %423 = load i32, i32* %30, align 4
  %424 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %425 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %424, i32 0, i32 2
  %426 = load i32, i32* %425, align 8
  %427 = call i64 @fread(i8* %422, i32 %423, i32 1, i32 %426)
  store i64 %427, i64* %31, align 8
  br label %428

428:                                              ; preds = %421, %414
  %429 = load i64, i64* %31, align 8
  %430 = icmp ne i64 %429, 1
  br i1 %430, label %431, label %433

431:                                              ; preds = %428
  %432 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %432, i32* %23, align 4
  br label %433

433:                                              ; preds = %431, %428
  br label %434

434:                                              ; preds = %433, %408, %404
  %435 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 10
  %436 = load i32, i32* %435, align 4
  %437 = load i32, i32* %30, align 4
  %438 = sub nsw i32 %436, %437
  %439 = sext i32 %438 to i64
  %440 = load i64, i64* %25, align 8
  %441 = add nsw i64 %440, %439
  store i64 %441, i64* %25, align 8
  br label %448

442:                                              ; preds = %371, %367
  %443 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 10
  %444 = load i32, i32* %443, align 4
  %445 = sext i32 %444 to i64
  %446 = load i64, i64* %25, align 8
  %447 = add nsw i64 %446, %445
  store i64 %447, i64* %25, align 8
  br label %448

448:                                              ; preds = %442, %434
  %449 = load i32, i32* %23, align 4
  %450 = load i32, i32* @UNZ_OK, align 4
  %451 = icmp eq i32 %449, %450
  br i1 %451, label %452, label %459

452:                                              ; preds = %448
  %453 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %454 = icmp ne %struct.TYPE_8__* %453, null
  br i1 %454, label %455, label %459

455:                                              ; preds = %452
  %456 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %457 = bitcast %struct.TYPE_8__* %456 to i8*
  %458 = bitcast %struct.TYPE_8__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %457, i8* align 4 %458, i64 60, i1 false)
  br label %459

459:                                              ; preds = %455, %452, %448
  %460 = load i32, i32* %23, align 4
  %461 = load i32, i32* @UNZ_OK, align 4
  %462 = icmp eq i32 %460, %461
  br i1 %462, label %463, label %470

463:                                              ; preds = %459
  %464 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %465 = icmp ne %struct.TYPE_7__* %464, null
  br i1 %465, label %466, label %470

466:                                              ; preds = %463
  %467 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %468 = bitcast %struct.TYPE_7__* %467 to i8*
  %469 = bitcast %struct.TYPE_7__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %468, i8* align 4 %469, i64 4, i1 false)
  br label %470

470:                                              ; preds = %466, %463, %459
  %471 = load i32, i32* %23, align 4
  store i32 %471, i32* %10, align 4
  br label %472

472:                                              ; preds = %470, %35
  %473 = load i32, i32* %10, align 4
  ret i32 %473
}

declare dso_local i64 @fseek(i32, i64, i32) #1

declare dso_local i32 @unzlocal_getLong(i32, i32*) #1

declare dso_local i32 @unzlocal_getShort(i32, i32*) #1

declare dso_local i32 @unzlocal_DosDateToTmuDate(i32, i32*) #1

declare dso_local i64 @fread_ql(i8*, i32, i32, i32) #1

declare dso_local i64 @fread(i8*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
