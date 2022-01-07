; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decimal64.c_decimal64FromNumber.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decimal64.c_decimal64FromNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i64, i32, i32, i64* }
%struct.TYPE_17__ = type { i32, i32 }

@DECIMAL64_Pmax = common dso_local global i32 0, align 4
@DECIMAL64_Emax = common dso_local global i64 0, align 8
@DECIMAL64_Emin = common dso_local global i64 0, align 8
@DEC_INIT_DECIMAL64 = common dso_local global i32 0, align 4
@DECNEG = common dso_local global i32 0, align 4
@DECSPECIAL = common dso_local global i32 0, align 4
@DECINF = common dso_local global i32 0, align 4
@DECIMAL_Inf = common dso_local global i32 0, align 4
@DECNAN = common dso_local global i32 0, align 4
@DECIMAL_NaN = common dso_local global i32 0, align 4
@DECIMAL_sNaN = common dso_local global i32 0, align 4
@DECIMAL64_Bias = common dso_local global i64 0, align 8
@DEC_Clamped = common dso_local global i32 0, align 4
@DECIMAL64_Ehigh = common dso_local global i32 0, align 4
@DECDPUN = common dso_local global i32 0, align 4
@BIN2DPD = common dso_local global i32* null, align 8
@DECLITEND = common dso_local global i64 0, align 8
@targhi = common dso_local global i32 0, align 4
@targlo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @decimal64FromNumber(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_16__, align 8
  %10 = alloca %struct.TYPE_17__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca [6 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %6, align 8
  store i32 0, i32* %7, align 4
  %20 = bitcast [2 x i32]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 8, i1 false)
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %23, %27
  %29 = sub nsw i64 %28, 1
  store i64 %29, i64* %8, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @DECIMAL64_Pmax, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %3
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @DECIMAL64_Emax, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @DECIMAL64_Emin, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %39, %35, %3
  %44 = load i32, i32* @DEC_INIT_DECIMAL64, align 4
  %45 = call i32 @decContextDefault(%struct.TYPE_17__* %10, i32 %44)
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %51 = call i32 @decNumberPlus(%struct.TYPE_16__* %9, %struct.TYPE_16__* %50, %struct.TYPE_17__* %10)
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DECNEG, align 4
  %56 = and i32 %54, %55
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 4
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %7, align 4
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %5, align 8
  br label %62

62:                                               ; preds = %43, %39
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @DECSPECIAL, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %122

69:                                               ; preds = %62
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @DECINF, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load i32, i32* @DECIMAL_Inf, align 4
  %78 = shl i32 %77, 24
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 %78, i32* %79, align 4
  br label %121

80:                                               ; preds = %69
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 3
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %80
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp sgt i32 %89, 1
  br i1 %90, label %91, label %101

91:                                               ; preds = %86, %80
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @DECIMAL64_Pmax, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %100 = call i32 @decDigitsToDPD(%struct.TYPE_16__* %98, i32* %99, i64 0)
  br label %101

101:                                              ; preds = %97, %91, %86
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @DECNAN, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load i32, i32* @DECIMAL_NaN, align 4
  %110 = shl i32 %109, 24
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %110
  store i32 %113, i32* %111, align 4
  br label %120

114:                                              ; preds = %101
  %115 = load i32, i32* @DECIMAL_sNaN, align 4
  %116 = shl i32 %115, 24
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %116
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %114, %108
  br label %121

121:                                              ; preds = %120, %76
  br label %291

122:                                              ; preds = %62
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %124 = call i64 @decNumberIsZero(%struct.TYPE_16__* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %157

126:                                              ; preds = %122
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @DECIMAL64_Bias, align 8
  %131 = sub nsw i64 0, %130
  %132 = icmp slt i64 %129, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %126
  store i32 0, i32* %12, align 4
  %134 = load i32, i32* @DEC_Clamped, align 4
  %135 = load i32, i32* %7, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %7, align 4
  br label %153

137:                                              ; preds = %126
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @DECIMAL64_Bias, align 8
  %142 = add nsw i64 %140, %141
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* @DECIMAL64_Ehigh, align 4
  %146 = icmp sgt i32 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %137
  %148 = load i32, i32* @DECIMAL64_Ehigh, align 4
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* @DEC_Clamped, align 4
  %150 = load i32, i32* %7, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %7, align 4
  br label %152

152:                                              ; preds = %147, %137
  br label %153

153:                                              ; preds = %152, %133
  %154 = load i32, i32* %12, align 4
  %155 = ashr i32 %154, 5
  %156 = and i32 %155, 24
  store i32 %156, i32* %11, align 4
  br label %279

157:                                              ; preds = %122
  store i64 0, i64* %16, align 8
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @DECIMAL64_Bias, align 8
  %162 = add nsw i64 %160, %161
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %12, align 4
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* @DECIMAL64_Ehigh, align 4
  %166 = icmp sgt i32 %164, %165
  br i1 %166, label %167, label %176

167:                                              ; preds = %157
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* @DECIMAL64_Ehigh, align 4
  %170 = sub nsw i32 %168, %169
  %171 = sext i32 %170 to i64
  store i64 %171, i64* %16, align 8
  %172 = load i32, i32* @DECIMAL64_Ehigh, align 4
  store i32 %172, i32* %12, align 4
  %173 = load i32, i32* @DEC_Clamped, align 4
  %174 = load i32, i32* %7, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %7, align 4
  br label %176

176:                                              ; preds = %167, %157
  %177 = load i32, i32* @DECDPUN, align 4
  %178 = icmp eq i32 %177, 3
  br i1 %178, label %179, label %250

179:                                              ; preds = %176
  %180 = load i64, i64* %16, align 8
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %250

182:                                              ; preds = %179
  %183 = bitcast [6 x i32]* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %183, i8 0, i64 24, i1 false)
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  store i64 %187, i64* %19, align 8
  store i32 0, i32* %18, align 4
  br label %188

188:                                              ; preds = %205, %182
  %189 = load i64, i64* %19, align 8
  %190 = icmp sgt i64 %189, 0
  br i1 %190, label %191, label %210

191:                                              ; preds = %188
  %192 = load i32*, i32** @BIN2DPD, align 8
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 3
  %195 = load i64*, i64** %194, align 8
  %196 = load i32, i32* %18, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i64, i64* %195, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds i32, i32* %192, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %18, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 %203
  store i32 %201, i32* %204, align 4
  br label %205

205:                                              ; preds = %191
  %206 = load i32, i32* %18, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %18, align 4
  %208 = load i64, i64* %19, align 8
  %209 = sub nsw i64 %208, 3
  store i64 %209, i64* %19, align 8
  br label %188

210:                                              ; preds = %188
  %211 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 0
  %212 = load i32, i32* %211, align 16
  %213 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %212, i32* %213, align 4
  %214 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 1
  %215 = load i32, i32* %214, align 4
  %216 = shl i32 %215, 10
  %217 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %218 = load i32, i32* %217, align 4
  %219 = or i32 %218, %216
  store i32 %219, i32* %217, align 4
  %220 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 2
  %221 = load i32, i32* %220, align 8
  %222 = shl i32 %221, 20
  %223 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %224 = load i32, i32* %223, align 4
  %225 = or i32 %224, %222
  store i32 %225, i32* %223, align 4
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = icmp sgt i32 %228, 6
  br i1 %229, label %230, label %247

230:                                              ; preds = %210
  %231 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 3
  %232 = load i32, i32* %231, align 4
  %233 = shl i32 %232, 30
  %234 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %235 = load i32, i32* %234, align 4
  %236 = or i32 %235, %233
  store i32 %236, i32* %234, align 4
  %237 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 3
  %238 = load i32, i32* %237, align 4
  %239 = ashr i32 %238, 2
  %240 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 %239, i32* %240, align 4
  %241 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 4
  %242 = load i32, i32* %241, align 16
  %243 = shl i32 %242, 8
  %244 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %245 = load i32, i32* %244, align 4
  %246 = or i32 %245, %243
  store i32 %246, i32* %244, align 4
  br label %247

247:                                              ; preds = %230, %210
  %248 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 5
  %249 = load i32, i32* %248, align 4
  store i32 %249, i32* %15, align 4
  br label %261

250:                                              ; preds = %179, %176
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %252 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %253 = load i64, i64* %16, align 8
  %254 = call i32 @decDigitsToDPD(%struct.TYPE_16__* %251, i32* %252, i64 %253)
  %255 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %256 = load i32, i32* %255, align 4
  %257 = ashr i32 %256, 18
  store i32 %257, i32* %15, align 4
  %258 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %259 = load i32, i32* %258, align 4
  %260 = and i32 %259, 262143
  store i32 %260, i32* %258, align 4
  br label %261

261:                                              ; preds = %250, %247
  %262 = load i32, i32* %15, align 4
  %263 = icmp sge i32 %262, 8
  br i1 %263, label %264, label %272

264:                                              ; preds = %261
  %265 = load i32, i32* %12, align 4
  %266 = ashr i32 %265, 7
  %267 = and i32 %266, 6
  %268 = or i32 24, %267
  %269 = load i32, i32* %15, align 4
  %270 = and i32 %269, 1
  %271 = or i32 %268, %270
  store i32 %271, i32* %11, align 4
  br label %278

272:                                              ; preds = %261
  %273 = load i32, i32* %12, align 4
  %274 = ashr i32 %273, 5
  %275 = and i32 %274, 24
  %276 = load i32, i32* %15, align 4
  %277 = or i32 %275, %276
  store i32 %277, i32* %11, align 4
  br label %278

278:                                              ; preds = %272, %264
  br label %279

279:                                              ; preds = %278, %153
  %280 = load i32, i32* %11, align 4
  %281 = shl i32 %280, 26
  %282 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %283 = load i32, i32* %282, align 4
  %284 = or i32 %283, %281
  store i32 %284, i32* %282, align 4
  %285 = load i32, i32* %12, align 4
  %286 = and i32 %285, 255
  %287 = shl i32 %286, 18
  %288 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %289 = load i32, i32* %288, align 4
  %290 = or i32 %289, %287
  store i32 %290, i32* %288, align 4
  br label %291

291:                                              ; preds = %279, %121
  %292 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* @DECNEG, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %302

298:                                              ; preds = %291
  %299 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %300 = load i32, i32* %299, align 4
  %301 = or i32 %300, -2147483648
  store i32 %301, i32* %299, align 4
  br label %302

302:                                              ; preds = %298, %291
  %303 = load i64, i64* @DECLITEND, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %319

305:                                              ; preds = %302
  %306 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @UBFROMUI(i64 %308, i32 %310)
  %312 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = add nsw i64 %314, 4
  %316 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @UBFROMUI(i64 %315, i32 %317)
  br label %333

319:                                              ; preds = %302
  %320 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @UBFROMUI(i64 %322, i32 %324)
  %326 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = add nsw i64 %328, 4
  %330 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @UBFROMUI(i64 %329, i32 %331)
  br label %333

333:                                              ; preds = %319, %305
  %334 = load i32, i32* %7, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %340

336:                                              ; preds = %333
  %337 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %338 = load i32, i32* %7, align 4
  %339 = call i32 @decContextSetStatus(%struct.TYPE_17__* %337, i32 %338)
  br label %340

340:                                              ; preds = %336, %333
  %341 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  ret %struct.TYPE_15__* %341
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @decContextDefault(%struct.TYPE_17__*, i32) #2

declare dso_local i32 @decNumberPlus(%struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_17__*) #2

declare dso_local i32 @decDigitsToDPD(%struct.TYPE_16__*, i32*, i64) #2

declare dso_local i64 @decNumberIsZero(%struct.TYPE_16__*) #2

declare dso_local i32 @UBFROMUI(i64, i32) #2

declare dso_local i32 @decContextSetStatus(%struct.TYPE_17__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
