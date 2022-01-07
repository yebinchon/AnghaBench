; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Lzma2Dec.c_Lzma2Dec_Parse.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Lzma2Dec.c_Lzma2Dec_Parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i64, i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@LZMA2_STATE_ERROR = common dso_local global i64 0, align 8
@LZMA2_STATE_FINISHED = common dso_local global i64 0, align 8
@LZMA_STATUS_FINISHED_WITH_MARK = common dso_local global i32 0, align 4
@LZMA_STATUS_NOT_FINISHED = common dso_local global i32 0, align 4
@LZMA2_STATE_DATA = common dso_local global i64 0, align 8
@LZMA2_STATE_DATA_CONT = common dso_local global i64 0, align 8
@LZMA_STATUS_NEEDS_MORE_INPUT = common dso_local global i32 0, align 4
@LZMA2_STATE_UNPACK0 = common dso_local global i64 0, align 8
@LZMA2_CONTROL_COPY_RESET_DIC = common dso_local global i32 0, align 4
@LZMA2_PARSE_STATUS_NEW_BLOCK = common dso_local global i32 0, align 4
@LZMA2_PARSE_STATUS_NEW_CHUNK = common dso_local global i32 0, align 4
@LZMA2_STATE_CONTROL = common dso_local global i64 0, align 8
@True = common dso_local global i32 0, align 4
@LZMA_STATUS_NOT_SPECIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Lzma2Dec_Parse(%struct.TYPE_7__* %0, i64 %1, i64* %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i64*, i64** %10, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %12, align 8
  %17 = load i64*, i64** %10, align 8
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %282, %109, %5
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @LZMA2_STATE_ERROR, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %283

24:                                               ; preds = %18
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LZMA2_STATE_FINISHED, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @LZMA_STATUS_FINISHED_WITH_MARK, align 4
  store i32 %31, i32* %6, align 4
  br label %288

32:                                               ; preds = %24
  %33 = load i64, i64* %8, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @LZMA_STATUS_NOT_FINISHED, align 4
  store i32 %39, i32* %6, align 4
  br label %288

40:                                               ; preds = %35, %32
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @LZMA2_STATE_DATA, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %110

46:                                               ; preds = %40
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @LZMA2_STATE_DATA_CONT, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %110

52:                                               ; preds = %46
  %53 = load i64*, i64** %10, align 8
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %12, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @LZMA_STATUS_NEEDS_MORE_INPUT, align 4
  store i32 %58, i32* %6, align 4
  br label %288

59:                                               ; preds = %52
  %60 = load i64*, i64** %10, align 8
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %60, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %64 = load i64*, i64** %9, align 8
  %65 = getelementptr inbounds i64, i64* %64, i32 1
  store i64* %65, i64** %9, align 8
  %66 = load i64, i64* %64, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i64 @Lzma2Dec_UpdateState(%struct.TYPE_7__* %63, i32 %67)
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @LZMA2_STATE_UNPACK0, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %59
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @LZMA2_CONTROL_COPY_RESET_DIC, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %87, label %82

82:                                               ; preds = %76
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp sge i32 %85, 224
  br i1 %86, label %87, label %89

87:                                               ; preds = %82, %76
  %88 = load i32, i32* @LZMA2_PARSE_STATUS_NEW_BLOCK, align 4
  store i32 %88, i32* %6, align 4
  br label %288

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %59
  %91 = load i64, i64* %8, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @LZMA2_STATE_FINISHED, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32, i32* @LZMA_STATUS_NOT_FINISHED, align 4
  store i32 %100, i32* %6, align 4
  br label %288

101:                                              ; preds = %93, %90
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @LZMA2_STATE_DATA, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @LZMA2_PARSE_STATUS_NEW_CHUNK, align 4
  store i32 %108, i32* %6, align 4
  br label %288

109:                                              ; preds = %101
  br label %18

110:                                              ; preds = %46, %40
  %111 = load i64, i64* %8, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = load i32, i32* @LZMA_STATUS_NOT_FINISHED, align 4
  store i32 %114, i32* %6, align 4
  br label %288

115:                                              ; preds = %110
  %116 = load i64, i64* %12, align 8
  %117 = load i64*, i64** %10, align 8
  %118 = load i64, i64* %117, align 8
  %119 = sub nsw i64 %116, %118
  store i64 %119, i64* %13, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %121 = call i64 @LZMA2_IS_UNCOMPRESSED_STATE(%struct.TYPE_7__* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %180

123:                                              ; preds = %115
  %124 = load i64, i64* %13, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load i32, i32* @LZMA_STATUS_NEEDS_MORE_INPUT, align 4
  store i32 %127, i32* %6, align 4
  br label %288

128:                                              ; preds = %123
  %129 = load i64, i64* %13, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp sgt i64 %129, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %13, align 8
  br label %138

138:                                              ; preds = %134, %128
  %139 = load i64, i64* %13, align 8
  %140 = load i64, i64* %8, align 8
  %141 = icmp sgt i64 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = load i64, i64* %8, align 8
  store i64 %143, i64* %13, align 8
  br label %144

144:                                              ; preds = %142, %138
  %145 = load i64, i64* %13, align 8
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %150, %145
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %148, align 8
  %153 = load i64, i64* %13, align 8
  %154 = load i64*, i64** %9, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 %153
  store i64* %155, i64** %9, align 8
  %156 = load i64, i64* %13, align 8
  %157 = load i64*, i64** %10, align 8
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %158, %156
  store i64 %159, i64* %157, align 8
  %160 = load i64, i64* %13, align 8
  %161 = load i64, i64* %8, align 8
  %162 = sub nsw i64 %161, %160
  store i64 %162, i64* %8, align 8
  %163 = load i64, i64* %13, align 8
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = sub nsw i64 %166, %163
  store i64 %167, i64* %165, align 8
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %144
  %173 = load i64, i64* @LZMA2_STATE_CONTROL, align 8
  br label %176

174:                                              ; preds = %144
  %175 = load i64, i64* @LZMA2_STATE_DATA_CONT, align 8
  br label %176

176:                                              ; preds = %174, %172
  %177 = phi i64 [ %173, %172 ], [ %175, %174 ]
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  store i64 %177, i64* %179, align 8
  br label %282

180:                                              ; preds = %115
  %181 = load i32, i32* @True, align 4
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 5
  store i32 %181, i32* %183, align 4
  %184 = load i64, i64* %13, align 8
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %180
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = load i32, i32* @LZMA_STATUS_NEEDS_MORE_INPUT, align 4
  store i32 %192, i32* %6, align 4
  br label %288

193:                                              ; preds = %186
  br label %217

194:                                              ; preds = %180
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @LZMA2_STATE_DATA, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %216

200:                                              ; preds = %194
  %201 = load i64, i64* @LZMA2_STATE_DATA_CONT, align 8
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  store i64 %201, i64* %203, align 8
  %204 = load i64*, i64** %9, align 8
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %200
  %208 = load i64*, i64** %10, align 8
  %209 = load i64, i64* %208, align 8
  %210 = add nsw i64 %209, 1
  store i64 %210, i64* %208, align 8
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = add nsw i64 %213, -1
  store i64 %214, i64* %212, align 8
  br label %283

215:                                              ; preds = %200
  br label %216

216:                                              ; preds = %215, %194
  br label %217

217:                                              ; preds = %216, %193
  %218 = load i64, i64* %13, align 8
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = icmp sgt i64 %218, %221
  br i1 %222, label %223, label %227

223:                                              ; preds = %217
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  store i64 %226, i64* %13, align 8
  br label %227

227:                                              ; preds = %223, %217
  %228 = load i64, i64* %13, align 8
  %229 = load i64*, i64** %9, align 8
  %230 = getelementptr inbounds i64, i64* %229, i64 %228
  store i64* %230, i64** %9, align 8
  %231 = load i64, i64* %13, align 8
  %232 = load i64*, i64** %10, align 8
  %233 = load i64, i64* %232, align 8
  %234 = add nsw i64 %233, %231
  store i64 %234, i64* %232, align 8
  %235 = load i64, i64* %13, align 8
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 3
  %238 = load i64, i64* %237, align 8
  %239 = sub nsw i64 %238, %235
  store i64 %239, i64* %237, align 8
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 3
  %242 = load i64, i64* %241, align 8
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %281

244:                                              ; preds = %227
  %245 = load i64, i64* %8, align 8
  store i64 %245, i64* %14, align 8
  %246 = load i64, i64* %14, align 8
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = icmp sgt i64 %246, %249
  br i1 %250, label %251, label %255

251:                                              ; preds = %244
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 2
  %254 = load i64, i64* %253, align 8
  store i64 %254, i64* %14, align 8
  br label %255

255:                                              ; preds = %251, %244
  %256 = load i64, i64* %14, align 8
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 4
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = sext i32 %260 to i64
  %262 = add nsw i64 %261, %256
  %263 = trunc i64 %262 to i32
  store i32 %263, i32* %259, align 8
  %264 = load i64, i64* %14, align 8
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = sub nsw i64 %267, %264
  store i64 %268, i64* %266, align 8
  %269 = load i64, i64* %14, align 8
  %270 = load i64, i64* %8, align 8
  %271 = sub nsw i64 %270, %269
  store i64 %271, i64* %8, align 8
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 2
  %274 = load i64, i64* %273, align 8
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %276, label %280

276:                                              ; preds = %255
  %277 = load i64, i64* @LZMA2_STATE_CONTROL, align 8
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 0
  store i64 %277, i64* %279, align 8
  br label %280

280:                                              ; preds = %276, %255
  br label %281

281:                                              ; preds = %280, %227
  br label %282

282:                                              ; preds = %281, %176
  br label %18

283:                                              ; preds = %207, %18
  %284 = load i64, i64* @LZMA2_STATE_ERROR, align 8
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 0
  store i64 %284, i64* %286, align 8
  %287 = load i32, i32* @LZMA_STATUS_NOT_SPECIFIED, align 4
  store i32 %287, i32* %6, align 4
  br label %288

288:                                              ; preds = %283, %191, %126, %113, %107, %99, %87, %57, %38, %30
  %289 = load i32, i32* %6, align 4
  ret i32 %289
}

declare dso_local i64 @Lzma2Dec_UpdateState(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @LZMA2_IS_UNCOMPRESSED_STATE(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
