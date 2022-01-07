; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_brushbsp.c_SelectSplitSide.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_brushbsp.c_SelectSplitSide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32 }

@TEXINFO_NODE = common dso_local global i64 0, align 8
@SFL_TESTED = common dso_local global i32 0, align 4
@SFL_CURVE = common dso_local global i32 0, align 4
@PSIDE_FACING = common dso_local global i32 0, align 4
@PSIDE_FRONT = common dso_local global i32 0, align 4
@PSIDE_BACK = common dso_local global i32 0, align 4
@PSIDE_BOTH = common dso_local global i32 0, align 4
@mapplanes = common dso_local global %struct.TYPE_14__* null, align 8
@SURF_HINT = common dso_local global i32 0, align 4
@numthreads = common dso_local global i32 0, align 4
@c_nonvis = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @SelectSplitSide(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  store i32 0, i32* %23, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %10, align 8
  store i32 -99999, i32* %6, align 4
  store i32 2, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %230, %2
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %233

28:                                               ; preds = %24
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %7, align 8
  br label %30

30:                                               ; preds = %205, %28
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %32 = icmp ne %struct.TYPE_13__* %31, null
  br i1 %32, label %33, label %209

33:                                               ; preds = %30
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %201, %33
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %204

40:                                               ; preds = %34
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i64 %45
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %9, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %40
  br label %201

52:                                               ; preds = %40
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TEXINFO_NODE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %201

59:                                               ; preds = %52
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @SFL_TESTED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %201

67:                                               ; preds = %59
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @SFL_CURVE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %75, 1
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %201

78:                                               ; preds = %74, %67
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = and i32 %82, -2
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %86 = call i32 @CheckPlaneAgainstVolume(i32 %84, %struct.TYPE_12__* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %78
  br label %201

89:                                               ; preds = %78
  %90 = load i32, i32* %14, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %92 = call i32 @CheckPlaneAgainstParents(i32 %90, %struct.TYPE_12__* %91)
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_13__* %93, %struct.TYPE_13__** %8, align 8
  br label %94

94:                                               ; preds = %138, %89
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %96 = icmp ne %struct.TYPE_13__* %95, null
  br i1 %96, label %97, label %142

97:                                               ; preds = %94
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @TestBrushToPlanenum(%struct.TYPE_13__* %98, i32 %99, i32* %21, i32* %23, i32* %22)
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %21, align 4
  %102 = load i32, i32* %20, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %20, align 4
  %104 = load i32, i32* %15, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* @PSIDE_FACING, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %97
  %112 = load i32, i32* %19, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %19, align 4
  br label %114

114:                                              ; preds = %111, %97
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* @PSIDE_FRONT, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i32, i32* %16, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %16, align 4
  br label %122

122:                                              ; preds = %119, %114
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* @PSIDE_BACK, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load i32, i32* %17, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %17, align 4
  br label %130

130:                                              ; preds = %127, %122
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* @PSIDE_BOTH, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i32, i32* %18, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %18, align 4
  br label %137

137:                                              ; preds = %134, %130
  br label %138

138:                                              ; preds = %137
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 4
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %140, align 8
  store %struct.TYPE_13__* %141, %struct.TYPE_13__** %8, align 8
  br label %94

142:                                              ; preds = %94
  %143 = load i32, i32* %19, align 4
  %144 = mul nsw i32 5, %143
  %145 = load i32, i32* %20, align 4
  %146 = mul nsw i32 5, %145
  %147 = sub nsw i32 %144, %146
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %17, align 4
  %150 = sub nsw i32 %148, %149
  %151 = call i32 @abs(i32 %150) #3
  %152 = sub nsw i32 %147, %151
  store i32 %152, i32* %5, align 4
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mapplanes, align 8
  %154 = load i32, i32* %14, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp slt i32 %158, 3
  br i1 %159, label %160, label %163

160:                                              ; preds = %142
  %161 = load i32, i32* %5, align 4
  %162 = add nsw i32 %161, 5
  store i32 %162, i32* %5, align 4
  br label %163

163:                                              ; preds = %160, %142
  %164 = load i32, i32* %22, align 4
  %165 = mul nsw i32 %164, 1000
  %166 = load i32, i32* %5, align 4
  %167 = sub nsw i32 %166, %165
  store i32 %167, i32* %5, align 4
  %168 = load i32, i32* %23, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %163
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @SURF_HINT, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %170
  store i32 -9999999, i32* %5, align 4
  br label %178

178:                                              ; preds = %177, %170, %163
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* %6, align 4
  %181 = icmp sgt i32 %179, %180
  br i1 %181, label %182, label %200

182:                                              ; preds = %178
  %183 = load i32, i32* %5, align 4
  store i32 %183, i32* %6, align 4
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %184, %struct.TYPE_11__** %10, align 8
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_13__* %185, %struct.TYPE_13__** %8, align 8
  br label %186

186:                                              ; preds = %195, %182
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %188 = icmp ne %struct.TYPE_13__* %187, null
  br i1 %188, label %189, label %199

189:                                              ; preds = %186
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 2
  store i32 %192, i32* %194, align 8
  br label %195

195:                                              ; preds = %189
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 4
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %197, align 8
  store %struct.TYPE_13__* %198, %struct.TYPE_13__** %8, align 8
  br label %186

199:                                              ; preds = %186
  br label %200

200:                                              ; preds = %199, %178
  br label %201

201:                                              ; preds = %200, %88, %77, %66, %58, %51
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %11, align 4
  br label %34

204:                                              ; preds = %34
  br label %205

205:                                              ; preds = %204
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 4
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %207, align 8
  store %struct.TYPE_13__* %208, %struct.TYPE_13__** %7, align 8
  br label %30

209:                                              ; preds = %30
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %211 = icmp ne %struct.TYPE_11__* %210, null
  br i1 %211, label %212, label %229

212:                                              ; preds = %209
  %213 = load i32, i32* %12, align 4
  %214 = icmp sgt i32 %213, 1
  br i1 %214, label %215, label %222

215:                                              ; preds = %212
  %216 = load i32, i32* @numthreads, align 4
  %217 = icmp eq i32 %216, 1
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load i32, i32* @c_nonvis, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* @c_nonvis, align 4
  br label %221

221:                                              ; preds = %218, %215
  br label %222

222:                                              ; preds = %221, %212
  %223 = load i32, i32* %12, align 4
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %222
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 0
  store i32 1, i32* %227, align 4
  br label %228

228:                                              ; preds = %225, %222
  br label %233

229:                                              ; preds = %209
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %12, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %12, align 4
  br label %24

233:                                              ; preds = %228, %24
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_13__* %234, %struct.TYPE_13__** %7, align 8
  br label %235

235:                                              ; preds = %261, %233
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %237 = icmp ne %struct.TYPE_13__* %236, null
  br i1 %237, label %238, label %265

238:                                              ; preds = %235
  store i32 0, i32* %11, align 4
  br label %239

239:                                              ; preds = %257, %238
  %240 = load i32, i32* %11, align 4
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = icmp slt i32 %240, %243
  br i1 %244, label %245, label %260

245:                                              ; preds = %239
  %246 = load i32, i32* @SFL_TESTED, align 4
  %247 = xor i32 %246, -1
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 3
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %249, align 8
  %251 = load i32, i32* %11, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = and i32 %255, %247
  store i32 %256, i32* %254, align 8
  br label %257

257:                                              ; preds = %245
  %258 = load i32, i32* %11, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %11, align 4
  br label %239

260:                                              ; preds = %239
  br label %261

261:                                              ; preds = %260
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 4
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %263, align 8
  store %struct.TYPE_13__* %264, %struct.TYPE_13__** %7, align 8
  br label %235

265:                                              ; preds = %235
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  ret %struct.TYPE_11__* %266
}

declare dso_local i32 @CheckPlaneAgainstVolume(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @CheckPlaneAgainstParents(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @TestBrushToPlanenum(%struct.TYPE_13__*, i32, i32*, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
