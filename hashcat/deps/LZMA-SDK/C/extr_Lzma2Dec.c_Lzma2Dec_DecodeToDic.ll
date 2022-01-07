; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Lzma2Dec.c_Lzma2Dec_DecodeToDic.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Lzma2Dec.c_Lzma2Dec_DecodeToDic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@LZMA_STATUS_NOT_SPECIFIED = common dso_local global i64 0, align 8
@LZMA2_STATE_ERROR = common dso_local global i64 0, align 8
@LZMA2_STATE_FINISHED = common dso_local global i64 0, align 8
@LZMA_STATUS_FINISHED_WITH_MARK = common dso_local global i64 0, align 8
@SZ_OK = common dso_local global i64 0, align 8
@LZMA_FINISH_ANY = common dso_local global i64 0, align 8
@LZMA_STATUS_NOT_FINISHED = common dso_local global i64 0, align 8
@LZMA2_STATE_DATA = common dso_local global i64 0, align 8
@LZMA2_STATE_DATA_CONT = common dso_local global i64 0, align 8
@LZMA_STATUS_NEEDS_MORE_INPUT = common dso_local global i64 0, align 8
@LZMA_FINISH_END = common dso_local global i64 0, align 8
@LZMA2_CONTROL_COPY_RESET_DIC = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4
@LZMA2_STATE_CONTROL = common dso_local global i64 0, align 8
@LZMA_STATUS_MAYBE_FINISHED_WITHOUT_MARK = common dso_local global i64 0, align 8
@SZ_ERROR_DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Lzma2Dec_DecodeToDic(%struct.TYPE_8__* %0, i64 %1, i32* %2, i64* %3, i64 %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  %23 = load i64*, i64** %11, align 8
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %14, align 8
  %25 = load i64*, i64** %11, align 8
  store i64 0, i64* %25, align 8
  %26 = load i64, i64* @LZMA_STATUS_NOT_SPECIFIED, align 8
  %27 = load i64*, i64** %13, align 8
  store i64 %26, i64* %27, align 8
  br label %28

28:                                               ; preds = %304, %102, %6
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @LZMA2_STATE_ERROR, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %305

34:                                               ; preds = %28
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @LZMA2_STATE_FINISHED, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i64, i64* @LZMA_STATUS_FINISHED_WITH_MARK, align 8
  %42 = load i64*, i64** %13, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i64, i64* @SZ_OK, align 8
  store i64 %43, i64* %7, align 8
  br label %312

44:                                               ; preds = %34
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %15, align 8
  %49 = load i64, i64* %15, align 8
  %50 = load i64, i64* %9, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %44
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* @LZMA_FINISH_ANY, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i64, i64* @LZMA_STATUS_NOT_FINISHED, align 8
  %58 = load i64*, i64** %13, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i64, i64* @SZ_OK, align 8
  store i64 %59, i64* %7, align 8
  br label %312

60:                                               ; preds = %52, %44
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @LZMA2_STATE_DATA, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %103

66:                                               ; preds = %60
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @LZMA2_STATE_DATA_CONT, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %103

72:                                               ; preds = %66
  %73 = load i64*, i64** %11, align 8
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %14, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i64, i64* @LZMA_STATUS_NEEDS_MORE_INPUT, align 8
  %79 = load i64*, i64** %13, align 8
  store i64 %78, i64* %79, align 8
  %80 = load i64, i64* @SZ_OK, align 8
  store i64 %80, i64* %7, align 8
  br label %312

81:                                               ; preds = %72
  %82 = load i64*, i64** %11, align 8
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %82, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %10, align 8
  %88 = load i32, i32* %86, align 4
  %89 = call i64 @Lzma2Dec_UpdateState(%struct.TYPE_8__* %85, i32 %88)
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load i64, i64* %15, align 8
  %93 = load i64, i64* %9, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %81
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @LZMA2_STATE_FINISHED, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %305

102:                                              ; preds = %95, %81
  br label %28

103:                                              ; preds = %66, %60
  %104 = load i64, i64* %14, align 8
  %105 = load i64*, i64** %11, align 8
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %104, %106
  store i64 %107, i64* %16, align 8
  %108 = load i64, i64* %9, align 8
  %109 = load i64, i64* %15, align 8
  %110 = sub nsw i64 %108, %109
  store i64 %110, i64* %17, align 8
  %111 = load i64, i64* @LZMA_FINISH_ANY, align 8
  store i64 %111, i64* %18, align 8
  %112 = load i64, i64* %17, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp sge i64 %112, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %103
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %17, align 8
  %121 = load i64, i64* @LZMA_FINISH_END, align 8
  store i64 %121, i64* %18, align 8
  br label %122

122:                                              ; preds = %117, %103
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %124 = call i64 @LZMA2_IS_UNCOMPRESSED_STATE(%struct.TYPE_8__* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %191

126:                                              ; preds = %122
  %127 = load i64, i64* %16, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i64, i64* @LZMA_STATUS_NEEDS_MORE_INPUT, align 8
  %131 = load i64*, i64** %13, align 8
  store i64 %130, i64* %131, align 8
  %132 = load i64, i64* @SZ_OK, align 8
  store i64 %132, i64* %7, align 8
  br label %312

133:                                              ; preds = %126
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @LZMA2_STATE_DATA, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %151

139:                                              ; preds = %133
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @LZMA2_CONTROL_COPY_RESET_DIC, align 4
  %144 = icmp eq i32 %142, %143
  %145 = zext i1 %144 to i32
  store i32 %145, i32* %19, align 4
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 4
  %148 = load i32, i32* %19, align 4
  %149 = load i32, i32* @False, align 4
  %150 = call i32 @LzmaDec_InitDicAndState(%struct.TYPE_9__* %147, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %139, %133
  %152 = load i64, i64* %16, align 8
  %153 = load i64, i64* %17, align 8
  %154 = icmp sgt i64 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = load i64, i64* %17, align 8
  store i64 %156, i64* %16, align 8
  br label %157

157:                                              ; preds = %155, %151
  %158 = load i64, i64* %16, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  br label %305

161:                                              ; preds = %157
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 4
  %164 = load i32*, i32** %10, align 8
  %165 = load i64, i64* %16, align 8
  %166 = call i32 @LzmaDec_UpdateWithUncompressed(%struct.TYPE_9__* %163, i32* %164, i64 %165)
  %167 = load i64, i64* %16, align 8
  %168 = load i32*, i32** %10, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 %167
  store i32* %169, i32** %10, align 8
  %170 = load i64, i64* %16, align 8
  %171 = load i64*, i64** %11, align 8
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %172, %170
  store i64 %173, i64* %171, align 8
  %174 = load i64, i64* %16, align 8
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = sub nsw i64 %177, %174
  store i64 %178, i64* %176, align 8
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %161
  %184 = load i64, i64* @LZMA2_STATE_CONTROL, align 8
  br label %187

185:                                              ; preds = %161
  %186 = load i64, i64* @LZMA2_STATE_DATA_CONT, align 8
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi i64 [ %184, %183 ], [ %186, %185 ]
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  store i64 %188, i64* %190, align 8
  br label %304

191:                                              ; preds = %122
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @LZMA2_STATE_DATA, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %216

197:                                              ; preds = %191
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = icmp sge i32 %200, 224
  %202 = zext i1 %201 to i32
  store i32 %202, i32* %21, align 4
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = icmp sge i32 %205, 160
  %207 = zext i1 %206 to i32
  store i32 %207, i32* %22, align 4
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 4
  %210 = load i32, i32* %21, align 4
  %211 = load i32, i32* %22, align 4
  %212 = call i32 @LzmaDec_InitDicAndState(%struct.TYPE_9__* %209, i32 %210, i32 %211)
  %213 = load i64, i64* @LZMA2_STATE_DATA_CONT, align 8
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  store i64 %213, i64* %215, align 8
  br label %216

216:                                              ; preds = %197, %191
  %217 = load i64, i64* %16, align 8
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = icmp sgt i64 %217, %220
  br i1 %221, label %222, label %226

222:                                              ; preds = %216
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  store i64 %225, i64* %16, align 8
  br label %226

226:                                              ; preds = %222, %216
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 4
  %229 = load i64, i64* %15, align 8
  %230 = load i64, i64* %17, align 8
  %231 = add nsw i64 %229, %230
  %232 = load i32*, i32** %10, align 8
  %233 = load i64, i64* %18, align 8
  %234 = load i64*, i64** %13, align 8
  %235 = call i64 @LzmaDec_DecodeToDic(%struct.TYPE_9__* %228, i64 %231, i32* %232, i64* %16, i64 %233, i64* %234)
  store i64 %235, i64* %20, align 8
  %236 = load i64, i64* %16, align 8
  %237 = load i32*, i32** %10, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 %236
  store i32* %238, i32** %10, align 8
  %239 = load i64, i64* %16, align 8
  %240 = load i64*, i64** %11, align 8
  %241 = load i64, i64* %240, align 8
  %242 = add nsw i64 %241, %239
  store i64 %242, i64* %240, align 8
  %243 = load i64, i64* %16, align 8
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 3
  %246 = load i64, i64* %245, align 8
  %247 = sub nsw i64 %246, %243
  store i64 %247, i64* %245, align 8
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 4
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* %15, align 8
  %253 = sub nsw i64 %251, %252
  store i64 %253, i64* %17, align 8
  %254 = load i64, i64* %17, align 8
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = sub nsw i64 %257, %254
  store i64 %258, i64* %256, align 8
  %259 = load i64, i64* %20, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %226
  br label %305

262:                                              ; preds = %226
  %263 = load i64*, i64** %13, align 8
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @LZMA_STATUS_NEEDS_MORE_INPUT, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %275

267:                                              ; preds = %262
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 3
  %270 = load i64, i64* %269, align 8
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %267
  br label %305

273:                                              ; preds = %267
  %274 = load i64, i64* @SZ_OK, align 8
  store i64 %274, i64* %7, align 8
  br label %312

275:                                              ; preds = %262
  %276 = load i64, i64* %16, align 8
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %301

278:                                              ; preds = %275
  %279 = load i64, i64* %17, align 8
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %281, label %301

281:                                              ; preds = %278
  %282 = load i64*, i64** %13, align 8
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @LZMA_STATUS_MAYBE_FINISHED_WITHOUT_MARK, align 8
  %285 = icmp ne i64 %283, %284
  br i1 %285, label %296, label %286

286:                                              ; preds = %281
  %287 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %296, label %291

291:                                              ; preds = %286
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 3
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %291, %286, %281
  br label %305

297:                                              ; preds = %291
  %298 = load i64, i64* @LZMA2_STATE_CONTROL, align 8
  %299 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 0
  store i64 %298, i64* %300, align 8
  br label %301

301:                                              ; preds = %297, %278, %275
  %302 = load i64, i64* @LZMA_STATUS_NOT_SPECIFIED, align 8
  %303 = load i64*, i64** %13, align 8
  store i64 %302, i64* %303, align 8
  br label %304

304:                                              ; preds = %301, %187
  br label %28

305:                                              ; preds = %296, %272, %261, %160, %101, %28
  %306 = load i64, i64* @LZMA_STATUS_NOT_SPECIFIED, align 8
  %307 = load i64*, i64** %13, align 8
  store i64 %306, i64* %307, align 8
  %308 = load i64, i64* @LZMA2_STATE_ERROR, align 8
  %309 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 0
  store i64 %308, i64* %310, align 8
  %311 = load i64, i64* @SZ_ERROR_DATA, align 8
  store i64 %311, i64* %7, align 8
  br label %312

312:                                              ; preds = %305, %273, %129, %77, %56, %40
  %313 = load i64, i64* %7, align 8
  ret i64 %313
}

declare dso_local i64 @Lzma2Dec_UpdateState(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @LZMA2_IS_UNCOMPRESSED_STATE(%struct.TYPE_8__*) #1

declare dso_local i32 @LzmaDec_InitDicAndState(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @LzmaDec_UpdateWithUncompressed(%struct.TYPE_9__*, i32*, i64) #1

declare dso_local i64 @LzmaDec_DecodeToDic(%struct.TYPE_9__*, i64, i32*, i64*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
