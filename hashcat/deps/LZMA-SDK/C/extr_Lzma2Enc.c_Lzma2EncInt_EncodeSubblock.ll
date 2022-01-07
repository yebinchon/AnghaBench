; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Lzma2Enc.c_Lzma2EncInt_EncodeSubblock.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Lzma2Enc.c_Lzma2EncInt_EncodeSubblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i8*, i64, i32 }

@LZMA2_UNPACK_SIZE_MAX = common dso_local global i32 0, align 4
@SZ_ERROR_OUTPUT_EOF = common dso_local global i64 0, align 8
@LZMA2_PACK_SIZE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"\0ApackSize = %7d unpackSize = %7d  \00", align 1
@SZ_OK = common dso_local global i64 0, align 8
@True = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"################# COPY           \00", align 1
@LZMA2_COPY_CHUNK_SIZE = common dso_local global i32 0, align 4
@LZMA2_CONTROL_COPY_RESET_DIC = common dso_local global i64 0, align 8
@LZMA2_CONTROL_COPY_NO_RESET = common dso_local global i64 0, align 8
@SZ_ERROR_WRITE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"               \00", align 1
@LZMA2_CONTROL_LZMA = common dso_local global i32 0, align 4
@False = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i64*, i64*, i32*)* @Lzma2EncInt_EncodeSubblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Lzma2EncInt_EncodeSubblock(%struct.TYPE_3__* %0, i64* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %22 = load i64*, i64** %8, align 8
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  store i64 %24, i64* %11, align 8
  %25 = load i32, i32* @LZMA2_UNPACK_SIZE_MAX, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  %32 = add nsw i32 5, %31
  store i32 %32, i32* %13, align 4
  %33 = load i64*, i64** %8, align 8
  store i64 0, i64* %33, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i32, i32* %13, align 4
  %36 = zext i32 %35 to i64
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = load i64, i64* @SZ_ERROR_OUTPUT_EOF, align 8
  store i64 %39, i64* %5, align 8
  br label %316

40:                                               ; preds = %4
  %41 = load i32, i32* %13, align 4
  %42 = zext i32 %41 to i64
  %43 = load i64, i64* %11, align 8
  %44 = sub i64 %43, %42
  store i64 %44, i64* %11, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @LzmaEnc_SaveState(i32 %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i64*, i64** %7, align 8
  %56 = load i32, i32* %13, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i32, i32* @LZMA2_PACK_SIZE_MAX, align 4
  %60 = call i64 @LzmaEnc_CodeOneMemBlock(i32 %51, i8* %54, i64* %58, i64* %11, i32 %59, i32* %12)
  store i64 %60, i64* %15, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %61, i32 %62)
  %64 = call i32 @PRF(i32 %63)
  %65 = load i32, i32* %12, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %40
  %68 = load i64, i64* %15, align 8
  store i64 %68, i64* %5, align 8
  br label %316

69:                                               ; preds = %40
  %70 = load i64, i64* %15, align 8
  %71 = load i64, i64* @SZ_OK, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = load i64, i64* %11, align 8
  %75 = add i64 %74, 2
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp uge i64 %75, %77
  br i1 %78, label %82, label %79

79:                                               ; preds = %73
  %80 = load i64, i64* %11, align 8
  %81 = icmp ugt i64 %80, 65536
  br label %82

82:                                               ; preds = %79, %73
  %83 = phi i1 [ true, %73 ], [ %81, %79 ]
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %14, align 4
  br label %94

85:                                               ; preds = %69
  %86 = load i64, i64* %15, align 8
  %87 = load i64, i64* @SZ_ERROR_OUTPUT_EOF, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i64, i64* %15, align 8
  store i64 %90, i64* %5, align 8
  br label %316

91:                                               ; preds = %85
  %92 = load i64, i64* @SZ_OK, align 8
  store i64 %92, i64* %15, align 8
  %93 = load i32, i32* @True, align 4
  store i32 %93, i32* %14, align 4
  br label %94

94:                                               ; preds = %91, %82
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %203

97:                                               ; preds = %94
  store i64 0, i64* %16, align 8
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %99 = call i32 @PRF(i32 %98)
  br label %100

100:                                              ; preds = %196, %97
  %101 = load i32, i32* %12, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %197

103:                                              ; preds = %100
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @LZMA2_COPY_CHUNK_SIZE, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i32, i32* %12, align 4
  br label %111

109:                                              ; preds = %103
  %110 = load i32, i32* @LZMA2_COPY_CHUNK_SIZE, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  store i32 %112, i32* %17, align 4
  %113 = load i64, i64* %10, align 8
  %114 = load i64, i64* %16, align 8
  %115 = sub i64 %113, %114
  %116 = load i32, i32* %17, align 4
  %117 = add nsw i32 %116, 3
  %118 = sext i32 %117 to i64
  %119 = icmp ult i64 %115, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %111
  %121 = load i64, i64* @SZ_ERROR_OUTPUT_EOF, align 8
  store i64 %121, i64* %5, align 8
  br label %316

122:                                              ; preds = %111
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load i64, i64* @LZMA2_CONTROL_COPY_RESET_DIC, align 8
  br label %131

129:                                              ; preds = %122
  %130 = load i64, i64* @LZMA2_CONTROL_COPY_NO_RESET, align 8
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i64 [ %128, %127 ], [ %130, %129 ]
  %133 = load i64*, i64** %7, align 8
  %134 = load i64, i64* %16, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %16, align 8
  %136 = getelementptr inbounds i64, i64* %133, i64 %134
  store i64 %132, i64* %136, align 8
  %137 = load i32, i32* %17, align 4
  %138 = sub nsw i32 %137, 1
  %139 = ashr i32 %138, 8
  %140 = sext i32 %139 to i64
  %141 = load i64*, i64** %7, align 8
  %142 = load i64, i64* %16, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %16, align 8
  %144 = getelementptr inbounds i64, i64* %141, i64 %142
  store i64 %140, i64* %144, align 8
  %145 = load i32, i32* %17, align 4
  %146 = sub nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = load i64*, i64** %7, align 8
  %149 = load i64, i64* %16, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %16, align 8
  %151 = getelementptr inbounds i64, i64* %148, i64 %149
  store i64 %147, i64* %151, align 8
  %152 = load i64*, i64** %7, align 8
  %153 = load i64, i64* %16, align 8
  %154 = getelementptr inbounds i64, i64* %152, i64 %153
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = call i64 @LzmaEnc_GetCurBuf(i32 %157)
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = sub nsw i64 %158, %160
  %162 = load i32, i32* %17, align 4
  %163 = call i32 @memcpy(i64* %154, i64 %161, i32 %162)
  %164 = load i32, i32* %17, align 4
  %165 = load i32, i32* %12, align 4
  %166 = sub nsw i32 %165, %164
  store i32 %166, i32* %12, align 4
  %167 = load i32, i32* %17, align 4
  %168 = sext i32 %167 to i64
  %169 = load i64, i64* %16, align 8
  %170 = add i64 %169, %168
  store i64 %170, i64* %16, align 8
  %171 = load i32, i32* %17, align 4
  %172 = sext i32 %171 to i64
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %175, %172
  store i64 %176, i64* %174, align 8
  %177 = load i32*, i32** %9, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %193

179:                                              ; preds = %131
  %180 = load i64, i64* %16, align 8
  %181 = load i64*, i64** %8, align 8
  %182 = load i64, i64* %181, align 8
  %183 = add i64 %182, %180
  store i64 %183, i64* %181, align 8
  %184 = load i32*, i32** %9, align 8
  %185 = load i64*, i64** %7, align 8
  %186 = load i64, i64* %16, align 8
  %187 = call i64 @ISeqOutStream_Write(i32* %184, i64* %185, i64 %186)
  %188 = load i64, i64* %16, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %179
  %191 = load i64, i64* @SZ_ERROR_WRITE, align 8
  store i64 %191, i64* %5, align 8
  br label %316

192:                                              ; preds = %179
  store i64 0, i64* %16, align 8
  br label %196

193:                                              ; preds = %131
  %194 = load i64, i64* %16, align 8
  %195 = load i64*, i64** %8, align 8
  store i64 %194, i64* %195, align 8
  br label %196

196:                                              ; preds = %193, %192
  br label %100

197:                                              ; preds = %100
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @LzmaEnc_RestoreState(i32 %200)
  %202 = load i64, i64* @SZ_OK, align 8
  store i64 %202, i64* %5, align 8
  br label %316

203:                                              ; preds = %94
  store i64 0, i64* %18, align 8
  %204 = load i32, i32* %12, align 4
  %205 = sub nsw i32 %204, 1
  store i32 %205, i32* %19, align 4
  %206 = load i64, i64* %11, align 8
  %207 = sub i64 %206, 1
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %20, align 4
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %203
  br label %229

214:                                              ; preds = %203
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 1
  %217 = load i8*, i8** %216, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %219, label %226

219:                                              ; preds = %214
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 2
  %222 = load i8*, i8** %221, align 8
  %223 = icmp ne i8* %222, null
  %224 = zext i1 %223 to i64
  %225 = select i1 %223, i32 2, i32 1
  br label %227

226:                                              ; preds = %214
  br label %227

227:                                              ; preds = %226, %219
  %228 = phi i32 [ %225, %219 ], [ 0, %226 ]
  br label %229

229:                                              ; preds = %227, %213
  %230 = phi i32 [ 3, %213 ], [ %228, %227 ]
  store i32 %230, i32* %21, align 4
  %231 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %232 = call i32 @PRF(i32 %231)
  %233 = load i32, i32* @LZMA2_CONTROL_LZMA, align 4
  %234 = load i32, i32* %21, align 4
  %235 = shl i32 %234, 5
  %236 = or i32 %233, %235
  %237 = load i32, i32* %19, align 4
  %238 = ashr i32 %237, 16
  %239 = and i32 %238, 31
  %240 = or i32 %236, %239
  %241 = zext i32 %240 to i64
  %242 = load i64*, i64** %7, align 8
  %243 = load i64, i64* %18, align 8
  %244 = add i64 %243, 1
  store i64 %244, i64* %18, align 8
  %245 = getelementptr inbounds i64, i64* %242, i64 %243
  store i64 %241, i64* %245, align 8
  %246 = load i32, i32* %19, align 4
  %247 = ashr i32 %246, 8
  %248 = sext i32 %247 to i64
  %249 = load i64*, i64** %7, align 8
  %250 = load i64, i64* %18, align 8
  %251 = add i64 %250, 1
  store i64 %251, i64* %18, align 8
  %252 = getelementptr inbounds i64, i64* %249, i64 %250
  store i64 %248, i64* %252, align 8
  %253 = load i32, i32* %19, align 4
  %254 = sext i32 %253 to i64
  %255 = load i64*, i64** %7, align 8
  %256 = load i64, i64* %18, align 8
  %257 = add i64 %256, 1
  store i64 %257, i64* %18, align 8
  %258 = getelementptr inbounds i64, i64* %255, i64 %256
  store i64 %254, i64* %258, align 8
  %259 = load i32, i32* %20, align 4
  %260 = ashr i32 %259, 8
  %261 = sext i32 %260 to i64
  %262 = load i64*, i64** %7, align 8
  %263 = load i64, i64* %18, align 8
  %264 = add i64 %263, 1
  store i64 %264, i64* %18, align 8
  %265 = getelementptr inbounds i64, i64* %262, i64 %263
  store i64 %261, i64* %265, align 8
  %266 = load i32, i32* %20, align 4
  %267 = sext i32 %266 to i64
  %268 = load i64*, i64** %7, align 8
  %269 = load i64, i64* %18, align 8
  %270 = add i64 %269, 1
  store i64 %270, i64* %18, align 8
  %271 = getelementptr inbounds i64, i64* %268, i64 %269
  store i64 %267, i64* %271, align 8
  %272 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 2
  %274 = load i8*, i8** %273, align 8
  %275 = icmp ne i8* %274, null
  br i1 %275, label %276, label %284

276:                                              ; preds = %229
  %277 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 3
  %279 = load i64, i64* %278, align 8
  %280 = load i64*, i64** %7, align 8
  %281 = load i64, i64* %18, align 8
  %282 = add i64 %281, 1
  store i64 %282, i64* %18, align 8
  %283 = getelementptr inbounds i64, i64* %280, i64 %281
  store i64 %279, i64* %283, align 8
  br label %284

284:                                              ; preds = %276, %229
  %285 = load i8*, i8** @False, align 8
  %286 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 2
  store i8* %285, i8** %287, align 8
  %288 = load i8*, i8** @False, align 8
  %289 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %289, i32 0, i32 1
  store i8* %288, i8** %290, align 8
  %291 = load i64, i64* %11, align 8
  %292 = load i64, i64* %18, align 8
  %293 = add i64 %292, %291
  store i64 %293, i64* %18, align 8
  %294 = load i32, i32* %12, align 4
  %295 = sext i32 %294 to i64
  %296 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = add nsw i64 %298, %295
  store i64 %299, i64* %297, align 8
  %300 = load i32*, i32** %9, align 8
  %301 = icmp ne i32* %300, null
  br i1 %301, label %302, label %312

302:                                              ; preds = %284
  %303 = load i32*, i32** %9, align 8
  %304 = load i64*, i64** %7, align 8
  %305 = load i64, i64* %18, align 8
  %306 = call i64 @ISeqOutStream_Write(i32* %303, i64* %304, i64 %305)
  %307 = load i64, i64* %18, align 8
  %308 = icmp ne i64 %306, %307
  br i1 %308, label %309, label %311

309:                                              ; preds = %302
  %310 = load i64, i64* @SZ_ERROR_WRITE, align 8
  store i64 %310, i64* %5, align 8
  br label %316

311:                                              ; preds = %302
  br label %312

312:                                              ; preds = %311, %284
  %313 = load i64, i64* %18, align 8
  %314 = load i64*, i64** %8, align 8
  store i64 %313, i64* %314, align 8
  %315 = load i64, i64* @SZ_OK, align 8
  store i64 %315, i64* %5, align 8
  br label %316

316:                                              ; preds = %312, %309, %197, %190, %120, %89, %67, %38
  %317 = load i64, i64* %5, align 8
  ret i64 %317
}

declare dso_local i32 @LzmaEnc_SaveState(i32) #1

declare dso_local i64 @LzmaEnc_CodeOneMemBlock(i32, i8*, i64*, i64*, i32, i32*) #1

declare dso_local i32 @PRF(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @memcpy(i64*, i64, i32) #1

declare dso_local i64 @LzmaEnc_GetCurBuf(i32) #1

declare dso_local i64 @ISeqOutStream_Write(i32*, i64*, i64) #1

declare dso_local i32 @LzmaEnc_RestoreState(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
