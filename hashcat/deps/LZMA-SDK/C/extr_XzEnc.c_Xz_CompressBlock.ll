; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzEnc.c_Xz_CompressBlock.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzEnc.c_Xz_CompressBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { %struct.TYPE_28__, %struct.TYPE_30__, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_31__, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_31__, %struct.TYPE_31__* }
%struct.TYPE_29__ = type { i64, i64, i32, %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i64, i32, i32, i64 }
%struct.TYPE_34__ = type { i64, i64, i64 }
%struct.TYPE_37__ = type { i64, i64, i32, %struct.TYPE_31__, i32, i64*, i32* }
%struct.TYPE_36__ = type { i64, i64, %struct.TYPE_27__, i64*, i32* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_35__ = type { i64, i64, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i64, i32, i64* }

@False = common dso_local global i32 0, align 4
@XZ_ID_Delta = common dso_local global i64 0, align 8
@XZ_ID_LZMA2 = common dso_local global i64 0, align 8
@SeqSizeOutStream_Write = common dso_local global i32 0, align 4
@SeqCheckInStream_Read = common dso_local global i32 0, align 4
@XZ_BLOCK_HEADER_SIZE_MAX = common dso_local global i64 0, align 8
@SZ_ERROR_FAIL = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4
@XZ_ID_Subblock = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_38__*, i32*, i64*, i64*, i64, i32*, i64*, i64, %struct.TYPE_29__*, i32*, i32*, %struct.TYPE_34__*, i32, i32)* @Xz_CompressBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Xz_CompressBlock(%struct.TYPE_38__* %0, i32* %1, i64* %2, i64* %3, i64 %4, i32* %5, i64* %6, i64 %7, %struct.TYPE_29__* %8, i32* %9, i32* %10, %struct.TYPE_34__* %11, i32 %12, i32 %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_38__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_29__*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca %struct.TYPE_34__*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_37__, align 8
  %31 = alloca %struct.TYPE_36__, align 8
  %32 = alloca %struct.TYPE_35__, align 8
  %33 = alloca i32, align 4
  %34 = alloca %struct.TYPE_33__*, align 8
  %35 = alloca %struct.TYPE_32__*, align 8
  %36 = alloca %struct.TYPE_33__*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i64*, align 8
  %39 = alloca i64, align 8
  %40 = alloca i32, align 4
  %41 = alloca [68 x i64], align 16
  %42 = alloca i32, align 4
  %43 = alloca i64, align 8
  store %struct.TYPE_38__* %0, %struct.TYPE_38__** %16, align 8
  store i32* %1, i32** %17, align 8
  store i64* %2, i64** %18, align 8
  store i64* %3, i64** %19, align 8
  store i64 %4, i64* %20, align 8
  store i32* %5, i32** %21, align 8
  store i64* %6, i64** %22, align 8
  store i64 %7, i64* %23, align 8
  store %struct.TYPE_29__* %8, %struct.TYPE_29__** %24, align 8
  store i32* %9, i32** %25, align 8
  store i32* %10, i32** %26, align 8
  store %struct.TYPE_34__* %11, %struct.TYPE_34__** %27, align 8
  store i32 %12, i32* %28, align 4
  store i32 %13, i32* %29, align 4
  store i32 0, i32* %33, align 4
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %34, align 8
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %24, align 8
  %45 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %44, i32 0, i32 3
  store %struct.TYPE_32__* %45, %struct.TYPE_32__** %35, align 8
  %46 = load %struct.TYPE_32__*, %struct.TYPE_32__** %35, align 8
  %47 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %14
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %35, align 8
  br label %51

51:                                               ; preds = %50, %14
  %52 = load i32, i32* @False, align 4
  %53 = load i32*, i32** %26, align 8
  store i32 %52, i32* %53, align 4
  %54 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %55 = load i32, i32* %28, align 4
  %56 = load i32, i32* %29, align 4
  %57 = call i32 @Lzma2WithFilters_Create(%struct.TYPE_38__* %54, i32 %55, i32 %56)
  %58 = call i32 @RINOK(i32 %57)
  %59 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_29__*, %struct.TYPE_29__** %24, align 8
  %63 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %62, i32 0, i32 2
  %64 = call i32 @Lzma2Enc_SetProps(i32 %61, i32* %63)
  %65 = call i32 @RINOK(i32 %64)
  %66 = call i32 @XzBlock_ClearFlags(%struct.TYPE_35__* %32)
  %67 = load %struct.TYPE_32__*, %struct.TYPE_32__** %35, align 8
  %68 = icmp ne %struct.TYPE_32__* %67, null
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 1, i32 0
  %71 = add nsw i32 1, %70
  %72 = call i32 @XzBlock_SetNumFilters(%struct.TYPE_35__* %32, i32 %71)
  %73 = load %struct.TYPE_32__*, %struct.TYPE_32__** %35, align 8
  %74 = icmp ne %struct.TYPE_32__* %73, null
  br i1 %74, label %75, label %123

75:                                               ; preds = %51
  %76 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %32, i32 0, i32 2
  %77 = load %struct.TYPE_33__*, %struct.TYPE_33__** %76, align 8
  %78 = load i32, i32* %33, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %33, align 4
  %80 = zext i32 %78 to i64
  %81 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %77, i64 %80
  store %struct.TYPE_33__* %81, %struct.TYPE_33__** %34, align 8
  %82 = load %struct.TYPE_32__*, %struct.TYPE_32__** %35, align 8
  %83 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_33__*, %struct.TYPE_33__** %34, align 8
  %86 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.TYPE_33__*, %struct.TYPE_33__** %34, align 8
  %88 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %87, i32 0, i32 1
  store i32 0, i32* %88, align 8
  %89 = load %struct.TYPE_32__*, %struct.TYPE_32__** %35, align 8
  %90 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @XZ_ID_Delta, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %75
  %95 = load %struct.TYPE_32__*, %struct.TYPE_32__** %35, align 8
  %96 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = load %struct.TYPE_33__*, %struct.TYPE_33__** %34, align 8
  %101 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %100, i32 0, i32 2
  %102 = load i64*, i64** %101, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 0
  store i64 %99, i64* %103, align 8
  %104 = load %struct.TYPE_33__*, %struct.TYPE_33__** %34, align 8
  %105 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %104, i32 0, i32 1
  store i32 1, i32* %105, align 8
  br label %122

106:                                              ; preds = %75
  %107 = load %struct.TYPE_32__*, %struct.TYPE_32__** %35, align 8
  %108 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %106
  %112 = load %struct.TYPE_33__*, %struct.TYPE_33__** %34, align 8
  %113 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %112, i32 0, i32 2
  %114 = load i64*, i64** %113, align 8
  %115 = load %struct.TYPE_32__*, %struct.TYPE_32__** %35, align 8
  %116 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @SetUi32(i64* %114, i32 %117)
  %119 = load %struct.TYPE_33__*, %struct.TYPE_33__** %34, align 8
  %120 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %119, i32 0, i32 1
  store i32 4, i32* %120, align 8
  br label %121

121:                                              ; preds = %111, %106
  br label %122

122:                                              ; preds = %121, %94
  br label %123

123:                                              ; preds = %122, %51
  %124 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %32, i32 0, i32 2
  %125 = load %struct.TYPE_33__*, %struct.TYPE_33__** %124, align 8
  %126 = load i32, i32* %33, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %33, align 4
  %128 = zext i32 %126 to i64
  %129 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %125, i64 %128
  store %struct.TYPE_33__* %129, %struct.TYPE_33__** %36, align 8
  %130 = load i64, i64* @XZ_ID_LZMA2, align 8
  %131 = load %struct.TYPE_33__*, %struct.TYPE_33__** %36, align 8
  %132 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load %struct.TYPE_33__*, %struct.TYPE_33__** %36, align 8
  %134 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %133, i32 0, i32 1
  store i32 1, i32* %134, align 8
  %135 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i64 @Lzma2Enc_WriteProperties(i32 %137)
  %139 = load %struct.TYPE_33__*, %struct.TYPE_33__** %36, align 8
  %140 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %139, i32 0, i32 2
  %141 = load i64*, i64** %140, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 0
  store i64 %138, i64* %142, align 8
  %143 = load i32, i32* @SeqSizeOutStream_Write, align 4
  %144 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %31, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load i32*, i32** %17, align 8
  %147 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %31, i32 0, i32 4
  store i32* %146, i32** %147, align 8
  %148 = load i64*, i64** %19, align 8
  %149 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %31, i32 0, i32 3
  store i64* %148, i64** %149, align 8
  %150 = load i64, i64* %20, align 8
  %151 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %31, i32 0, i32 0
  store i64 %150, i64* %151, align 8
  %152 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %31, i32 0, i32 1
  store i64 0, i64* %152, align 8
  %153 = load i32*, i32** %17, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %159

155:                                              ; preds = %123
  %156 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %31, i32 0, i32 2
  %157 = call i32 @XzBlock_WriteHeader(%struct.TYPE_35__* %32, %struct.TYPE_27__* %156)
  %158 = call i32 @RINOK(i32 %157)
  br label %159

159:                                              ; preds = %155, %123
  %160 = load i32, i32* @SeqCheckInStream_Read, align 4
  %161 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %30, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 4
  %163 = load %struct.TYPE_29__*, %struct.TYPE_29__** %24, align 8
  %164 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @SeqCheckInStream_Init(%struct.TYPE_37__* %30, i64 %165)
  %167 = load i32*, i32** %21, align 8
  %168 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %30, i32 0, i32 6
  store i32* %167, i32** %168, align 8
  %169 = load i64*, i64** %22, align 8
  %170 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %30, i32 0, i32 5
  store i64* %169, i64** %170, align 8
  %171 = load %struct.TYPE_29__*, %struct.TYPE_29__** %24, align 8
  %172 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %30, i32 0, i32 0
  store i64 %173, i64* %174, align 8
  %175 = load i32*, i32** %21, align 8
  %176 = icmp ne i32* %175, null
  br i1 %176, label %180, label %177

177:                                              ; preds = %159
  %178 = load i64, i64* %23, align 8
  %179 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %30, i32 0, i32 0
  store i64 %178, i64* %179, align 8
  br label %180

180:                                              ; preds = %177, %159
  %181 = load %struct.TYPE_32__*, %struct.TYPE_32__** %35, align 8
  %182 = icmp ne %struct.TYPE_32__* %181, null
  br i1 %182, label %183, label %194

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %30, i32 0, i32 3
  %185 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %186 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %186, i32 0, i32 1
  store %struct.TYPE_31__* %184, %struct.TYPE_31__** %187, align 8
  %188 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %189 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_33__*, %struct.TYPE_33__** %34, align 8
  %191 = load i32, i32* %28, align 4
  %192 = call i32 @SeqInFilter_Init(%struct.TYPE_28__* %189, %struct.TYPE_33__* %190, i32 %191)
  %193 = call i32 @RINOK(i32 %192)
  br label %194

194:                                              ; preds = %183, %180
  store i64* null, i64** %38, align 8
  store i64 0, i64* %39, align 8
  %195 = load %struct.TYPE_32__*, %struct.TYPE_32__** %35, align 8
  %196 = icmp ne %struct.TYPE_32__* %195, null
  br i1 %196, label %200, label %197

197:                                              ; preds = %194
  %198 = load i32*, i32** %21, align 8
  %199 = icmp ne i32* %198, null
  br label %200

200:                                              ; preds = %197, %194
  %201 = phi i1 [ true, %194 ], [ %199, %197 ]
  %202 = zext i1 %201 to i32
  store i32 %202, i32* %40, align 4
  %203 = load i32, i32* %40, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %212, label %205

205:                                              ; preds = %200
  %206 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %30, i32 0, i32 4
  %207 = load i64*, i64** %22, align 8
  %208 = load i64, i64* %23, align 8
  %209 = call i32 @XzCheck_Update(i32* %206, i64* %207, i64 %208)
  %210 = load i64, i64* %23, align 8
  %211 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %30, i32 0, i32 1
  store i64 %210, i64* %211, align 8
  br label %212

212:                                              ; preds = %205, %200
  %213 = load i32*, i32** %17, align 8
  %214 = icmp ne i32* %213, null
  br i1 %214, label %220, label %215

215:                                              ; preds = %212
  %216 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %31, i32 0, i32 3
  %217 = load i64*, i64** %216, align 8
  store i64* %217, i64** %38, align 8
  %218 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %31, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  store i64 %219, i64* %39, align 8
  br label %220

220:                                              ; preds = %215, %212
  %221 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %222 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load i64*, i64** %38, align 8
  %225 = icmp ne i64* %224, null
  br i1 %225, label %226, label %227

226:                                              ; preds = %220
  br label %229

227:                                              ; preds = %220
  %228 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %31, i32 0, i32 2
  br label %229

229:                                              ; preds = %227, %226
  %230 = phi %struct.TYPE_27__* [ null, %226 ], [ %228, %227 ]
  %231 = load i64*, i64** %38, align 8
  %232 = load i64*, i64** %38, align 8
  %233 = icmp ne i64* %232, null
  br i1 %233, label %234, label %235

234:                                              ; preds = %229
  br label %236

235:                                              ; preds = %229
  br label %236

236:                                              ; preds = %235, %234
  %237 = phi i64* [ %39, %234 ], [ null, %235 ]
  %238 = load i32, i32* %40, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %251

240:                                              ; preds = %236
  %241 = load %struct.TYPE_32__*, %struct.TYPE_32__** %35, align 8
  %242 = icmp ne %struct.TYPE_32__* %241, null
  br i1 %242, label %243, label %247

243:                                              ; preds = %240
  %244 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %245 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %245, i32 0, i32 0
  br label %249

247:                                              ; preds = %240
  %248 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %30, i32 0, i32 3
  br label %249

249:                                              ; preds = %247, %243
  %250 = phi %struct.TYPE_31__* [ %246, %243 ], [ %248, %247 ]
  br label %252

251:                                              ; preds = %236
  br label %252

252:                                              ; preds = %251, %249
  %253 = phi %struct.TYPE_31__* [ %250, %249 ], [ null, %251 ]
  %254 = load i32, i32* %40, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %252
  br label %259

257:                                              ; preds = %252
  %258 = load i64*, i64** %22, align 8
  br label %259

259:                                              ; preds = %257, %256
  %260 = phi i64* [ null, %256 ], [ %258, %257 ]
  %261 = load i32, i32* %40, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %259
  br label %266

264:                                              ; preds = %259
  %265 = load i64, i64* %23, align 8
  br label %266

266:                                              ; preds = %264, %263
  %267 = phi i64 [ 0, %263 ], [ %265, %264 ]
  %268 = load i32*, i32** %25, align 8
  %269 = call i32 @Lzma2Enc_Encode2(i32 %223, %struct.TYPE_27__* %230, i64* %231, i64* %237, %struct.TYPE_31__* %253, i64* %260, i64 %267, i32* %268)
  store i32 %269, i32* %37, align 4
  %270 = load i64*, i64** %38, align 8
  %271 = icmp ne i64* %270, null
  br i1 %271, label %272, label %277

272:                                              ; preds = %266
  %273 = load i64, i64* %39, align 8
  %274 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %31, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = add i64 %275, %273
  store i64 %276, i64* %274, align 8
  br label %277

277:                                              ; preds = %272, %266
  %278 = load i32, i32* %37, align 4
  %279 = call i32 @RINOK(i32 %278)
  %280 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %30, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %283 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %282, i32 0, i32 0
  store i64 %281, i64* %283, align 8
  %284 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %31, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = call i32 @XZ_GET_PAD_SIZE(i64 %285)
  store i32 %286, i32* %42, align 4
  %287 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %31, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  store i64 %288, i64* %43, align 8
  %289 = getelementptr inbounds [68 x i64], [68 x i64]* %41, i64 0, i64 0
  store i64 0, i64* %289, align 16
  %290 = getelementptr inbounds [68 x i64], [68 x i64]* %41, i64 0, i64 1
  store i64 0, i64* %290, align 8
  %291 = getelementptr inbounds [68 x i64], [68 x i64]* %41, i64 0, i64 2
  store i64 0, i64* %291, align 16
  %292 = getelementptr inbounds [68 x i64], [68 x i64]* %41, i64 0, i64 3
  store i64 0, i64* %292, align 8
  %293 = getelementptr inbounds [68 x i64], [68 x i64]* %41, i64 0, i64 0
  %294 = getelementptr inbounds i64, i64* %293, i64 4
  %295 = call i32 @SeqCheckInStream_GetDigest(%struct.TYPE_37__* %30, i64* %294)
  %296 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %31, i32 0, i32 2
  %297 = getelementptr inbounds [68 x i64], [68 x i64]* %41, i64 0, i64 0
  %298 = load i32, i32* %42, align 4
  %299 = sub i32 4, %298
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds i64, i64* %297, i64 %300
  %302 = load i32, i32* %42, align 4
  %303 = zext i32 %302 to i64
  %304 = load %struct.TYPE_29__*, %struct.TYPE_29__** %24, align 8
  %305 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = trunc i64 %306 to i32
  %308 = call i64 @XzFlags_GetCheckSize(i32 %307)
  %309 = add nsw i64 %303, %308
  %310 = call i32 @WriteBytes(%struct.TYPE_27__* %296, i64* %301, i64 %309)
  %311 = call i32 @RINOK(i32 %310)
  %312 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %31, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = load i32, i32* %42, align 4
  %315 = zext i32 %314 to i64
  %316 = sub nsw i64 %313, %315
  %317 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %318 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %317, i32 0, i32 2
  store i64 %316, i64* %318, align 8
  %319 = load i32*, i32** %17, align 8
  %320 = icmp ne i32* %319, null
  br i1 %320, label %348, label %321

321:                                              ; preds = %277
  %322 = load i64*, i64** %18, align 8
  %323 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %31, i32 0, i32 3
  store i64* %322, i64** %323, align 8
  %324 = load i64, i64* @XZ_BLOCK_HEADER_SIZE_MAX, align 8
  %325 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %31, i32 0, i32 0
  store i64 %324, i64* %325, align 8
  %326 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %31, i32 0, i32 1
  store i64 0, i64* %326, align 8
  %327 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %328 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %32, i32 0, i32 0
  store i64 %329, i64* %330, align 8
  %331 = call i32 @XzBlock_SetHasUnpackSize(%struct.TYPE_35__* %32)
  %332 = load i64, i64* %43, align 8
  %333 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %32, i32 0, i32 1
  store i64 %332, i64* %333, align 8
  %334 = call i32 @XzBlock_SetHasPackSize(%struct.TYPE_35__* %32)
  %335 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %31, i32 0, i32 2
  %336 = call i32 @XzBlock_WriteHeader(%struct.TYPE_35__* %32, %struct.TYPE_27__* %335)
  %337 = call i32 @RINOK(i32 %336)
  %338 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %31, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %341 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %340, i32 0, i32 1
  store i64 %339, i64* %341, align 8
  %342 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %31, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  %344 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %345 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %344, i32 0, i32 2
  %346 = load i64, i64* %345, align 8
  %347 = add nsw i64 %346, %343
  store i64 %347, i64* %345, align 8
  br label %348

348:                                              ; preds = %321, %277
  %349 = load i32*, i32** %21, align 8
  %350 = icmp ne i32* %349, null
  br i1 %350, label %351, label %355

351:                                              ; preds = %348
  %352 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %30, i32 0, i32 2
  %353 = load i32, i32* %352, align 8
  %354 = load i32*, i32** %26, align 8
  store i32 %353, i32* %354, align 4
  br label %365

355:                                              ; preds = %348
  %356 = load i32, i32* @False, align 4
  %357 = load i32*, i32** %26, align 8
  store i32 %356, i32* %357, align 4
  %358 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %30, i32 0, i32 1
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* %23, align 8
  %361 = icmp ne i64 %359, %360
  br i1 %361, label %362, label %364

362:                                              ; preds = %355
  %363 = load i32, i32* @SZ_ERROR_FAIL, align 4
  store i32 %363, i32* %15, align 4
  br label %367

364:                                              ; preds = %355
  br label %365

365:                                              ; preds = %364, %351
  %366 = load i32, i32* @SZ_OK, align 4
  store i32 %366, i32* %15, align 4
  br label %367

367:                                              ; preds = %365, %362
  %368 = load i32, i32* %15, align 4
  ret i32 %368
}

declare dso_local i32 @RINOK(i32) #1

declare dso_local i32 @Lzma2WithFilters_Create(%struct.TYPE_38__*, i32, i32) #1

declare dso_local i32 @Lzma2Enc_SetProps(i32, i32*) #1

declare dso_local i32 @XzBlock_ClearFlags(%struct.TYPE_35__*) #1

declare dso_local i32 @XzBlock_SetNumFilters(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @SetUi32(i64*, i32) #1

declare dso_local i64 @Lzma2Enc_WriteProperties(i32) #1

declare dso_local i32 @XzBlock_WriteHeader(%struct.TYPE_35__*, %struct.TYPE_27__*) #1

declare dso_local i32 @SeqCheckInStream_Init(%struct.TYPE_37__*, i64) #1

declare dso_local i32 @SeqInFilter_Init(%struct.TYPE_28__*, %struct.TYPE_33__*, i32) #1

declare dso_local i32 @XzCheck_Update(i32*, i64*, i64) #1

declare dso_local i32 @Lzma2Enc_Encode2(i32, %struct.TYPE_27__*, i64*, i64*, %struct.TYPE_31__*, i64*, i64, i32*) #1

declare dso_local i32 @XZ_GET_PAD_SIZE(i64) #1

declare dso_local i32 @SeqCheckInStream_GetDigest(%struct.TYPE_37__*, i64*) #1

declare dso_local i32 @WriteBytes(%struct.TYPE_27__*, i64*, i64) #1

declare dso_local i64 @XzFlags_GetCheckSize(i32) #1

declare dso_local i32 @XzBlock_SetHasUnpackSize(%struct.TYPE_35__*) #1

declare dso_local i32 @XzBlock_SetHasPackSize(%struct.TYPE_35__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
