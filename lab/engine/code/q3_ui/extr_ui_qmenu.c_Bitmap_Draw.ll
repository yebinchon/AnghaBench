; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_qmenu.c_Bitmap_Draw.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_qmenu.c_Bitmap_Draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { float, float, float*, i8*, %struct.TYPE_6__, i8*, i64, i64 }
%struct.TYPE_6__ = type { float, float, i32, i32, i64 }

@QMF_RIGHT_JUSTIFY = common dso_local global i32 0, align 4
@QMF_CENTER_JUSTIFY = common dso_local global i32 0, align 4
@QMF_GRAYED = common dso_local global i32 0, align 4
@colorMdGrey = common dso_local global float* null, align 8
@QMF_PULSE = common dso_local global i32 0, align 4
@QMF_PULSEIFFOCUS = common dso_local global i32 0, align 4
@pulse_color = common dso_local global float* null, align 8
@uis = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@PULSE_DIVISOR = common dso_local global i32 0, align 4
@QMF_HIGHLIGHT = common dso_local global i32 0, align 4
@QMF_HIGHLIGHT_IF_FOCUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Bitmap_Draw(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load float, float* %11, align 8
  store float %12, float* %3, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load float, float* %15, align 4
  store float %16, float* %4, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load float, float* %18, align 8
  store float %19, float* %5, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load float, float* %21, align 4
  store float %22, float* %6, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @QMF_RIGHT_JUSTIFY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load float, float* %3, align 4
  %32 = load float, float* %5, align 4
  %33 = fsub float %31, %32
  store float %33, float* %3, align 4
  br label %48

34:                                               ; preds = %1
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @QMF_CENTER_JUSTIFY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = load float, float* %3, align 4
  %44 = load float, float* %5, align 4
  %45 = fdiv float %44, 2.000000e+00
  %46 = fsub float %43, %45
  store float %46, float* %3, align 4
  br label %47

47:                                               ; preds = %42, %34
  br label %48

48:                                               ; preds = %47, %30
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %84

54:                                               ; preds = %48
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 5
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %84, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = call i8* @trap_R_RegisterShaderNoMip(i64 %63)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 5
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 5
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %83, label %71

71:                                               ; preds = %59
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 7
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 7
  %79 = load i64, i64* %78, align 8
  %80 = call i8* @trap_R_RegisterShaderNoMip(i64 %79)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 5
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %76, %71, %59
  br label %84

84:                                               ; preds = %83, %54, %48
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %84
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 3
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %101, label %94

94:                                               ; preds = %89
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = call i8* @trap_R_RegisterShaderNoMip(i64 %97)
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 3
  store i8* %98, i8** %100, align 8
  br label %101

101:                                              ; preds = %94, %89, %84
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @QMF_GRAYED, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %127

109:                                              ; preds = %101
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 5
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %126

114:                                              ; preds = %109
  %115 = load float*, float** @colorMdGrey, align 8
  %116 = call i32 @trap_R_SetColor(float* %115)
  %117 = load float, float* %3, align 4
  %118 = load float, float* %4, align 4
  %119 = load float, float* %5, align 4
  %120 = load float, float* %6, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 5
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @UI_DrawHandlePic(float %117, float %118, float %119, float %120, i8* %123)
  %125 = call i32 @trap_R_SetColor(float* null)
  br label %126

126:                                              ; preds = %114, %109
  br label %271

127:                                              ; preds = %101
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 5
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %141

132:                                              ; preds = %127
  %133 = load float, float* %3, align 4
  %134 = load float, float* %4, align 4
  %135 = load float, float* %5, align 4
  %136 = load float, float* %6, align 4
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 5
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @UI_DrawHandlePic(float %133, float %134, float %135, float %136, i8* %139)
  br label %141

141:                                              ; preds = %132, %127
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @QMF_PULSE, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %141
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @QMF_PULSEIFFOCUS, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %216

157:                                              ; preds = %149, %141
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = call %struct.TYPE_7__* @Menu_ItemAtCursor(i32 %161)
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %164 = icmp eq %struct.TYPE_7__* %162, %163
  br i1 %164, label %165, label %216

165:                                              ; preds = %157
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 2
  %168 = load float*, float** %167, align 8
  %169 = icmp ne float* %168, null
  br i1 %169, label %170, label %193

170:                                              ; preds = %165
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 2
  %173 = load float*, float** %172, align 8
  %174 = getelementptr inbounds float, float* %173, i64 0
  %175 = load float, float* %174, align 4
  %176 = load float*, float** %7, align 8
  %177 = getelementptr inbounds float, float* %176, i64 0
  store float %175, float* %177, align 4
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 2
  %180 = load float*, float** %179, align 8
  %181 = getelementptr inbounds float, float* %180, i64 1
  %182 = load float, float* %181, align 4
  %183 = load float*, float** %7, align 8
  %184 = getelementptr inbounds float, float* %183, i64 1
  store float %182, float* %184, align 4
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 2
  %187 = load float*, float** %186, align 8
  %188 = getelementptr inbounds float, float* %187, i64 2
  %189 = load float, float* %188, align 4
  %190 = load float*, float** %7, align 8
  %191 = getelementptr inbounds float, float* %190, i64 2
  store float %189, float* %191, align 4
  %192 = load float*, float** %7, align 8
  store float* %192, float** %8, align 8
  br label %195

193:                                              ; preds = %165
  %194 = load float*, float** @pulse_color, align 8
  store float* %194, float** %8, align 8
  br label %195

195:                                              ; preds = %193, %170
  %196 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uis, i32 0, i32 0), align 4
  %197 = load i32, i32* @PULSE_DIVISOR, align 4
  %198 = sdiv i32 %196, %197
  %199 = call double @sin(i32 %198)
  %200 = fmul double 5.000000e-01, %199
  %201 = fadd double 5.000000e-01, %200
  %202 = fptrunc double %201 to float
  %203 = load float*, float** %8, align 8
  %204 = getelementptr inbounds float, float* %203, i64 3
  store float %202, float* %204, align 4
  %205 = load float*, float** %8, align 8
  %206 = call i32 @trap_R_SetColor(float* %205)
  %207 = load float, float* %3, align 4
  %208 = load float, float* %4, align 4
  %209 = load float, float* %5, align 4
  %210 = load float, float* %6, align 4
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 3
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 @UI_DrawHandlePic(float %207, float %208, float %209, float %210, i8* %213)
  %215 = call i32 @trap_R_SetColor(float* null)
  br label %270

216:                                              ; preds = %157, %149
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 4
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @QMF_HIGHLIGHT, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %240, label %224

224:                                              ; preds = %216
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 4
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @QMF_HIGHLIGHT_IF_FOCUS, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %269

232:                                              ; preds = %224
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 4
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = call %struct.TYPE_7__* @Menu_ItemAtCursor(i32 %236)
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %239 = icmp eq %struct.TYPE_7__* %237, %238
  br i1 %239, label %240, label %269

240:                                              ; preds = %232, %216
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 2
  %243 = load float*, float** %242, align 8
  %244 = icmp ne float* %243, null
  br i1 %244, label %245, label %259

245:                                              ; preds = %240
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 2
  %248 = load float*, float** %247, align 8
  %249 = call i32 @trap_R_SetColor(float* %248)
  %250 = load float, float* %3, align 4
  %251 = load float, float* %4, align 4
  %252 = load float, float* %5, align 4
  %253 = load float, float* %6, align 4
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 3
  %256 = load i8*, i8** %255, align 8
  %257 = call i32 @UI_DrawHandlePic(float %250, float %251, float %252, float %253, i8* %256)
  %258 = call i32 @trap_R_SetColor(float* null)
  br label %268

259:                                              ; preds = %240
  %260 = load float, float* %3, align 4
  %261 = load float, float* %4, align 4
  %262 = load float, float* %5, align 4
  %263 = load float, float* %6, align 4
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 3
  %266 = load i8*, i8** %265, align 8
  %267 = call i32 @UI_DrawHandlePic(float %260, float %261, float %262, float %263, i8* %266)
  br label %268

268:                                              ; preds = %259, %245
  br label %269

269:                                              ; preds = %268, %232, %224
  br label %270

270:                                              ; preds = %269, %195
  br label %271

271:                                              ; preds = %270, %126
  ret void
}

declare dso_local i8* @trap_R_RegisterShaderNoMip(i64) #1

declare dso_local i32 @trap_R_SetColor(float*) #1

declare dso_local i32 @UI_DrawHandlePic(float, float, float, float, i8*) #1

declare dso_local %struct.TYPE_7__* @Menu_ItemAtCursor(i32) #1

declare dso_local double @sin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
