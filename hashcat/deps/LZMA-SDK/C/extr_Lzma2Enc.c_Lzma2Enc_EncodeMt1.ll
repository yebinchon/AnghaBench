; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Lzma2Enc.c_Lzma2Enc_EncodeMt1.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Lzma2Enc.c_Lzma2Enc_EncodeMt1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64*, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_12__ = type { i64, i64, i32 }
%struct.TYPE_14__ = type { i64, i64, i32, %struct.TYPE_15__, i32* }
%struct.TYPE_15__ = type { i32 }

@False = common dso_local global i32 0, align 4
@SZ_ERROR_MEM = common dso_local global i32 0, align 4
@LimitedSeqInStream_Read = common dso_local global i32 0, align 4
@LZMA2_CHUNK_SIZE_COMPRESSED_MAX = common dso_local global i64 0, align 8
@SZ_OK = common dso_local global i32 0, align 4
@LZMA2_ENC_PROPS__BLOCK_SIZE__SOLID = common dso_local global i64 0, align 8
@LZMA2_KEEP_WINDOW_SIZE = common dso_local global i32 0, align 4
@SZ_ERROR_FAIL = common dso_local global i32 0, align 4
@SZ_ERROR_OUTPUT_EOF = common dso_local global i32 0, align 4
@SZ_ERROR_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*, i32*, i64*, i64*, i32*, i64*, i64, i32, i32*)* @Lzma2Enc_EncodeMt1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Lzma2Enc_EncodeMt1(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i32* %2, i64* %3, i64* %4, i32* %5, i64* %6, i64 %7, i32 %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_14__, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %13, align 8
  store i32* %2, i32** %14, align 8
  store i64* %3, i64** %15, align 8
  store i64* %4, i64** %16, align 8
  store i32* %5, i32** %17, align 8
  store i64* %6, i64** %18, align 8
  store i64 %7, i64* %19, align 8
  store i32 %8, i32* %20, align 4
  store i32* %9, i32** %21, align 8
  store i64 0, i64* %22, align 8
  store i64 0, i64* %23, align 8
  store i64 0, i64* %24, align 8
  %32 = load i64*, i64** %15, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %10
  %35 = load i64*, i64** %16, align 8
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %24, align 8
  %37 = load i64*, i64** %16, align 8
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %34, %10
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %60, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @False, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @LzmaEnc_Create(i32 %49)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %43
  %58 = load i32, i32* @SZ_ERROR_MEM, align 4
  store i32 %58, i32* %11, align 4
  br label %338

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %59, %38
  %61 = load i32*, i32** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 4
  store i32* %61, i32** %62, align 8
  %63 = load i32*, i32** %17, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @LimitedSeqInStream_Read, align 4
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i64*, i64** %15, align 8
  %71 = icmp ne i64* %70, null
  br i1 %71, label %94, label %72

72:                                               ; preds = %69
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = icmp ne i64* %75, null
  br i1 %76, label %93, label %77

77:                                               ; preds = %72
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i64, i64* @LZMA2_CHUNK_SIZE_COMPRESSED_MAX, align 8
  %82 = call i64 @ISzAlloc_Alloc(i32 %80, i64 %81)
  %83 = inttoptr i64 %82 to i64*
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  store i64* %83, i64** %85, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = icmp ne i64* %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %77
  %91 = load i32, i32* @SZ_ERROR_MEM, align 4
  store i32 %91, i32* %11, align 4
  br label %338

92:                                               ; preds = %77
  br label %93

93:                                               ; preds = %92, %72
  br label %94

94:                                               ; preds = %93, %69
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 4
  %98 = call i32 @Lzma2EncInt_InitStream(%struct.TYPE_12__* %95, %struct.TYPE_16__* %97)
  %99 = call i32 @RINOK(i32 %98)
  br label %100

100:                                              ; preds = %337, %94
  %101 = load i32, i32* @SZ_OK, align 4
  store i32 %101, i32* %26, align 4
  store i64 0, i64* %27, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %103 = call i32 @Lzma2EncInt_InitBlock(%struct.TYPE_12__* %102)
  %104 = call i32 @LimitedSeqInStream_Init(%struct.TYPE_14__* %25)
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  store i64 %108, i64* %109, align 8
  %110 = load i32*, i32** %17, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %167

112:                                              ; preds = %100
  store i64 -1, i64* %28, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, -1
  br i1 %116, label %117, label %129

117:                                              ; preds = %112
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %22, align 8
  %122 = icmp sge i64 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %117
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %22, align 8
  %128 = sub nsw i64 %126, %127
  store i64 %128, i64* %28, align 8
  br label %129

129:                                              ; preds = %123, %117, %112
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @LZMA2_ENC_PROPS__BLOCK_SIZE__SOLID, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %148

136:                                              ; preds = %129
  %137 = load i64, i64* %28, align 8
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp sgt i64 %137, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %136
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %28, align 8
  br label %148

148:                                              ; preds = %143, %136, %129
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* %28, align 8
  %153 = call i32 @LzmaEnc_SetDataSize(i64 %151, i64 %152)
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 3
  %158 = load i32, i32* @LZMA2_KEEP_WINDOW_SIZE, align 4
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @LzmaEnc_PrepareForLzma2(i64 %156, %struct.TYPE_15__* %157, i32 %158, i32 %161, i32 %164)
  %166 = call i32 @RINOK(i32 %165)
  br label %206

167:                                              ; preds = %100
  %168 = load i64, i64* %19, align 8
  %169 = load i64, i64* %22, align 8
  %170 = sub i64 %168, %169
  store i64 %170, i64* %27, align 8
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @LZMA2_ENC_PROPS__BLOCK_SIZE__SOLID, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %189

177:                                              ; preds = %167
  %178 = load i64, i64* %27, align 8
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp ugt i64 %178, %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %177
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  store i64 %188, i64* %27, align 8
  br label %189

189:                                              ; preds = %184, %177, %167
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load i64*, i64** %18, align 8
  %194 = load i64, i64* %22, align 8
  %195 = getelementptr inbounds i64, i64* %193, i64 %194
  %196 = load i64, i64* %27, align 8
  %197 = load i32, i32* @LZMA2_KEEP_WINDOW_SIZE, align 4
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @LzmaEnc_MemPrepare(i64 %192, i64* %195, i64 %196, i32 %197, i32 %200, i32 %203)
  %205 = call i32 @RINOK(i32 %204)
  br label %206

206:                                              ; preds = %189, %148
  br label %207

207:                                              ; preds = %267, %206
  %208 = load i64, i64* @LZMA2_CHUNK_SIZE_COMPRESSED_MAX, align 8
  store i64 %208, i64* %29, align 8
  %209 = load i64*, i64** %15, align 8
  %210 = icmp ne i64* %209, null
  br i1 %210, label %211, label %215

211:                                              ; preds = %207
  %212 = load i64, i64* %24, align 8
  %213 = load i64, i64* %23, align 8
  %214 = sub i64 %212, %213
  store i64 %214, i64* %29, align 8
  br label %215

215:                                              ; preds = %211, %207
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %217 = load i64*, i64** %15, align 8
  %218 = icmp ne i64* %217, null
  br i1 %218, label %219, label %223

219:                                              ; preds = %215
  %220 = load i64*, i64** %15, align 8
  %221 = load i64, i64* %23, align 8
  %222 = getelementptr inbounds i64, i64* %220, i64 %221
  br label %227

223:                                              ; preds = %215
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 1
  %226 = load i64*, i64** %225, align 8
  br label %227

227:                                              ; preds = %223, %219
  %228 = phi i64* [ %222, %219 ], [ %226, %223 ]
  %229 = load i64*, i64** %15, align 8
  %230 = icmp ne i64* %229, null
  br i1 %230, label %231, label %232

231:                                              ; preds = %227
  br label %234

232:                                              ; preds = %227
  %233 = load i32*, i32** %14, align 8
  br label %234

234:                                              ; preds = %232, %231
  %235 = phi i32* [ null, %231 ], [ %233, %232 ]
  %236 = call i32 @Lzma2EncInt_EncodeSubblock(%struct.TYPE_12__* %216, i64* %228, i64* %29, i32* %235)
  store i32 %236, i32* %26, align 4
  %237 = load i32, i32* %26, align 4
  %238 = load i32, i32* @SZ_OK, align 4
  %239 = icmp ne i32 %237, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %234
  br label %268

241:                                              ; preds = %234
  %242 = load i64, i64* %29, align 8
  %243 = load i64, i64* %23, align 8
  %244 = add i64 %243, %242
  store i64 %244, i64* %23, align 8
  %245 = load i64*, i64** %15, align 8
  %246 = icmp ne i64* %245, null
  br i1 %246, label %247, label %250

247:                                              ; preds = %241
  %248 = load i64, i64* %23, align 8
  %249 = load i64*, i64** %16, align 8
  store i64 %248, i64* %249, align 8
  br label %250

250:                                              ; preds = %247, %241
  %251 = load i32*, i32** %21, align 8
  %252 = load i64, i64* %22, align 8
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = add i64 %252, %255
  %257 = load i64, i64* %23, align 8
  %258 = call i32 @Progress(i32* %251, i64 %256, i64 %257)
  store i32 %258, i32* %26, align 4
  %259 = load i32, i32* %26, align 4
  %260 = load i32, i32* @SZ_OK, align 4
  %261 = icmp ne i32 %259, %260
  br i1 %261, label %262, label %263

262:                                              ; preds = %250
  br label %268

263:                                              ; preds = %250
  %264 = load i64, i64* %29, align 8
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %263
  br label %268

267:                                              ; preds = %263
  br label %207

268:                                              ; preds = %266, %262, %240
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = call i32 @LzmaEnc_Finish(i64 %271)
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* %22, align 8
  %277 = add i64 %276, %275
  store i64 %277, i64* %22, align 8
  %278 = load i32, i32* %26, align 4
  %279 = call i32 @RINOK(i32 %278)
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load i32*, i32** %17, align 8
  %284 = icmp ne i32* %283, null
  br i1 %284, label %285, label %288

285:                                              ; preds = %268
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  br label %290

288:                                              ; preds = %268
  %289 = load i64, i64* %27, align 8
  br label %290

290:                                              ; preds = %288, %285
  %291 = phi i64 [ %287, %285 ], [ %289, %288 ]
  %292 = icmp ne i64 %282, %291
  br i1 %292, label %293, label %295

293:                                              ; preds = %290
  %294 = load i32, i32* @SZ_ERROR_FAIL, align 4
  store i32 %294, i32* %11, align 4
  br label %338

295:                                              ; preds = %290
  %296 = load i32*, i32** %17, align 8
  %297 = icmp ne i32* %296, null
  br i1 %297, label %298, label %302

298:                                              ; preds = %295
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %306, label %337

302:                                              ; preds = %295
  %303 = load i64, i64* %22, align 8
  %304 = load i64, i64* %19, align 8
  %305 = icmp eq i64 %303, %304
  br i1 %305, label %306, label %337

306:                                              ; preds = %302, %298
  %307 = load i32, i32* %20, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %335

309:                                              ; preds = %306
  %310 = load i64*, i64** %15, align 8
  %311 = icmp ne i64* %310, null
  br i1 %311, label %312, label %327

312:                                              ; preds = %309
  %313 = load i64*, i64** %16, align 8
  %314 = load i64, i64* %313, align 8
  store i64 %314, i64* %30, align 8
  %315 = load i64, i64* %30, align 8
  %316 = load i64, i64* %24, align 8
  %317 = icmp uge i64 %315, %316
  br i1 %317, label %318, label %320

318:                                              ; preds = %312
  %319 = load i32, i32* @SZ_ERROR_OUTPUT_EOF, align 4
  store i32 %319, i32* %11, align 4
  br label %338

320:                                              ; preds = %312
  %321 = load i64*, i64** %15, align 8
  %322 = load i64, i64* %30, align 8
  %323 = getelementptr inbounds i64, i64* %321, i64 %322
  store i64 0, i64* %323, align 8
  %324 = load i64, i64* %30, align 8
  %325 = add i64 %324, 1
  %326 = load i64*, i64** %16, align 8
  store i64 %325, i64* %326, align 8
  br label %334

327:                                              ; preds = %309
  store i64 0, i64* %31, align 8
  %328 = load i32*, i32** %14, align 8
  %329 = call i32 @ISeqOutStream_Write(i32* %328, i64* %31, i32 1)
  %330 = icmp ne i32 %329, 1
  br i1 %330, label %331, label %333

331:                                              ; preds = %327
  %332 = load i32, i32* @SZ_ERROR_WRITE, align 4
  store i32 %332, i32* %11, align 4
  br label %338

333:                                              ; preds = %327
  br label %334

334:                                              ; preds = %333, %320
  br label %335

335:                                              ; preds = %334, %306
  %336 = load i32, i32* @SZ_OK, align 4
  store i32 %336, i32* %11, align 4
  br label %338

337:                                              ; preds = %302, %298
  br label %100

338:                                              ; preds = %335, %331, %318, %293, %90, %57
  %339 = load i32, i32* %11, align 4
  ret i32 %339
}

declare dso_local i64 @LzmaEnc_Create(i32) #1

declare dso_local i64 @ISzAlloc_Alloc(i32, i64) #1

declare dso_local i32 @RINOK(i32) #1

declare dso_local i32 @Lzma2EncInt_InitStream(%struct.TYPE_12__*, %struct.TYPE_16__*) #1

declare dso_local i32 @Lzma2EncInt_InitBlock(%struct.TYPE_12__*) #1

declare dso_local i32 @LimitedSeqInStream_Init(%struct.TYPE_14__*) #1

declare dso_local i32 @LzmaEnc_SetDataSize(i64, i64) #1

declare dso_local i32 @LzmaEnc_PrepareForLzma2(i64, %struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @LzmaEnc_MemPrepare(i64, i64*, i64, i32, i32, i32) #1

declare dso_local i32 @Lzma2EncInt_EncodeSubblock(%struct.TYPE_12__*, i64*, i64*, i32*) #1

declare dso_local i32 @Progress(i32*, i64, i64) #1

declare dso_local i32 @LzmaEnc_Finish(i64) #1

declare dso_local i32 @ISeqOutStream_Write(i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
