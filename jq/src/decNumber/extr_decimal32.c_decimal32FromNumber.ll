; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decimal32.c_decimal32FromNumber.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decimal32.c_decimal32FromNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32, i32, i64* }
%struct.TYPE_17__ = type { i32, i32 }

@DECIMAL32_Pmax = common dso_local global i32 0, align 4
@DECIMAL32_Emax = common dso_local global i64 0, align 8
@DECIMAL32_Emin = common dso_local global i64 0, align 8
@DEC_INIT_DECIMAL32 = common dso_local global i32 0, align 4
@DECNEG = common dso_local global i32 0, align 4
@DECSPECIAL = common dso_local global i32 0, align 4
@DECINF = common dso_local global i32 0, align 4
@DECIMAL_Inf = common dso_local global i32 0, align 4
@DECNAN = common dso_local global i32 0, align 4
@DECIMAL_NaN = common dso_local global i32 0, align 4
@DECIMAL_sNaN = common dso_local global i32 0, align 4
@DECIMAL32_Bias = common dso_local global i64 0, align 8
@DEC_Clamped = common dso_local global i32 0, align 4
@DECIMAL32_Ehigh = common dso_local global i32 0, align 4
@DECDPUN = common dso_local global i32 0, align 4
@BIN2DPD = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @decimal32FromNumber(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, %struct.TYPE_17__* %2) #0 {
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
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %14, align 4
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %19, %23
  %25 = sub nsw i64 %24, 1
  store i64 %25, i64* %8, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @DECIMAL32_Pmax, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %3
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @DECIMAL32_Emax, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @DECIMAL32_Emin, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %35, %31, %3
  %40 = load i32, i32* @DEC_INIT_DECIMAL32, align 4
  %41 = call i32 @decContextDefault(%struct.TYPE_17__* %10, i32 %40)
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %47 = call i32 @decNumberPlus(%struct.TYPE_16__* %9, %struct.TYPE_16__* %46, %struct.TYPE_17__* %10)
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @DECNEG, align 4
  %52 = and i32 %50, %51
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %7, align 4
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %5, align 8
  br label %58

58:                                               ; preds = %39, %35
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @DECSPECIAL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %114

65:                                               ; preds = %58
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @DECINF, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i32, i32* @DECIMAL_Inf, align 4
  %74 = shl i32 %73, 24
  store i32 %74, i32* %14, align 4
  br label %113

75:                                               ; preds = %65
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 3
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %75
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp sgt i32 %84, 1
  br i1 %85, label %86, label %95

86:                                               ; preds = %81, %75
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @DECIMAL32_Pmax, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %94 = call i32 @decDigitsToDPD(%struct.TYPE_16__* %93, i32* %14, i64 0)
  br label %95

95:                                               ; preds = %92, %86, %81
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @DECNAN, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load i32, i32* @DECIMAL_NaN, align 4
  %104 = shl i32 %103, 24
  %105 = load i32, i32* %14, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %14, align 4
  br label %112

107:                                              ; preds = %95
  %108 = load i32, i32* @DECIMAL_sNaN, align 4
  %109 = shl i32 %108, 24
  %110 = load i32, i32* %14, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %14, align 4
  br label %112

112:                                              ; preds = %107, %102
  br label %113

113:                                              ; preds = %112, %72
  br label %250

114:                                              ; preds = %58
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %116 = call i64 @decNumberIsZero(%struct.TYPE_16__* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %149

118:                                              ; preds = %114
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @DECIMAL32_Bias, align 8
  %123 = sub nsw i64 0, %122
  %124 = icmp slt i64 %121, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %118
  store i32 0, i32* %12, align 4
  %126 = load i32, i32* @DEC_Clamped, align 4
  %127 = load i32, i32* %7, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %7, align 4
  br label %145

129:                                              ; preds = %118
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @DECIMAL32_Bias, align 8
  %134 = add nsw i64 %132, %133
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* @DECIMAL32_Ehigh, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %129
  %140 = load i32, i32* @DECIMAL32_Ehigh, align 4
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* @DEC_Clamped, align 4
  %142 = load i32, i32* %7, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %7, align 4
  br label %144

144:                                              ; preds = %139, %129
  br label %145

145:                                              ; preds = %144, %125
  %146 = load i32, i32* %12, align 4
  %147 = ashr i32 %146, 3
  %148 = and i32 %147, 24
  store i32 %148, i32* %11, align 4
  br label %240

149:                                              ; preds = %114
  store i64 0, i64* %16, align 8
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @DECIMAL32_Bias, align 8
  %154 = add nsw i64 %152, %153
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %12, align 4
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* @DECIMAL32_Ehigh, align 4
  %158 = icmp sgt i32 %156, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %149
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* @DECIMAL32_Ehigh, align 4
  %162 = sub nsw i32 %160, %161
  %163 = sext i32 %162 to i64
  store i64 %163, i64* %16, align 8
  %164 = load i32, i32* @DECIMAL32_Ehigh, align 4
  store i32 %164, i32* %12, align 4
  %165 = load i32, i32* @DEC_Clamped, align 4
  %166 = load i32, i32* %7, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %7, align 4
  br label %168

168:                                              ; preds = %159, %149
  %169 = load i32, i32* @DECDPUN, align 4
  %170 = icmp eq i32 %169, 3
  br i1 %170, label %171, label %214

171:                                              ; preds = %168
  %172 = load i64, i64* %16, align 8
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %214

174:                                              ; preds = %171
  %175 = load i32*, i32** @BIN2DPD, align 8
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 3
  %178 = load i64*, i64** %177, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 0
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds i32, i32* %175, i64 %180
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %14, align 4
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = icmp sgt i32 %185, 3
  br i1 %186, label %187, label %199

187:                                              ; preds = %174
  %188 = load i32*, i32** @BIN2DPD, align 8
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 3
  %191 = load i64*, i64** %190, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 1
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds i32, i32* %188, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = shl i32 %195, 10
  %197 = load i32, i32* %14, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %14, align 4
  br label %199

199:                                              ; preds = %187, %174
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = icmp eq i32 %202, 7
  br i1 %203, label %204, label %210

204:                                              ; preds = %199
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 3
  %207 = load i64*, i64** %206, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 2
  %209 = load i64, i64* %208, align 8
  br label %211

210:                                              ; preds = %199
  br label %211

211:                                              ; preds = %210, %204
  %212 = phi i64 [ %209, %204 ], [ 0, %210 ]
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %15, align 4
  br label %222

214:                                              ; preds = %171, %168
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %216 = load i64, i64* %16, align 8
  %217 = call i32 @decDigitsToDPD(%struct.TYPE_16__* %215, i32* %14, i64 %216)
  %218 = load i32, i32* %14, align 4
  %219 = ashr i32 %218, 20
  store i32 %219, i32* %15, align 4
  %220 = load i32, i32* %14, align 4
  %221 = and i32 %220, 1048575
  store i32 %221, i32* %14, align 4
  br label %222

222:                                              ; preds = %214, %211
  %223 = load i32, i32* %15, align 4
  %224 = icmp sge i32 %223, 8
  br i1 %224, label %225, label %233

225:                                              ; preds = %222
  %226 = load i32, i32* %12, align 4
  %227 = ashr i32 %226, 5
  %228 = and i32 %227, 6
  %229 = or i32 24, %228
  %230 = load i32, i32* %15, align 4
  %231 = and i32 %230, 1
  %232 = or i32 %229, %231
  store i32 %232, i32* %11, align 4
  br label %239

233:                                              ; preds = %222
  %234 = load i32, i32* %12, align 4
  %235 = ashr i32 %234, 3
  %236 = and i32 %235, 24
  %237 = load i32, i32* %15, align 4
  %238 = or i32 %236, %237
  store i32 %238, i32* %11, align 4
  br label %239

239:                                              ; preds = %233, %225
  br label %240

240:                                              ; preds = %239, %145
  %241 = load i32, i32* %11, align 4
  %242 = shl i32 %241, 26
  %243 = load i32, i32* %14, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %14, align 4
  %245 = load i32, i32* %12, align 4
  %246 = and i32 %245, 63
  %247 = shl i32 %246, 20
  %248 = load i32, i32* %14, align 4
  %249 = or i32 %248, %247
  store i32 %249, i32* %14, align 4
  br label %250

250:                                              ; preds = %240, %113
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @DECNEG, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %250
  %258 = load i32, i32* %14, align 4
  %259 = or i32 %258, -2147483648
  store i32 %259, i32* %14, align 4
  br label %260

260:                                              ; preds = %257, %250
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* %14, align 4
  %265 = call i32 @UBFROMUI(i32 %263, i32 %264)
  %266 = load i32, i32* %7, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %260
  %269 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %270 = load i32, i32* %7, align 4
  %271 = call i32 @decContextSetStatus(%struct.TYPE_17__* %269, i32 %270)
  br label %272

272:                                              ; preds = %268, %260
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  ret %struct.TYPE_15__* %273
}

declare dso_local i32 @decContextDefault(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @decNumberPlus(%struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @decDigitsToDPD(%struct.TYPE_16__*, i32*, i64) #1

declare dso_local i64 @decNumberIsZero(%struct.TYPE_16__*) #1

declare dso_local i32 @UBFROMUI(i32, i32) #1

declare dso_local i32 @decContextSetStatus(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
