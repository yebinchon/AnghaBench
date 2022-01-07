; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decApplyRound.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decApplyRound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i64, i64 }
%struct.TYPE_9__ = type { i32, i64, i64, i64 }

@DEC_Invalid_context = common dso_local global i64 0, align 8
@DECDPUN = common dso_local global i64 0, align 8
@powers = common dso_local global i32* null, align 8
@DECDPUNMAX = common dso_local global i32 0, align 4
@DEC_Underflow = common dso_local global i64 0, align 8
@DEC_Subnormal = common dso_local global i64 0, align 8
@DEC_Inexact = common dso_local global i64 0, align 8
@DEC_Rounded = common dso_local global i64 0, align 8
@uarrone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_9__*, i64, i64*)* @decApplyRound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decApplyRound(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %334

19:                                               ; preds = %4
  store i64 0, i64* %9, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %113 [
    i32 135, label %23
    i32 133, label %45
    i32 131, label %50
    i32 130, label %55
    i32 129, label %73
    i32 128, label %78
    i32 134, label %83
    i32 132, label %98
  ]

23:                                               ; preds = %19
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %26, align 4
  %28 = srem i32 %27, 5
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load i64, i64* %10, align 8
  %34 = icmp ne i64 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i64 -1, i64* %9, align 8
  br label %44

36:                                               ; preds = %32, %23
  %37 = load i64, i64* %7, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i64, i64* %10, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i64 1, i64* %9, align 8
  br label %43

43:                                               ; preds = %42, %39, %36
  br label %44

44:                                               ; preds = %43, %35
  br label %118

45:                                               ; preds = %19
  %46 = load i64, i64* %7, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i64 -1, i64* %9, align 8
  br label %49

49:                                               ; preds = %48, %45
  br label %118

50:                                               ; preds = %19
  %51 = load i64, i64* %7, align 8
  %52 = icmp sgt i64 %51, 5
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i64 1, i64* %9, align 8
  br label %54

54:                                               ; preds = %53, %50
  br label %118

55:                                               ; preds = %19
  %56 = load i64, i64* %7, align 8
  %57 = icmp sgt i64 %56, 5
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i64 1, i64* %9, align 8
  br label %72

59:                                               ; preds = %55
  %60 = load i64, i64* %7, align 8
  %61 = icmp eq i64 %60, 5
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 1
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i64 1, i64* %9, align 8
  br label %70

70:                                               ; preds = %69, %62
  br label %71

71:                                               ; preds = %70, %59
  br label %72

72:                                               ; preds = %71, %58
  br label %118

73:                                               ; preds = %19
  %74 = load i64, i64* %7, align 8
  %75 = icmp sge i64 %74, 5
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i64 1, i64* %9, align 8
  br label %77

77:                                               ; preds = %76, %73
  br label %118

78:                                               ; preds = %19
  %79 = load i64, i64* %7, align 8
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i64 1, i64* %9, align 8
  br label %82

82:                                               ; preds = %81, %78
  br label %118

83:                                               ; preds = %19
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = call i32 @decNumberIsNegative(%struct.TYPE_8__* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i64, i64* %7, align 8
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i64 -1, i64* %9, align 8
  br label %91

91:                                               ; preds = %90, %87
  br label %97

92:                                               ; preds = %83
  %93 = load i64, i64* %7, align 8
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i64 1, i64* %9, align 8
  br label %96

96:                                               ; preds = %95, %92
  br label %97

97:                                               ; preds = %96, %91
  br label %118

98:                                               ; preds = %19
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %100 = call i32 @decNumberIsNegative(%struct.TYPE_8__* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %98
  %103 = load i64, i64* %7, align 8
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i64 -1, i64* %9, align 8
  br label %106

106:                                              ; preds = %105, %102
  br label %112

107:                                              ; preds = %98
  %108 = load i64, i64* %7, align 8
  %109 = icmp sgt i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i64 1, i64* %9, align 8
  br label %111

111:                                              ; preds = %110, %107
  br label %112

112:                                              ; preds = %111, %106
  br label %118

113:                                              ; preds = %19
  %114 = load i64, i64* @DEC_Invalid_context, align 8
  %115 = load i64*, i64** %8, align 8
  %116 = load i64, i64* %115, align 8
  %117 = or i64 %116, %114
  store i64 %117, i64* %115, align 8
  br label %118

118:                                              ; preds = %113, %112, %97, %82, %77, %72, %54, %49, %44
  %119 = load i64, i64* %9, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  br label %334

122:                                              ; preds = %118
  %123 = load i64, i64* %9, align 8
  %124 = icmp sgt i64 %123, 0
  br i1 %124, label %125, label %203

125:                                              ; preds = %122
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %12, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  store i32* %131, i32** %11, align 8
  br label %132

132:                                              ; preds = %199, %125
  %133 = load i64, i64* %12, align 8
  %134 = load i64, i64* @DECDPUN, align 8
  %135 = icmp ule i64 %133, %134
  br i1 %135, label %136, label %189

136:                                              ; preds = %132
  %137 = load i32*, i32** %11, align 8
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** @powers, align 8
  %140 = load i64, i64* %12, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = sub nsw i32 %142, 1
  %144 = icmp ne i32 %138, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %136
  br label %202

146:                                              ; preds = %136
  %147 = load i32*, i32** @powers, align 8
  %148 = load i64, i64* %12, align 8
  %149 = sub i64 %148, 1
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %11, align 8
  store i32 %151, i32* %152, align 4
  %153 = load i32*, i32** %11, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 -1
  store i32* %154, i32** %11, align 8
  br label %155

155:                                              ; preds = %163, %146
  %156 = load i32*, i32** %11, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = icmp uge i32* %156, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %155
  %162 = load i32*, i32** %11, align 8
  store i32 0, i32* %162, align 4
  br label %163

163:                                              ; preds = %161
  %164 = load i32*, i32** %11, align 8
  %165 = getelementptr inbounds i32, i32* %164, i32 -1
  store i32* %165, i32** %11, align 8
  br label %155

166:                                              ; preds = %155
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %169, 1
  store i64 %170, i64* %168, align 8
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = add i64 %173, %176
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %180, 1
  %182 = icmp ugt i64 %177, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %166
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %186 = load i64*, i64** %8, align 8
  %187 = call i32 @decSetOverflow(%struct.TYPE_8__* %184, %struct.TYPE_9__* %185, i64* %186)
  br label %188

188:                                              ; preds = %183, %166
  br label %334

189:                                              ; preds = %132
  %190 = load i32*, i32** %11, align 8
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @DECDPUNMAX, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %189
  br label %202

195:                                              ; preds = %189
  %196 = load i64, i64* @DECDPUN, align 8
  %197 = load i64, i64* %12, align 8
  %198 = sub i64 %197, %196
  store i64 %198, i64* %12, align 8
  br label %199

199:                                              ; preds = %195
  %200 = load i32*, i32** %11, align 8
  %201 = getelementptr inbounds i32, i32* %200, i32 1
  store i32* %201, i32** %11, align 8
  br label %132

202:                                              ; preds = %194, %145
  br label %319

203:                                              ; preds = %122
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  store i64 %206, i64* %15, align 8
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  store i32* %209, i32** %13, align 8
  br label %210

210:                                              ; preds = %315, %203
  %211 = load i64, i64* %15, align 8
  %212 = load i64, i64* @DECDPUN, align 8
  %213 = icmp ule i64 %211, %212
  br i1 %213, label %214, label %306

214:                                              ; preds = %210
  %215 = load i32*, i32** %13, align 8
  %216 = load i32, i32* %215, align 4
  %217 = load i32*, i32** @powers, align 8
  %218 = load i64, i64* %15, align 8
  %219 = sub i64 %218, 1
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = icmp ne i32 %216, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %214
  br label %318

224:                                              ; preds = %214
  %225 = load i32*, i32** %13, align 8
  store i32* %225, i32** %14, align 8
  %226 = load i32*, i32** @powers, align 8
  %227 = load i64, i64* %15, align 8
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = sub nsw i32 %229, 1
  %231 = load i32*, i32** %13, align 8
  store i32 %230, i32* %231, align 4
  %232 = load i32*, i32** %13, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 -1
  store i32* %233, i32** %13, align 8
  br label %234

234:                                              ; preds = %247, %224
  %235 = load i32*, i32** %13, align 8
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  %238 = load i32*, i32** %237, align 8
  %239 = icmp uge i32* %235, %238
  br i1 %239, label %240, label %250

240:                                              ; preds = %234
  %241 = load i32*, i32** @powers, align 8
  %242 = load i64, i64* @DECDPUN, align 8
  %243 = getelementptr inbounds i32, i32* %241, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = sub nsw i32 %244, 1
  %246 = load i32*, i32** %13, align 8
  store i32 %245, i32* %246, align 4
  br label %247

247:                                              ; preds = %240
  %248 = load i32*, i32** %13, align 8
  %249 = getelementptr inbounds i32, i32* %248, i32 -1
  store i32* %249, i32** %13, align 8
  br label %234

250:                                              ; preds = %234
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = add nsw i64 %253, -1
  store i64 %254, i64* %252, align 8
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = add nsw i64 %257, 1
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 3
  %264 = load i64, i64* %263, align 8
  %265 = sub nsw i64 %261, %264
  %266 = add nsw i64 %265, 1
  %267 = icmp eq i64 %258, %266
  br i1 %267, label %268, label %305

268:                                              ; preds = %250
  %269 = load i64, i64* %15, align 8
  %270 = icmp eq i64 %269, 1
  br i1 %270, label %271, label %278

271:                                              ; preds = %268
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = icmp eq i64 %274, 1
  br i1 %275, label %276, label %278

276:                                              ; preds = %271
  %277 = load i32*, i32** %14, align 8
  store i32 0, i32* %277, align 4
  br label %290

278:                                              ; preds = %271, %268
  %279 = load i32*, i32** @powers, align 8
  %280 = load i64, i64* %15, align 8
  %281 = sub i64 %280, 1
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = sub nsw i32 %283, 1
  %285 = load i32*, i32** %14, align 8
  store i32 %284, i32* %285, align 4
  %286 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = add i64 %288, -1
  store i64 %289, i64* %287, align 8
  br label %290

290:                                              ; preds = %278, %276
  %291 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 2
  %293 = load i64, i64* %292, align 8
  %294 = add nsw i64 %293, 1
  store i64 %294, i64* %292, align 8
  %295 = load i64, i64* @DEC_Underflow, align 8
  %296 = load i64, i64* @DEC_Subnormal, align 8
  %297 = or i64 %295, %296
  %298 = load i64, i64* @DEC_Inexact, align 8
  %299 = or i64 %297, %298
  %300 = load i64, i64* @DEC_Rounded, align 8
  %301 = or i64 %299, %300
  %302 = load i64*, i64** %8, align 8
  %303 = load i64, i64* %302, align 8
  %304 = or i64 %303, %301
  store i64 %304, i64* %302, align 8
  br label %305

305:                                              ; preds = %290, %250
  br label %334

306:                                              ; preds = %210
  %307 = load i32*, i32** %13, align 8
  %308 = load i32, i32* %307, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %306
  br label %318

311:                                              ; preds = %306
  %312 = load i64, i64* @DECDPUN, align 8
  %313 = load i64, i64* %15, align 8
  %314 = sub i64 %313, %312
  store i64 %314, i64* %15, align 8
  br label %315

315:                                              ; preds = %311
  %316 = load i32*, i32** %13, align 8
  %317 = getelementptr inbounds i32, i32* %316, i32 1
  store i32* %317, i32** %13, align 8
  br label %210

318:                                              ; preds = %310, %223
  br label %319

319:                                              ; preds = %318, %202
  %320 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i32 0, i32 0
  %322 = load i32*, i32** %321, align 8
  %323 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = trunc i64 %325 to i32
  %327 = call i32 @D2U(i32 %326)
  %328 = load i32, i32* @uarrone, align 4
  %329 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 0
  %331 = load i32*, i32** %330, align 8
  %332 = load i64, i64* %9, align 8
  %333 = call i32 @decUnitAddSub(i32* %322, i32 %327, i32 %328, i32 1, i32 0, i32* %331, i64 %332)
  br label %334

334:                                              ; preds = %319, %305, %188, %121, %18
  ret void
}

declare dso_local i32 @decNumberIsNegative(%struct.TYPE_8__*) #1

declare dso_local i32 @decSetOverflow(%struct.TYPE_8__*, %struct.TYPE_9__*, i64*) #1

declare dso_local i32 @decUnitAddSub(i32*, i32, i32, i32, i32, i32*, i64) #1

declare dso_local i32 @D2U(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
