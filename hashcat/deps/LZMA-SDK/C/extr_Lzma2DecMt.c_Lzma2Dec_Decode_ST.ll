; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Lzma2DecMt.c_Lzma2Dec_Decode_ST.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Lzma2DecMt.c_Lzma2Dec_Decode_ST.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, %struct.TYPE_9__, i64, i32, i32*, i32, %struct.TYPE_12__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i64 }

@False = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i64 0, align 8
@True = common dso_local global i64 0, align 8
@LZMA_FINISH_ANY = common dso_local global i32 0, align 4
@LZMA_FINISH_END = common dso_local global i32 0, align 4
@LZMA_STATUS_FINISHED_WITH_MARK = common dso_local global i64 0, align 8
@SZ_ERROR_WRITE = common dso_local global i64 0, align 8
@SZ_ERROR_DATA = common dso_local global i64 0, align 8
@LZMA_STATUS_NEEDS_MORE_INPUT = common dso_local global i64 0, align 8
@SZ_ERROR_INPUT_EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, i32)* @Lzma2Dec_Decode_ST to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Lzma2Dec_Decode_ST(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = call i32 @Lzma2DecMt_FreeOutBufs(%struct.TYPE_11__* %32)
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 13
  %36 = call i32 @MtDec_PrepareRead(i32* %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %31, %2
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %39 = call i64 @Lzma2Dec_Prepare_ST(%struct.TYPE_11__* %38)
  %40 = call i32 @RINOK(i64 %39)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 14
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %12, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %10, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %11, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32* null, i32** %9, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %377, %66, %37
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %103

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 13
  %63 = call i32* @MtDec_Read(i32* %62, i64* %8)
  store i32* %63, i32** %9, align 8
  store i64 0, i64* %7, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %53

67:                                               ; preds = %60
  %68 = load i32, i32* @False, align 4
  store i32 %68, i32* %5, align 4
  store i64 0, i64* %8, align 8
  br label %69

69:                                               ; preds = %67, %57
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 10
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %102, label %74

74:                                               ; preds = %69
  store i64 0, i64* %7, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %8, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 12
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %9, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 11
  %83 = load i32, i32* %82, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = bitcast i32* %84 to i8*
  %86 = call i64 @ISeqInStream_Read(i32 %83, i8* %85, i64* %8)
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 3
  store i64 %86, i64* %88, align 8
  %89 = load i64, i64* %8, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %74
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @SZ_OK, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91, %74
  %98 = load i64, i64* @True, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 10
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %97, %91
  br label %102

102:                                              ; preds = %101, %69
  br label %103

103:                                              ; preds = %102, %53
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %13, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %22, align 8
  %112 = load i64, i64* %22, align 8
  %113 = load i64, i64* %6, align 8
  %114 = sub nsw i64 %112, %113
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 9
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp sgt i64 %114, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %103
  %121 = load i64, i64* %6, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 9
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %121, %125
  store i64 %126, i64* %22, align 8
  br label %127

127:                                              ; preds = %120, %103
  %128 = load i64, i64* %22, align 8
  %129 = load i64, i64* %13, align 8
  %130 = sub nsw i64 %128, %129
  store i64 %130, i64* %14, align 8
  %131 = load i32, i32* @LZMA_FINISH_ANY, align 4
  store i32 %131, i32* %15, align 4
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 7
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %157

136:                                              ; preds = %127
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = sub nsw i64 %139, %142
  store i64 %143, i64* %23, align 8
  %144 = load i64, i64* %14, align 8
  %145 = load i64, i64* %23, align 8
  %146 = icmp sge i64 %144, %145
  br i1 %146, label %147, label %156

147:                                              ; preds = %136
  %148 = load i64, i64* %23, align 8
  store i64 %148, i64* %14, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 6
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %154 = load i32, i32* @LZMA_FINISH_END, align 4
  store i32 %154, i32* %15, align 4
  br label %155

155:                                              ; preds = %153, %147
  br label %156

156:                                              ; preds = %155, %136
  br label %157

157:                                              ; preds = %156, %127
  %158 = load i64, i64* %8, align 8
  %159 = load i64, i64* %7, align 8
  %160 = sub i64 %158, %159
  store i64 %160, i64* %16, align 8
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %162 = load i64, i64* %13, align 8
  %163 = load i64, i64* %14, align 8
  %164 = add nsw i64 %162, %163
  %165 = load i32*, i32** %9, align 8
  %166 = load i64, i64* %7, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  %168 = load i32, i32* %15, align 4
  %169 = call i64 @Lzma2Dec_DecodeToDic(%struct.TYPE_12__* %161, i64 %164, i32* %167, i64* %16, i32 %168, i64* %17)
  store i64 %169, i64* %18, align 8
  %170 = load i64, i64* %16, align 8
  %171 = load i64, i64* %7, align 8
  %172 = add i64 %171, %170
  store i64 %172, i64* %7, align 8
  %173 = load i64, i64* %16, align 8
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %176, %173
  store i64 %177, i64* %175, align 8
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* %13, align 8
  %183 = sub nsw i64 %181, %182
  store i64 %183, i64* %19, align 8
  %184 = load i64, i64* %19, align 8
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %187, %184
  store i64 %188, i64* %186, align 8
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 7
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %201

193:                                              ; preds = %157
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp sle i64 %196, %199
  br label %201

201:                                              ; preds = %193, %157
  %202 = phi i1 [ false, %157 ], [ %200, %193 ]
  %203 = zext i1 %202 to i32
  store i32 %203, i32* %20, align 4
  %204 = load i64, i64* %18, align 8
  %205 = load i64, i64* @SZ_OK, align 8
  %206 = icmp ne i64 %204, %205
  br i1 %206, label %227, label %207

207:                                              ; preds = %201
  %208 = load i64, i64* %16, align 8
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load i64, i64* %19, align 8
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %227, label %213

213:                                              ; preds = %210, %207
  %214 = load i64, i64* %17, align 8
  %215 = load i64, i64* @LZMA_STATUS_FINISHED_WITH_MARK, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %227, label %217

217:                                              ; preds = %213
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 6
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %217
  %223 = load i32, i32* %20, align 4
  %224 = icmp ne i32 %223, 0
  br label %225

225:                                              ; preds = %222, %217
  %226 = phi i1 [ false, %217 ], [ %224, %222 ]
  br label %227

227:                                              ; preds = %225, %213, %210, %201
  %228 = phi i1 [ true, %213 ], [ true, %210 ], [ true, %201 ], [ %226, %225 ]
  %229 = zext i1 %228 to i32
  store i32 %229, i32* %21, align 4
  %230 = load i32, i32* %21, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %236, label %232

232:                                              ; preds = %227
  %233 = load i64, i64* %19, align 8
  %234 = load i64, i64* %14, align 8
  %235 = icmp sge i64 %233, %234
  br i1 %235, label %236, label %337

236:                                              ; preds = %232, %227
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* %6, align 8
  %242 = sub nsw i64 %240, %241
  store i64 %242, i64* %25, align 8
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 8
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* %6, align 8
  %251 = add nsw i64 %249, %250
  %252 = load i64, i64* %25, align 8
  %253 = call i64 @ISeqOutStream_Write(i32 %245, i64 %251, i64 %252)
  store i64 %253, i64* %26, align 8
  %254 = load i64, i64* %26, align 8
  %255 = load i64, i64* %25, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %259

257:                                              ; preds = %236
  %258 = load i64, i64* @SZ_OK, align 8
  br label %261

259:                                              ; preds = %236
  %260 = load i64, i64* @SZ_ERROR_WRITE, align 8
  br label %261

261:                                              ; preds = %259, %257
  %262 = phi i64 [ %258, %257 ], [ %260, %259 ]
  store i64 %262, i64* %24, align 8
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = icmp eq i64 %266, %270
  br i1 %271, label %272, label %276

272:                                              ; preds = %261
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 0
  store i64 0, i64* %275, align 8
  br label %276

276:                                              ; preds = %272, %261
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  store i64 %280, i64* %6, align 8
  %281 = load i64, i64* %24, align 8
  %282 = call i32 @RINOK(i64 %281)
  %283 = load i32, i32* %21, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %336

285:                                              ; preds = %276
  %286 = load i64, i64* %18, align 8
  %287 = load i64, i64* @SZ_OK, align 8
  %288 = icmp ne i64 %286, %287
  br i1 %288, label %289, label %291

289:                                              ; preds = %285
  %290 = load i64, i64* %18, align 8
  store i64 %290, i64* %3, align 8
  br label %378

291:                                              ; preds = %285
  %292 = load i64, i64* %17, align 8
  %293 = load i64, i64* @LZMA_STATUS_FINISHED_WITH_MARK, align 8
  %294 = icmp eq i64 %292, %293
  br i1 %294, label %295, label %318

295:                                              ; preds = %291
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 6
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %316

300:                                              ; preds = %295
  %301 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 7
  %303 = load i64, i64* %302, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %315

305:                                              ; preds = %300
  %306 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i32 0, i32 4
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 1
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %308, %311
  br i1 %312, label %313, label %315

313:                                              ; preds = %305
  %314 = load i64, i64* @SZ_ERROR_DATA, align 8
  store i64 %314, i64* %3, align 8
  br label %378

315:                                              ; preds = %305, %300
  br label %316

316:                                              ; preds = %315, %295
  %317 = load i64, i64* @SZ_OK, align 8
  store i64 %317, i64* %3, align 8
  br label %378

318:                                              ; preds = %291
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 6
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %328, label %323

323:                                              ; preds = %318
  %324 = load i32, i32* %20, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %328

326:                                              ; preds = %323
  %327 = load i64, i64* @SZ_OK, align 8
  store i64 %327, i64* %3, align 8
  br label %378

328:                                              ; preds = %323, %318
  %329 = load i64, i64* %17, align 8
  %330 = load i64, i64* @LZMA_STATUS_NEEDS_MORE_INPUT, align 8
  %331 = icmp eq i64 %329, %330
  br i1 %331, label %332, label %334

332:                                              ; preds = %328
  %333 = load i64, i64* @SZ_ERROR_INPUT_EOF, align 8
  store i64 %333, i64* %3, align 8
  br label %378

334:                                              ; preds = %328
  %335 = load i64, i64* @SZ_ERROR_DATA, align 8
  store i64 %335, i64* %3, align 8
  br label %378

336:                                              ; preds = %276
  br label %337

337:                                              ; preds = %336, %232
  %338 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i32 0, i32 5
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %377

342:                                              ; preds = %337
  %343 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = load i64, i64* %10, align 8
  %347 = sub nsw i64 %345, %346
  store i64 %347, i64* %27, align 8
  %348 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %348, i32 0, i32 1
  %350 = load i64, i64* %349, align 8
  %351 = load i64, i64* %11, align 8
  %352 = sub nsw i64 %350, %351
  store i64 %352, i64* %28, align 8
  %353 = load i64, i64* %27, align 8
  %354 = icmp sge i64 %353, 4194304
  br i1 %354, label %358, label %355

355:                                              ; preds = %342
  %356 = load i64, i64* %28, align 8
  %357 = icmp sge i64 %356, 4194304
  br i1 %357, label %358, label %376

358:                                              ; preds = %355, %342
  %359 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %359, i32 0, i32 5
  %361 = load i64, i64* %360, align 8
  %362 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %362, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %366 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %365, i32 0, i32 1
  %367 = load i64, i64* %366, align 8
  %368 = call i64 @ICompressProgress_Progress(i64 %361, i64 %364, i64 %367)
  %369 = call i32 @RINOK(i64 %368)
  %370 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %371 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  store i64 %372, i64* %10, align 8
  %373 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %374 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %373, i32 0, i32 1
  %375 = load i64, i64* %374, align 8
  store i64 %375, i64* %11, align 8
  br label %376

376:                                              ; preds = %358, %355
  br label %377

377:                                              ; preds = %376, %337
  br label %53

378:                                              ; preds = %334, %332, %326, %316, %313, %289
  %379 = load i64, i64* %3, align 8
  ret i64 %379
}

declare dso_local i32 @Lzma2DecMt_FreeOutBufs(%struct.TYPE_11__*) #1

declare dso_local i32 @MtDec_PrepareRead(i32*) #1

declare dso_local i32 @RINOK(i64) #1

declare dso_local i64 @Lzma2Dec_Prepare_ST(%struct.TYPE_11__*) #1

declare dso_local i32* @MtDec_Read(i32*, i64*) #1

declare dso_local i64 @ISeqInStream_Read(i32, i8*, i64*) #1

declare dso_local i64 @Lzma2Dec_DecodeToDic(%struct.TYPE_12__*, i64, i32*, i64*, i32, i64*) #1

declare dso_local i64 @ISeqOutStream_Write(i32, i64, i64) #1

declare dso_local i64 @ICompressProgress_Progress(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
