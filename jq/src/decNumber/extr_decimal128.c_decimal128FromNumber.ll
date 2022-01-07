; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decimal128.c_decimal128FromNumber.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decimal128.c_decimal128FromNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i64, i32, i32, i64* }
%struct.TYPE_17__ = type { i32, i32 }

@DECIMAL128_Pmax = common dso_local global i32 0, align 4
@DECIMAL128_Emax = common dso_local global i64 0, align 8
@DECIMAL128_Emin = common dso_local global i64 0, align 8
@DEC_INIT_DECIMAL128 = common dso_local global i32 0, align 4
@DECNEG = common dso_local global i32 0, align 4
@DECSPECIAL = common dso_local global i32 0, align 4
@DECINF = common dso_local global i32 0, align 4
@DECIMAL_Inf = common dso_local global i32 0, align 4
@DECNAN = common dso_local global i32 0, align 4
@DECIMAL_NaN = common dso_local global i32 0, align 4
@DECIMAL_sNaN = common dso_local global i32 0, align 4
@DECIMAL128_Bias = common dso_local global i64 0, align 8
@DEC_Clamped = common dso_local global i32 0, align 4
@DECIMAL128_Ehigh = common dso_local global i32 0, align 4
@DECLITEND = common dso_local global i64 0, align 8
@targhi = common dso_local global i32 0, align 4
@targlo = common dso_local global i32 0, align 4
@targmh = common dso_local global i32 0, align 4
@targml = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @decimal128FromNumber(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, %struct.TYPE_17__* %2) #0 {
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
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %6, align 8
  store i32 0, i32* %7, align 4
  %17 = bitcast [4 x i32]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 16, i1 false)
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %20, %24
  %26 = sub nsw i64 %25, 1
  store i64 %26, i64* %8, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @DECIMAL128_Pmax, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %3
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @DECIMAL128_Emax, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @DECIMAL128_Emin, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %36, %32, %3
  %41 = load i32, i32* @DEC_INIT_DECIMAL128, align 4
  %42 = call i32 @decContextDefault(%struct.TYPE_17__* %10, i32 %41)
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %48 = call i32 @decNumberPlus(%struct.TYPE_16__* %9, %struct.TYPE_16__* %47, %struct.TYPE_17__* %10)
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @DECNEG, align 4
  %53 = and i32 %51, %52
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 4
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %7, align 4
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %5, align 8
  br label %59

59:                                               ; preds = %40, %36
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @DECSPECIAL, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %119

66:                                               ; preds = %59
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @DECINF, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32, i32* @DECIMAL_Inf, align 4
  %75 = shl i32 %74, 24
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  store i32 %75, i32* %76, align 4
  br label %118

77:                                               ; preds = %66
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 3
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %77
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = icmp sgt i32 %86, 1
  br i1 %87, label %88, label %98

88:                                               ; preds = %83, %77
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @DECIMAL128_Pmax, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %97 = call i32 @decDigitsToDPD(%struct.TYPE_16__* %95, i32* %96, i64 0)
  br label %98

98:                                               ; preds = %94, %88, %83
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @DECNAN, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load i32, i32* @DECIMAL_NaN, align 4
  %107 = shl i32 %106, 24
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %107
  store i32 %110, i32* %108, align 4
  br label %117

111:                                              ; preds = %98
  %112 = load i32, i32* @DECIMAL_sNaN, align 4
  %113 = shl i32 %112, 24
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %113
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %111, %105
  br label %118

118:                                              ; preds = %117, %73
  br label %213

119:                                              ; preds = %59
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %121 = call i64 @decNumberIsZero(%struct.TYPE_16__* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %154

123:                                              ; preds = %119
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @DECIMAL128_Bias, align 8
  %128 = sub nsw i64 0, %127
  %129 = icmp slt i64 %126, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %123
  store i32 0, i32* %12, align 4
  %131 = load i32, i32* @DEC_Clamped, align 4
  %132 = load i32, i32* %7, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %7, align 4
  br label %150

134:                                              ; preds = %123
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @DECIMAL128_Bias, align 8
  %139 = add nsw i64 %137, %138
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* @DECIMAL128_Ehigh, align 4
  %143 = icmp sgt i32 %141, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %134
  %145 = load i32, i32* @DECIMAL128_Ehigh, align 4
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* @DEC_Clamped, align 4
  %147 = load i32, i32* %7, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %144, %134
  br label %150

150:                                              ; preds = %149, %130
  %151 = load i32, i32* %12, align 4
  %152 = ashr i32 %151, 9
  %153 = and i32 %152, 24
  store i32 %153, i32* %11, align 4
  br label %201

154:                                              ; preds = %119
  store i64 0, i64* %16, align 8
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @DECIMAL128_Bias, align 8
  %159 = add nsw i64 %157, %158
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* @DECIMAL128_Ehigh, align 4
  %163 = icmp sgt i32 %161, %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %154
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* @DECIMAL128_Ehigh, align 4
  %167 = sub nsw i32 %165, %166
  %168 = sext i32 %167 to i64
  store i64 %168, i64* %16, align 8
  %169 = load i32, i32* @DECIMAL128_Ehigh, align 4
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* @DEC_Clamped, align 4
  %171 = load i32, i32* %7, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %7, align 4
  br label %173

173:                                              ; preds = %164, %154
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %175 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %176 = load i64, i64* %16, align 8
  %177 = call i32 @decDigitsToDPD(%struct.TYPE_16__* %174, i32* %175, i64 %176)
  %178 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %179 = load i32, i32* %178, align 4
  %180 = ashr i32 %179, 14
  store i32 %180, i32* %15, align 4
  %181 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %182, 16383
  store i32 %183, i32* %181, align 4
  %184 = load i32, i32* %15, align 4
  %185 = icmp sge i32 %184, 8
  br i1 %185, label %186, label %194

186:                                              ; preds = %173
  %187 = load i32, i32* %12, align 4
  %188 = ashr i32 %187, 11
  %189 = and i32 %188, 6
  %190 = or i32 24, %189
  %191 = load i32, i32* %15, align 4
  %192 = and i32 %191, 1
  %193 = or i32 %190, %192
  store i32 %193, i32* %11, align 4
  br label %200

194:                                              ; preds = %173
  %195 = load i32, i32* %12, align 4
  %196 = ashr i32 %195, 9
  %197 = and i32 %196, 24
  %198 = load i32, i32* %15, align 4
  %199 = or i32 %197, %198
  store i32 %199, i32* %11, align 4
  br label %200

200:                                              ; preds = %194, %186
  br label %201

201:                                              ; preds = %200, %150
  %202 = load i32, i32* %11, align 4
  %203 = shl i32 %202, 26
  %204 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %203
  store i32 %206, i32* %204, align 4
  %207 = load i32, i32* %12, align 4
  %208 = and i32 %207, 4095
  %209 = shl i32 %208, 14
  %210 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %211 = load i32, i32* %210, align 4
  %212 = or i32 %211, %209
  store i32 %212, i32* %210, align 4
  br label %213

213:                                              ; preds = %201, %118
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @DECNEG, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %213
  %221 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %222 = load i32, i32* %221, align 4
  %223 = or i32 %222, -2147483648
  store i32 %223, i32* %221, align 4
  br label %224

224:                                              ; preds = %220, %213
  %225 = load i64, i64* @DECLITEND, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %255

227:                                              ; preds = %224
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %232 = load i32, i32* %231, align 16
  %233 = call i32 @UBFROMUI(i64 %230, i32 %232)
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = add nsw i64 %236, 4
  %238 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @UBFROMUI(i64 %237, i32 %239)
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = add nsw i64 %243, 8
  %245 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @UBFROMUI(i64 %244, i32 %246)
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = add nsw i64 %250, 12
  %252 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @UBFROMUI(i64 %251, i32 %253)
  br label %283

255:                                              ; preds = %224
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @UBFROMUI(i64 %258, i32 %260)
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = add nsw i64 %264, 4
  %266 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @UBFROMUI(i64 %265, i32 %267)
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = add nsw i64 %271, 8
  %273 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @UBFROMUI(i64 %272, i32 %274)
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = add nsw i64 %278, 12
  %280 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %281 = load i32, i32* %280, align 16
  %282 = call i32 @UBFROMUI(i64 %279, i32 %281)
  br label %283

283:                                              ; preds = %255, %227
  %284 = load i32, i32* %7, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %283
  %287 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %288 = load i32, i32* %7, align 4
  %289 = call i32 @decContextSetStatus(%struct.TYPE_17__* %287, i32 %288)
  br label %290

290:                                              ; preds = %286, %283
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  ret %struct.TYPE_15__* %291
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
