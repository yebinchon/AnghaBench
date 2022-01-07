; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderercommon/extr_tr_image_png.c_R_LoadPNG.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderercommon/extr_tr_image_png.c_R_LoadPNG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* (i32)*, i32 (i32*)*, i32 (i32, i8*, i8*)* }
%struct.BufferedFile = type { i32 }
%struct.PNG_ChunkHeader = type { i32, i32 }
%struct.PNG_Chunk_IHDR = type { i64, i64, i32, i32, i32, i32 }

@qfalse = common dso_local global i32 0, align 4
@__const.R_LoadPNG.TransparentColour = private unnamed_addr constant [6 x i32] [i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
@PNG_Signature_Size = common dso_local global i32 0, align 4
@PNG_Signature = common dso_local global i32 0, align 4
@PNG_ChunkHeader_Size = common dso_local global i32 0, align 4
@PNG_ChunkType_IHDR = common dso_local global i32 0, align 4
@PNG_Chunk_IHDR_Size = common dso_local global i32 0, align 4
@PNG_ChunkCRC_Size = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@Q3IMAGE_BYTESPERPIXEL = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PRINT_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: invalid image size\0A\00", align 1
@PNG_CompressionMethod_0 = common dso_local global i64 0, align 8
@PNG_FilterMethod_0 = common dso_local global i64 0, align 8
@PNG_ChunkType_PLTE = common dso_local global i32 0, align 4
@PNG_ChunkType_tRNS = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_LoadPNG(i8* %0, i32** %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.BufferedFile*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.PNG_ChunkHeader*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.PNG_Chunk_IHDR*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [1024 x i32], align 16
  %24 = alloca i32, align 4
  %25 = alloca [6 x i32], align 16
  %26 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %27 = load i32, i32* @qfalse, align 4
  store i32 %27, i32* %24, align 4
  %28 = bitcast [6 x i32]* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %28, i8* align 16 bitcast ([6 x i32]* @__const.R_LoadPNG.TransparentColour to i8*), i64 24, i1 false)
  %29 = load i8*, i8** %5, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32**, i32*** %6, align 8
  %33 = icmp ne i32** %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31, %4
  br label %579

35:                                               ; preds = %31
  %36 = load i32**, i32*** %6, align 8
  store i32* null, i32** %36, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32*, i32** %7, align 8
  store i32 0, i32* %40, align 4
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i32*, i32** %8, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32*, i32** %8, align 8
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i8*, i8** %5, align 8
  %48 = call %struct.BufferedFile* @ReadBufferedFile(i8* %47)
  store %struct.BufferedFile* %48, %struct.BufferedFile** %9, align 8
  %49 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %50 = icmp ne %struct.BufferedFile* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %579

52:                                               ; preds = %46
  %53 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %54 = load i32, i32* @PNG_Signature_Size, align 4
  %55 = call i8* @BufferedFileRead(%struct.BufferedFile* %53, i32 %54)
  %56 = bitcast i8* %55 to i32*
  store i32* %56, i32** %11, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %52
  %60 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %61 = call i32 @CloseBufferedFile(%struct.BufferedFile* %60)
  br label %579

62:                                               ; preds = %52
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* @PNG_Signature, align 4
  %65 = load i32, i32* @PNG_Signature_Size, align 4
  %66 = call i64 @memcmp(i32* %63, i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %70 = call i32 @CloseBufferedFile(%struct.BufferedFile* %69)
  br label %579

71:                                               ; preds = %62
  %72 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %73 = load i32, i32* @PNG_ChunkHeader_Size, align 4
  %74 = call i8* @BufferedFileRead(%struct.BufferedFile* %72, i32 %73)
  %75 = bitcast i8* %74 to %struct.PNG_ChunkHeader*
  store %struct.PNG_ChunkHeader* %75, %struct.PNG_ChunkHeader** %12, align 8
  %76 = load %struct.PNG_ChunkHeader*, %struct.PNG_ChunkHeader** %12, align 8
  %77 = icmp ne %struct.PNG_ChunkHeader* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %71
  %79 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %80 = call i32 @CloseBufferedFile(%struct.BufferedFile* %79)
  br label %579

81:                                               ; preds = %71
  %82 = load %struct.PNG_ChunkHeader*, %struct.PNG_ChunkHeader** %12, align 8
  %83 = getelementptr inbounds %struct.PNG_ChunkHeader, %struct.PNG_ChunkHeader* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @BigLong(i32 %84)
  store i32 %85, i32* %13, align 4
  %86 = load %struct.PNG_ChunkHeader*, %struct.PNG_ChunkHeader** %12, align 8
  %87 = getelementptr inbounds %struct.PNG_ChunkHeader, %struct.PNG_ChunkHeader* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @BigLong(i32 %88)
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* @PNG_ChunkType_IHDR, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %81
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @PNG_Chunk_IHDR_Size, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %100, label %97

97:                                               ; preds = %93, %81
  %98 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %99 = call i32 @CloseBufferedFile(%struct.BufferedFile* %98)
  br label %579

100:                                              ; preds = %93
  %101 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %102 = load i32, i32* @PNG_Chunk_IHDR_Size, align 4
  %103 = call i8* @BufferedFileRead(%struct.BufferedFile* %101, i32 %102)
  %104 = bitcast i8* %103 to %struct.PNG_Chunk_IHDR*
  store %struct.PNG_Chunk_IHDR* %104, %struct.PNG_Chunk_IHDR** %15, align 8
  %105 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %15, align 8
  %106 = icmp ne %struct.PNG_Chunk_IHDR* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %100
  %108 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %109 = call i32 @CloseBufferedFile(%struct.BufferedFile* %108)
  br label %579

110:                                              ; preds = %100
  %111 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %112 = load i32, i32* @PNG_ChunkCRC_Size, align 4
  %113 = call i8* @BufferedFileRead(%struct.BufferedFile* %111, i32 %112)
  %114 = bitcast i8* %113 to i32*
  store i32* %114, i32** %18, align 8
  %115 = load i32*, i32** %18, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %110
  %118 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %119 = call i32 @CloseBufferedFile(%struct.BufferedFile* %118)
  br label %579

120:                                              ; preds = %110
  %121 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %15, align 8
  %122 = getelementptr inbounds %struct.PNG_Chunk_IHDR, %struct.PNG_Chunk_IHDR* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @BigLong(i32 %123)
  store i32 %124, i32* %16, align 4
  %125 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %15, align 8
  %126 = getelementptr inbounds %struct.PNG_Chunk_IHDR, %struct.PNG_Chunk_IHDR* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @BigLong(i32 %127)
  store i32 %128, i32* %17, align 4
  %129 = load i32, i32* %16, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %120
  %132 = load i32, i32* %17, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %131
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* @INT_MAX, align 4
  %137 = load i32, i32* @Q3IMAGE_BYTESPERPIXEL, align 4
  %138 = sdiv i32 %136, %137
  %139 = load i32, i32* %17, align 4
  %140 = sdiv i32 %138, %139
  %141 = icmp sgt i32 %135, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %134, %131, %120
  %143 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %144 = call i32 @CloseBufferedFile(%struct.BufferedFile* %143)
  %145 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 2), align 8
  %146 = load i32, i32* @PRINT_WARNING, align 4
  %147 = load i8*, i8** %5, align 8
  %148 = call i32 %145(i32 %146, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %147)
  br label %579

149:                                              ; preds = %134
  %150 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %15, align 8
  %151 = getelementptr inbounds %struct.PNG_Chunk_IHDR, %struct.PNG_Chunk_IHDR* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @PNG_CompressionMethod_0, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %149
  %156 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %15, align 8
  %157 = getelementptr inbounds %struct.PNG_Chunk_IHDR, %struct.PNG_Chunk_IHDR* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @PNG_FilterMethod_0, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %164, label %161

161:                                              ; preds = %155, %149
  %162 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %163 = call i32 @CloseBufferedFile(%struct.BufferedFile* %162)
  br label %579

164:                                              ; preds = %155
  %165 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %15, align 8
  %166 = getelementptr inbounds %struct.PNG_Chunk_IHDR, %struct.PNG_Chunk_IHDR* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = icmp eq i32 %167, 128
  br i1 %168, label %177, label %169

169:                                              ; preds = %164
  %170 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %15, align 8
  %171 = getelementptr inbounds %struct.PNG_Chunk_IHDR, %struct.PNG_Chunk_IHDR* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = icmp eq i32 %172, 129
  br i1 %173, label %177, label %174

174:                                              ; preds = %169
  %175 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %176 = call i32 @CloseBufferedFile(%struct.BufferedFile* %175)
  br label %579

177:                                              ; preds = %169, %164
  %178 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %15, align 8
  %179 = getelementptr inbounds %struct.PNG_Chunk_IHDR, %struct.PNG_Chunk_IHDR* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 131
  br i1 %181, label %182, label %330

182:                                              ; preds = %177
  %183 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %184 = load i32, i32* @PNG_ChunkType_PLTE, align 4
  %185 = call i64 @FindChunk(%struct.BufferedFile* %183, i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %182
  %188 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %189 = call i32 @CloseBufferedFile(%struct.BufferedFile* %188)
  br label %579

190:                                              ; preds = %182
  %191 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %192 = load i32, i32* @PNG_ChunkHeader_Size, align 4
  %193 = call i8* @BufferedFileRead(%struct.BufferedFile* %191, i32 %192)
  %194 = bitcast i8* %193 to %struct.PNG_ChunkHeader*
  store %struct.PNG_ChunkHeader* %194, %struct.PNG_ChunkHeader** %12, align 8
  %195 = load %struct.PNG_ChunkHeader*, %struct.PNG_ChunkHeader** %12, align 8
  %196 = icmp ne %struct.PNG_ChunkHeader* %195, null
  br i1 %196, label %200, label %197

197:                                              ; preds = %190
  %198 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %199 = call i32 @CloseBufferedFile(%struct.BufferedFile* %198)
  br label %579

200:                                              ; preds = %190
  %201 = load %struct.PNG_ChunkHeader*, %struct.PNG_ChunkHeader** %12, align 8
  %202 = getelementptr inbounds %struct.PNG_ChunkHeader, %struct.PNG_ChunkHeader* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @BigLong(i32 %203)
  store i32 %204, i32* %13, align 4
  %205 = load %struct.PNG_ChunkHeader*, %struct.PNG_ChunkHeader** %12, align 8
  %206 = getelementptr inbounds %struct.PNG_ChunkHeader, %struct.PNG_ChunkHeader* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @BigLong(i32 %207)
  store i32 %208, i32* %14, align 4
  %209 = load i32, i32* %14, align 4
  %210 = load i32, i32* @PNG_ChunkType_PLTE, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %215, label %212

212:                                              ; preds = %200
  %213 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %214 = call i32 @CloseBufferedFile(%struct.BufferedFile* %213)
  br label %579

215:                                              ; preds = %200
  %216 = load i32, i32* %13, align 4
  %217 = srem i32 %216, 3
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %215
  %220 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %221 = call i32 @CloseBufferedFile(%struct.BufferedFile* %220)
  br label %579

222:                                              ; preds = %215
  %223 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %224 = load i32, i32* %13, align 4
  %225 = call i8* @BufferedFileRead(%struct.BufferedFile* %223, i32 %224)
  %226 = bitcast i8* %225 to i32*
  store i32* %226, i32** %19, align 8
  %227 = load i32*, i32** %19, align 8
  %228 = icmp ne i32* %227, null
  br i1 %228, label %232, label %229

229:                                              ; preds = %222
  %230 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %231 = call i32 @CloseBufferedFile(%struct.BufferedFile* %230)
  br label %579

232:                                              ; preds = %222
  %233 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %234 = load i32, i32* @PNG_ChunkCRC_Size, align 4
  %235 = call i8* @BufferedFileRead(%struct.BufferedFile* %233, i32 %234)
  %236 = bitcast i8* %235 to i32*
  store i32* %236, i32** %18, align 8
  %237 = load i32*, i32** %18, align 8
  %238 = icmp ne i32* %237, null
  br i1 %238, label %242, label %239

239:                                              ; preds = %232
  %240 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %241 = call i32 @CloseBufferedFile(%struct.BufferedFile* %240)
  br label %579

242:                                              ; preds = %232
  store i32 0, i32* %22, align 4
  br label %243

243:                                              ; preds = %271, %242
  %244 = load i32, i32* %22, align 4
  %245 = icmp slt i32 %244, 256
  br i1 %245, label %246, label %274

246:                                              ; preds = %243
  %247 = load i32, i32* %22, align 4
  %248 = load i32, i32* @Q3IMAGE_BYTESPERPIXEL, align 4
  %249 = mul nsw i32 %247, %248
  %250 = add nsw i32 %249, 0
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [1024 x i32], [1024 x i32]* %23, i64 0, i64 %251
  store i32 0, i32* %252, align 4
  %253 = load i32, i32* %22, align 4
  %254 = load i32, i32* @Q3IMAGE_BYTESPERPIXEL, align 4
  %255 = mul nsw i32 %253, %254
  %256 = add nsw i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [1024 x i32], [1024 x i32]* %23, i64 0, i64 %257
  store i32 0, i32* %258, align 4
  %259 = load i32, i32* %22, align 4
  %260 = load i32, i32* @Q3IMAGE_BYTESPERPIXEL, align 4
  %261 = mul nsw i32 %259, %260
  %262 = add nsw i32 %261, 2
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [1024 x i32], [1024 x i32]* %23, i64 0, i64 %263
  store i32 0, i32* %264, align 4
  %265 = load i32, i32* %22, align 4
  %266 = load i32, i32* @Q3IMAGE_BYTESPERPIXEL, align 4
  %267 = mul nsw i32 %265, %266
  %268 = add nsw i32 %267, 3
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [1024 x i32], [1024 x i32]* %23, i64 0, i64 %269
  store i32 255, i32* %270, align 4
  br label %271

271:                                              ; preds = %246
  %272 = load i32, i32* %22, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %22, align 4
  br label %243

274:                                              ; preds = %243
  store i32 0, i32* %22, align 4
  br label %275

275:                                              ; preds = %326, %274
  %276 = load i32, i32* %22, align 4
  %277 = load i32, i32* %13, align 4
  %278 = sdiv i32 %277, 3
  %279 = icmp slt i32 %276, %278
  br i1 %279, label %280, label %329

280:                                              ; preds = %275
  %281 = load i32*, i32** %19, align 8
  %282 = load i32, i32* %22, align 4
  %283 = mul nsw i32 %282, 3
  %284 = add nsw i32 %283, 0
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %281, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* %22, align 4
  %289 = load i32, i32* @Q3IMAGE_BYTESPERPIXEL, align 4
  %290 = mul nsw i32 %288, %289
  %291 = add nsw i32 %290, 0
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [1024 x i32], [1024 x i32]* %23, i64 0, i64 %292
  store i32 %287, i32* %293, align 4
  %294 = load i32*, i32** %19, align 8
  %295 = load i32, i32* %22, align 4
  %296 = mul nsw i32 %295, 3
  %297 = add nsw i32 %296, 1
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %294, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* %22, align 4
  %302 = load i32, i32* @Q3IMAGE_BYTESPERPIXEL, align 4
  %303 = mul nsw i32 %301, %302
  %304 = add nsw i32 %303, 1
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [1024 x i32], [1024 x i32]* %23, i64 0, i64 %305
  store i32 %300, i32* %306, align 4
  %307 = load i32*, i32** %19, align 8
  %308 = load i32, i32* %22, align 4
  %309 = mul nsw i32 %308, 3
  %310 = add nsw i32 %309, 2
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %307, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* %22, align 4
  %315 = load i32, i32* @Q3IMAGE_BYTESPERPIXEL, align 4
  %316 = mul nsw i32 %314, %315
  %317 = add nsw i32 %316, 2
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [1024 x i32], [1024 x i32]* %23, i64 0, i64 %318
  store i32 %313, i32* %319, align 4
  %320 = load i32, i32* %22, align 4
  %321 = load i32, i32* @Q3IMAGE_BYTESPERPIXEL, align 4
  %322 = mul nsw i32 %320, %321
  %323 = add nsw i32 %322, 3
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [1024 x i32], [1024 x i32]* %23, i64 0, i64 %324
  store i32 255, i32* %325, align 4
  br label %326

326:                                              ; preds = %280
  %327 = load i32, i32* %22, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %22, align 4
  br label %275

329:                                              ; preds = %275
  br label %330

330:                                              ; preds = %329, %177
  %331 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %332 = load i32, i32* @PNG_ChunkType_tRNS, align 4
  %333 = call i64 @FindChunk(%struct.BufferedFile* %331, i32 %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %464

335:                                              ; preds = %330
  %336 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %337 = load i32, i32* @PNG_ChunkHeader_Size, align 4
  %338 = call i8* @BufferedFileRead(%struct.BufferedFile* %336, i32 %337)
  %339 = bitcast i8* %338 to %struct.PNG_ChunkHeader*
  store %struct.PNG_ChunkHeader* %339, %struct.PNG_ChunkHeader** %12, align 8
  %340 = load %struct.PNG_ChunkHeader*, %struct.PNG_ChunkHeader** %12, align 8
  %341 = icmp ne %struct.PNG_ChunkHeader* %340, null
  br i1 %341, label %345, label %342

342:                                              ; preds = %335
  %343 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %344 = call i32 @CloseBufferedFile(%struct.BufferedFile* %343)
  br label %579

345:                                              ; preds = %335
  %346 = load %struct.PNG_ChunkHeader*, %struct.PNG_ChunkHeader** %12, align 8
  %347 = getelementptr inbounds %struct.PNG_ChunkHeader, %struct.PNG_ChunkHeader* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = call i32 @BigLong(i32 %348)
  store i32 %349, i32* %13, align 4
  %350 = load %struct.PNG_ChunkHeader*, %struct.PNG_ChunkHeader** %12, align 8
  %351 = getelementptr inbounds %struct.PNG_ChunkHeader, %struct.PNG_ChunkHeader* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @BigLong(i32 %352)
  store i32 %353, i32* %14, align 4
  %354 = load i32, i32* %14, align 4
  %355 = load i32, i32* @PNG_ChunkType_tRNS, align 4
  %356 = icmp eq i32 %354, %355
  br i1 %356, label %360, label %357

357:                                              ; preds = %345
  %358 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %359 = call i32 @CloseBufferedFile(%struct.BufferedFile* %358)
  br label %579

360:                                              ; preds = %345
  %361 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %362 = load i32, i32* %13, align 4
  %363 = call i8* @BufferedFileRead(%struct.BufferedFile* %361, i32 %362)
  %364 = bitcast i8* %363 to i32*
  store i32* %364, i32** %26, align 8
  %365 = load i32*, i32** %26, align 8
  %366 = icmp ne i32* %365, null
  br i1 %366, label %370, label %367

367:                                              ; preds = %360
  %368 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %369 = call i32 @CloseBufferedFile(%struct.BufferedFile* %368)
  br label %579

370:                                              ; preds = %360
  %371 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %372 = load i32, i32* @PNG_ChunkCRC_Size, align 4
  %373 = call i8* @BufferedFileRead(%struct.BufferedFile* %371, i32 %372)
  %374 = bitcast i8* %373 to i32*
  store i32* %374, i32** %18, align 8
  %375 = load i32*, i32** %18, align 8
  %376 = icmp ne i32* %375, null
  br i1 %376, label %380, label %377

377:                                              ; preds = %370
  %378 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %379 = call i32 @CloseBufferedFile(%struct.BufferedFile* %378)
  br label %579

380:                                              ; preds = %370
  %381 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %15, align 8
  %382 = getelementptr inbounds %struct.PNG_Chunk_IHDR, %struct.PNG_Chunk_IHDR* %381, i32 0, i32 3
  %383 = load i32, i32* %382, align 4
  switch i32 %383, label %460 [
    i32 132, label %384
    i32 130, label %400
    i32 131, label %432
  ]

384:                                              ; preds = %380
  %385 = load i32, i32* %13, align 4
  %386 = icmp ne i32 %385, 2
  br i1 %386, label %387, label %390

387:                                              ; preds = %384
  %388 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %389 = call i32 @CloseBufferedFile(%struct.BufferedFile* %388)
  br label %579

390:                                              ; preds = %384
  %391 = load i32, i32* @qtrue, align 4
  store i32 %391, i32* %24, align 4
  %392 = load i32*, i32** %26, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 0
  %394 = load i32, i32* %393, align 4
  %395 = getelementptr inbounds [6 x i32], [6 x i32]* %25, i64 0, i64 0
  store i32 %394, i32* %395, align 16
  %396 = load i32*, i32** %26, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 1
  %398 = load i32, i32* %397, align 4
  %399 = getelementptr inbounds [6 x i32], [6 x i32]* %25, i64 0, i64 1
  store i32 %398, i32* %399, align 4
  br label %463

400:                                              ; preds = %380
  %401 = load i32, i32* %13, align 4
  %402 = icmp ne i32 %401, 6
  br i1 %402, label %403, label %406

403:                                              ; preds = %400
  %404 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %405 = call i32 @CloseBufferedFile(%struct.BufferedFile* %404)
  br label %579

406:                                              ; preds = %400
  %407 = load i32, i32* @qtrue, align 4
  store i32 %407, i32* %24, align 4
  %408 = load i32*, i32** %26, align 8
  %409 = getelementptr inbounds i32, i32* %408, i64 0
  %410 = load i32, i32* %409, align 4
  %411 = getelementptr inbounds [6 x i32], [6 x i32]* %25, i64 0, i64 0
  store i32 %410, i32* %411, align 16
  %412 = load i32*, i32** %26, align 8
  %413 = getelementptr inbounds i32, i32* %412, i64 1
  %414 = load i32, i32* %413, align 4
  %415 = getelementptr inbounds [6 x i32], [6 x i32]* %25, i64 0, i64 1
  store i32 %414, i32* %415, align 4
  %416 = load i32*, i32** %26, align 8
  %417 = getelementptr inbounds i32, i32* %416, i64 2
  %418 = load i32, i32* %417, align 4
  %419 = getelementptr inbounds [6 x i32], [6 x i32]* %25, i64 0, i64 2
  store i32 %418, i32* %419, align 8
  %420 = load i32*, i32** %26, align 8
  %421 = getelementptr inbounds i32, i32* %420, i64 3
  %422 = load i32, i32* %421, align 4
  %423 = getelementptr inbounds [6 x i32], [6 x i32]* %25, i64 0, i64 3
  store i32 %422, i32* %423, align 4
  %424 = load i32*, i32** %26, align 8
  %425 = getelementptr inbounds i32, i32* %424, i64 4
  %426 = load i32, i32* %425, align 4
  %427 = getelementptr inbounds [6 x i32], [6 x i32]* %25, i64 0, i64 4
  store i32 %426, i32* %427, align 16
  %428 = load i32*, i32** %26, align 8
  %429 = getelementptr inbounds i32, i32* %428, i64 5
  %430 = load i32, i32* %429, align 4
  %431 = getelementptr inbounds [6 x i32], [6 x i32]* %25, i64 0, i64 5
  store i32 %430, i32* %431, align 4
  br label %463

432:                                              ; preds = %380
  %433 = load i32, i32* %13, align 4
  %434 = icmp sgt i32 %433, 256
  br i1 %434, label %435, label %438

435:                                              ; preds = %432
  %436 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %437 = call i32 @CloseBufferedFile(%struct.BufferedFile* %436)
  br label %579

438:                                              ; preds = %432
  %439 = load i32, i32* @qtrue, align 4
  store i32 %439, i32* %24, align 4
  store i32 0, i32* %22, align 4
  br label %440

440:                                              ; preds = %456, %438
  %441 = load i32, i32* %22, align 4
  %442 = load i32, i32* %13, align 4
  %443 = icmp slt i32 %441, %442
  br i1 %443, label %444, label %459

444:                                              ; preds = %440
  %445 = load i32*, i32** %26, align 8
  %446 = load i32, i32* %22, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32, i32* %445, i64 %447
  %449 = load i32, i32* %448, align 4
  %450 = load i32, i32* %22, align 4
  %451 = load i32, i32* @Q3IMAGE_BYTESPERPIXEL, align 4
  %452 = mul nsw i32 %450, %451
  %453 = add nsw i32 %452, 3
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds [1024 x i32], [1024 x i32]* %23, i64 0, i64 %454
  store i32 %449, i32* %455, align 4
  br label %456

456:                                              ; preds = %444
  %457 = load i32, i32* %22, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %22, align 4
  br label %440

459:                                              ; preds = %440
  br label %463

460:                                              ; preds = %380
  %461 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %462 = call i32 @CloseBufferedFile(%struct.BufferedFile* %461)
  br label %579

463:                                              ; preds = %459, %406, %390
  br label %464

464:                                              ; preds = %463, %330
  %465 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %466 = call i32 @BufferedFileRewind(%struct.BufferedFile* %465, i32 -1)
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %471, label %468

468:                                              ; preds = %464
  %469 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %470 = call i32 @CloseBufferedFile(%struct.BufferedFile* %469)
  br label %579

471:                                              ; preds = %464
  %472 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %473 = load i32, i32* @PNG_Signature_Size, align 4
  %474 = call i32 @BufferedFileSkip(%struct.BufferedFile* %472, i32 %473)
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %479, label %476

476:                                              ; preds = %471
  %477 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %478 = call i32 @CloseBufferedFile(%struct.BufferedFile* %477)
  br label %579

479:                                              ; preds = %471
  %480 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %481 = call i32 @DecompressIDATs(%struct.BufferedFile* %480, i32** %20)
  store i32 %481, i32* %21, align 4
  %482 = load i32, i32* %21, align 4
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %487

484:                                              ; preds = %479
  %485 = load i32*, i32** %20, align 8
  %486 = icmp ne i32* %485, null
  br i1 %486, label %490, label %487

487:                                              ; preds = %484, %479
  %488 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %489 = call i32 @CloseBufferedFile(%struct.BufferedFile* %488)
  br label %579

490:                                              ; preds = %484
  %491 = load i32* (i32)*, i32* (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 0), align 8
  %492 = load i32, i32* %16, align 4
  %493 = load i32, i32* %17, align 4
  %494 = mul nsw i32 %492, %493
  %495 = load i32, i32* @Q3IMAGE_BYTESPERPIXEL, align 4
  %496 = mul nsw i32 %494, %495
  %497 = call i32* %491(i32 %496)
  store i32* %497, i32** %10, align 8
  %498 = load i32*, i32** %10, align 8
  %499 = icmp ne i32* %498, null
  br i1 %499, label %506, label %500

500:                                              ; preds = %490
  %501 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 1), align 8
  %502 = load i32*, i32** %20, align 8
  %503 = call i32 %501(i32* %502)
  %504 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %505 = call i32 @CloseBufferedFile(%struct.BufferedFile* %504)
  br label %579

506:                                              ; preds = %490
  %507 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %15, align 8
  %508 = getelementptr inbounds %struct.PNG_Chunk_IHDR, %struct.PNG_Chunk_IHDR* %507, i32 0, i32 2
  %509 = load i32, i32* %508, align 8
  switch i32 %509, label %550 [
    i32 128, label %510
    i32 129, label %530
  ]

510:                                              ; preds = %506
  %511 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %15, align 8
  %512 = load i32*, i32** %10, align 8
  %513 = load i32*, i32** %20, align 8
  %514 = load i32, i32* %21, align 4
  %515 = load i32, i32* %24, align 4
  %516 = getelementptr inbounds [6 x i32], [6 x i32]* %25, i64 0, i64 0
  %517 = getelementptr inbounds [1024 x i32], [1024 x i32]* %23, i64 0, i64 0
  %518 = call i32 @DecodeImageNonInterlaced(%struct.PNG_Chunk_IHDR* %511, i32* %512, i32* %513, i32 %514, i32 %515, i32* %516, i32* %517)
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %529, label %520

520:                                              ; preds = %510
  %521 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 1), align 8
  %522 = load i32*, i32** %10, align 8
  %523 = call i32 %521(i32* %522)
  %524 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 1), align 8
  %525 = load i32*, i32** %20, align 8
  %526 = call i32 %524(i32* %525)
  %527 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %528 = call i32 @CloseBufferedFile(%struct.BufferedFile* %527)
  br label %579

529:                                              ; preds = %510
  br label %559

530:                                              ; preds = %506
  %531 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %15, align 8
  %532 = load i32*, i32** %10, align 8
  %533 = load i32*, i32** %20, align 8
  %534 = load i32, i32* %21, align 4
  %535 = load i32, i32* %24, align 4
  %536 = getelementptr inbounds [6 x i32], [6 x i32]* %25, i64 0, i64 0
  %537 = getelementptr inbounds [1024 x i32], [1024 x i32]* %23, i64 0, i64 0
  %538 = call i32 @DecodeImageInterlaced(%struct.PNG_Chunk_IHDR* %531, i32* %532, i32* %533, i32 %534, i32 %535, i32* %536, i32* %537)
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %549, label %540

540:                                              ; preds = %530
  %541 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 1), align 8
  %542 = load i32*, i32** %10, align 8
  %543 = call i32 %541(i32* %542)
  %544 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 1), align 8
  %545 = load i32*, i32** %20, align 8
  %546 = call i32 %544(i32* %545)
  %547 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %548 = call i32 @CloseBufferedFile(%struct.BufferedFile* %547)
  br label %579

549:                                              ; preds = %530
  br label %559

550:                                              ; preds = %506
  %551 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 1), align 8
  %552 = load i32*, i32** %10, align 8
  %553 = call i32 %551(i32* %552)
  %554 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 1), align 8
  %555 = load i32*, i32** %20, align 8
  %556 = call i32 %554(i32* %555)
  %557 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %558 = call i32 @CloseBufferedFile(%struct.BufferedFile* %557)
  br label %579

559:                                              ; preds = %549, %529
  %560 = load i32*, i32** %10, align 8
  %561 = load i32**, i32*** %6, align 8
  store i32* %560, i32** %561, align 8
  %562 = load i32*, i32** %7, align 8
  %563 = icmp ne i32* %562, null
  br i1 %563, label %564, label %567

564:                                              ; preds = %559
  %565 = load i32, i32* %16, align 4
  %566 = load i32*, i32** %7, align 8
  store i32 %565, i32* %566, align 4
  br label %567

567:                                              ; preds = %564, %559
  %568 = load i32*, i32** %8, align 8
  %569 = icmp ne i32* %568, null
  br i1 %569, label %570, label %573

570:                                              ; preds = %567
  %571 = load i32, i32* %17, align 4
  %572 = load i32*, i32** %8, align 8
  store i32 %571, i32* %572, align 4
  br label %573

573:                                              ; preds = %570, %567
  %574 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 1), align 8
  %575 = load i32*, i32** %20, align 8
  %576 = call i32 %574(i32* %575)
  %577 = load %struct.BufferedFile*, %struct.BufferedFile** %9, align 8
  %578 = call i32 @CloseBufferedFile(%struct.BufferedFile* %577)
  br label %579

579:                                              ; preds = %573, %550, %540, %520, %500, %487, %476, %468, %460, %435, %403, %387, %377, %367, %357, %342, %239, %229, %219, %212, %197, %187, %174, %161, %142, %117, %107, %97, %78, %68, %59, %51, %34
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.BufferedFile* @ReadBufferedFile(i8*) #2

declare dso_local i8* @BufferedFileRead(%struct.BufferedFile*, i32) #2

declare dso_local i32 @CloseBufferedFile(%struct.BufferedFile*) #2

declare dso_local i64 @memcmp(i32*, i32, i32) #2

declare dso_local i32 @BigLong(i32) #2

declare dso_local i64 @FindChunk(%struct.BufferedFile*, i32) #2

declare dso_local i32 @BufferedFileRewind(%struct.BufferedFile*, i32) #2

declare dso_local i32 @BufferedFileSkip(%struct.BufferedFile*, i32) #2

declare dso_local i32 @DecompressIDATs(%struct.BufferedFile*, i32**) #2

declare dso_local i32 @DecodeImageNonInterlaced(%struct.PNG_Chunk_IHDR*, i32*, i32*, i32, i32, i32*, i32*) #2

declare dso_local i32 @DecodeImageInterlaced(%struct.PNG_Chunk_IHDR*, i32*, i32*, i32, i32, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
