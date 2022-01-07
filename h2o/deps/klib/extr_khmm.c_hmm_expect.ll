; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_khmm.c_hmm_expect.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_khmm.c_hmm_expect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32**, i32**, i32* }
%struct.TYPE_9__ = type { i32, i32, i32**, i32*, i32** }
%struct.TYPE_11__ = type { i32, i32, i32**, i32**, i32*, i64* }

@HMM_BACKWARD = common dso_local global i32 0, align 4
@HMM_TINY = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @hmm_expect(%struct.TYPE_9__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32**, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @HMM_BACKWARD, align 4
  %25 = and i32 %23, %24
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = call %struct.TYPE_10__* @hmm_new_exp(%struct.TYPE_9__* %27)
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %11, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %9, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %61, %2
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %64

39:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %57, %39
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %40
  %45 = load i8*, i8** @HMM_TINY, align 8
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %46, i32* %56, align 4
  br label %57

57:                                               ; preds = %44
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %40

60:                                               ; preds = %40
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %35

64:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %91, %64
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %69, label %94

69:                                               ; preds = %65
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %87, %69
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %70
  %75 = load i8*, i8** @HMM_TINY, align 8
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i32**, i32*** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %79, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %76, i32* %86, align 4
  br label %87

87:                                               ; preds = %74
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %70

90:                                               ; preds = %70
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %65

94:                                               ; preds = %65
  store i32 1, i32* %7, align 4
  br label %95

95:                                               ; preds = %230, %94
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %233

101:                                              ; preds = %95
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  %104 = load i32**, i32*** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32*, i32** %104, i64 %106
  %108 = load i32*, i32** %107, align 8
  store i32* %108, i32** %12, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 3
  %111 = load i32**, i32*** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %111, i64 %113
  %115 = load i32*, i32** %114, align 8
  store i32* %115, i32** %13, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 3
  %118 = load i32**, i32*** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32*, i32** %118, i64 %121
  %123 = load i32*, i32** %122, align 8
  store i32* %123, i32** %14, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 4
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %15, align 4
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load i32**, i32*** %132, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 5
  %136 = load i64*, i64** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %133, i64 %142
  %144 = load i32*, i32** %143, align 8
  store i32* %144, i32** %16, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 2
  %147 = load i32**, i32*** %146, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 5
  %150 = load i64*, i64** %149, align 8
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %150, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = trunc i64 %155 to i32
  %157 = load i32, i32* %10, align 4
  %158 = mul nsw i32 %156, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32*, i32** %147, i64 %159
  store i32** %160, i32*** %17, align 8
  store i32 0, i32* %5, align 4
  br label %161

161:                                              ; preds = %226, %101
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* %10, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %229

165:                                              ; preds = %161
  %166 = load i32**, i32*** %17, align 8
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32*, i32** %166, i64 %168
  %170 = load i32*, i32** %169, align 8
  store i32* %170, i32** %18, align 8
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = load i32**, i32*** %172, align 8
  %174 = load i32, i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32*, i32** %173, i64 %175
  %177 = load i32*, i32** %176, align 8
  store i32* %177, i32** %19, align 8
  %178 = load i32*, i32** %12, align 8
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %20, align 4
  store i32 0, i32* %6, align 4
  br label %183

183:                                              ; preds = %207, %165
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* %10, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %210

187:                                              ; preds = %183
  %188 = load i32, i32* %20, align 4
  %189 = load i32*, i32** %18, align 8
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = mul nsw i32 %188, %193
  %195 = load i32*, i32** %14, align 8
  %196 = load i32, i32* %6, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = mul nsw i32 %194, %199
  %201 = load i32*, i32** %19, align 8
  %202 = load i32, i32* %6, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, %200
  store i32 %206, i32* %204, align 4
  br label %207

207:                                              ; preds = %187
  %208 = load i32, i32* %6, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %6, align 4
  br label %183

210:                                              ; preds = %183
  %211 = load i32, i32* %20, align 4
  %212 = load i32*, i32** %13, align 8
  %213 = load i32, i32* %5, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = mul nsw i32 %211, %216
  %218 = load i32, i32* %15, align 4
  %219 = mul nsw i32 %217, %218
  %220 = load i32*, i32** %16, align 8
  %221 = load i32, i32* %5, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, %219
  store i32 %225, i32* %223, align 4
  br label %226

226:                                              ; preds = %210
  %227 = load i32, i32* %5, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %5, align 4
  br label %161

229:                                              ; preds = %161
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %7, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %7, align 4
  br label %95

233:                                              ; preds = %95
  store i32 0, i32* %6, align 4
  br label %234

234:                                              ; preds = %281, %233
  %235 = load i32, i32* %6, align 4
  %236 = load i32, i32* %10, align 4
  %237 = icmp ne i32 %235, %236
  br i1 %237, label %238, label %284

238:                                              ; preds = %234
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 3
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %6, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 4
  %248 = load i32**, i32*** %247, align 8
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 5
  %251 = load i64*, i64** %250, align 8
  %252 = getelementptr inbounds i64, i64* %251, i64 1
  %253 = load i64, i64* %252, align 8
  %254 = trunc i64 %253 to i32
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32*, i32** %248, i64 %255
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %6, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = mul nsw i32 %245, %261
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 3
  %265 = load i32**, i32*** %264, align 8
  %266 = getelementptr inbounds i32*, i32** %265, i64 1
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %6, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = mul nsw i32 %262, %271
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 2
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %6, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = add nsw i32 %279, %272
  store i32 %280, i32* %278, align 4
  br label %281

281:                                              ; preds = %238
  %282 = load i32, i32* %6, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %6, align 4
  br label %234

284:                                              ; preds = %234
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  ret %struct.TYPE_10__* %285
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_10__* @hmm_new_exp(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
