; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_main.c_BotChangeViewAngles.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_main.c_BotChangeViewAngles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32*, i64, i32*, float*, i32, i32 }

@PITCH = common dso_local global i64 0, align 8
@CHARACTERISTIC_VIEW_FACTOR = common dso_local global i32 0, align 4
@CHARACTERISTIC_VIEW_MAXCHANGE = common dso_local global i32 0, align 4
@bot_challenge = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotChangeViewAngles(%struct.TYPE_4__* %0, float %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store float %1, float* %4, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @PITCH, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 180
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @PITCH, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 360
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %18, %2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CHARACTERISTIC_VIEW_FACTOR, align 4
  %36 = call float @trap_Characteristic_BFloat(i32 %34, i32 %35, i32 0, i32 1)
  store float %36, float* %6, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CHARACTERISTIC_VIEW_MAXCHANGE, align 4
  %41 = call float @trap_Characteristic_BFloat(i32 %39, i32 %40, i32 1, i32 1800)
  store float %41, float* %7, align 4
  br label %43

42:                                               ; preds = %26
  store float 0x3FA99999A0000000, float* %6, align 4
  store float 3.600000e+02, float* %7, align 4
  br label %43

43:                                               ; preds = %42, %31
  %44 = load float, float* %7, align 4
  %45 = fcmp olt float %44, 2.400000e+02
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store float 2.400000e+02, float* %7, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = load float, float* %4, align 4
  %49 = load float, float* %7, align 4
  %50 = fmul float %49, %48
  store float %50, float* %7, align 4
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %268, %47
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 2
  br i1 %53, label %54, label %271

54:                                               ; preds = %51
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bot_challenge, i32 0, i32 0), align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %105

57:                                               ; preds = %54
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call float @AngleDifference(i32 %64, i32 %71)
  %73 = call float @fabs(float %72)
  store float %73, float* %5, align 4
  %74 = load float, float* %5, align 4
  %75 = load float, float* %6, align 4
  %76 = fmul float %74, %75
  store float %76, float* %8, align 4
  %77 = load float, float* %8, align 4
  %78 = load float, float* %7, align 4
  %79 = fcmp ogt float %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %57
  %81 = load float, float* %7, align 4
  store float %81, float* %8, align 4
  br label %82

82:                                               ; preds = %80, %57
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load float, float* %8, align 4
  %98 = call i32 @BotChangeViewAngle(i32 %89, i32 %96, float %97)
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %98, i32* %104, align 4
  br label %267

105:                                              ; preds = %54
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @AngleMod(i32 %112)
  %114 = ptrtoint i8* %113 to i32
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 %114, i32* %120, align 4
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call i8* @AngleMod(i32 %127)
  %129 = ptrtoint i8* %128 to i32
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 %129, i32* %135, align 4
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call float @AngleDifference(i32 %142, i32 %149)
  store float %150, float* %5, align 4
  %151 = load float, float* %5, align 4
  %152 = load float, float* %6, align 4
  %153 = fmul float %151, %152
  store float %153, float* %9, align 4
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 3
  %156 = load float*, float** %155, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds float, float* %156, i64 %158
  %160 = load float, float* %159, align 4
  %161 = load float, float* %9, align 4
  %162 = fsub float %160, %161
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 3
  %165 = load float*, float** %164, align 8
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds float, float* %165, i64 %167
  %169 = load float, float* %168, align 4
  %170 = fadd float %169, %162
  store float %170, float* %168, align 4
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 3
  %173 = load float*, float** %172, align 8
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds float, float* %173, i64 %175
  %177 = load float, float* %176, align 4
  %178 = fcmp ogt float %177, 1.800000e+02
  br i1 %178, label %179, label %187

179:                                              ; preds = %105
  %180 = load float, float* %7, align 4
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 3
  %183 = load float*, float** %182, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds float, float* %183, i64 %185
  store float %180, float* %186, align 4
  br label %187

187:                                              ; preds = %179, %105
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 3
  %190 = load float*, float** %189, align 8
  %191 = load i32, i32* %10, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds float, float* %190, i64 %192
  %194 = load float, float* %193, align 4
  %195 = fcmp olt float %194, -1.800000e+02
  br i1 %195, label %196, label %205

196:                                              ; preds = %187
  %197 = load float, float* %7, align 4
  %198 = fneg float %197
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 3
  %201 = load float*, float** %200, align 8
  %202 = load i32, i32* %10, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds float, float* %201, i64 %203
  store float %198, float* %204, align 4
  br label %205

205:                                              ; preds = %196, %187
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 3
  %208 = load float*, float** %207, align 8
  %209 = load i32, i32* %10, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds float, float* %208, i64 %210
  %212 = load float, float* %211, align 4
  store float %212, float* %8, align 4
  %213 = load float, float* %8, align 4
  %214 = load float, float* %7, align 4
  %215 = fcmp ogt float %213, %214
  br i1 %215, label %216, label %218

216:                                              ; preds = %205
  %217 = load float, float* %7, align 4
  store float %217, float* %8, align 4
  br label %218

218:                                              ; preds = %216, %205
  %219 = load float, float* %8, align 4
  %220 = load float, float* %7, align 4
  %221 = fneg float %220
  %222 = fcmp olt float %219, %221
  br i1 %222, label %223, label %226

223:                                              ; preds = %218
  %224 = load float, float* %7, align 4
  %225 = fneg float %224
  store float %225, float* %8, align 4
  br label %226

226:                                              ; preds = %223, %218
  %227 = load float, float* %8, align 4
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 2
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %10, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = sitofp i32 %234 to float
  %236 = fadd float %235, %227
  %237 = fptosi float %236 to i32
  store i32 %237, i32* %233, align 4
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 2
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %10, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = call i8* @AngleMod(i32 %244)
  %246 = ptrtoint i8* %245 to i32
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 2
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %10, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  store i32 %246, i32* %252, align 4
  %253 = load float, float* %6, align 4
  %254 = fsub float 1.000000e+00, %253
  %255 = fpext float %254 to double
  %256 = fmul double 4.500000e-01, %255
  %257 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 3
  %259 = load float*, float** %258, align 8
  %260 = load i32, i32* %10, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds float, float* %259, i64 %261
  %263 = load float, float* %262, align 4
  %264 = fpext float %263 to double
  %265 = fmul double %264, %256
  %266 = fptrunc double %265 to float
  store float %266, float* %262, align 4
  br label %267

267:                                              ; preds = %226, %82
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %10, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %10, align 4
  br label %51

271:                                              ; preds = %51
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 2
  %274 = load i32*, i32** %273, align 8
  %275 = load i64, i64* @PITCH, align 8
  %276 = getelementptr inbounds i32, i32* %274, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = icmp sgt i32 %277, 180
  br i1 %278, label %279, label %287

279:                                              ; preds = %271
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 2
  %282 = load i32*, i32** %281, align 8
  %283 = load i64, i64* @PITCH, align 8
  %284 = getelementptr inbounds i32, i32* %282, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = sub nsw i32 %285, 360
  store i32 %286, i32* %284, align 4
  br label %287

287:                                              ; preds = %279, %271
  %288 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 4
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 2
  %293 = load i32*, i32** %292, align 8
  %294 = call i32 @trap_EA_View(i32 %290, i32* %293)
  ret void
}

declare dso_local float @trap_Characteristic_BFloat(i32, i32, i32, i32) #1

declare dso_local float @fabs(float) #1

declare dso_local float @AngleDifference(i32, i32) #1

declare dso_local i32 @BotChangeViewAngle(i32, i32, float) #1

declare dso_local i8* @AngleMod(i32) #1

declare dso_local i32 @trap_EA_View(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
