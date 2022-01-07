; ModuleID = '/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawCSCurveRectangle.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawCSCurveRectangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { double, i64, i64, i32*, i32, i32, i32 }

@uiDrawLineCapFlat = common dso_local global i32 0, align 4
@uiDrawLineJoinMiter = common dso_local global i32 0, align 4
@uiDrawDefaultMiterLimit = common dso_local global i32 0, align 4
@uiDrawFillModeWinding = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @drawCSCurveRectangle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drawCSCurveRectangle(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store double 2.560000e+01, double* %3, align 8
  store double 2.560000e+01, double* %4, align 8
  store double 2.048000e+02, double* %5, align 8
  store double 2.048000e+02, double* %6, align 8
  store double 1.024000e+02, double* %7, align 8
  %13 = call i32 @crsourcergba(i32* %10, double 0.000000e+00, double 0.000000e+00, i32 0, double 1.000000e+00)
  %14 = load i32, i32* @uiDrawLineCapFlat, align 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 6
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* @uiDrawLineJoinMiter, align 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 5
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @uiDrawDefaultMiterLimit, align 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 4
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  store i32* null, i32** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @uiDrawFillModeWinding, align 4
  %24 = call i32* @uiDrawNewPath(i32 %23)
  store i32* %24, i32** %12, align 8
  %25 = load double, double* %3, align 8
  %26 = load double, double* %5, align 8
  %27 = fadd double %25, %26
  store double %27, double* %8, align 8
  %28 = load double, double* %4, align 8
  %29 = load double, double* %6, align 8
  %30 = fadd double %28, %29
  store double %30, double* %9, align 8
  %31 = load double, double* %5, align 8
  %32 = fcmp une double %31, 0.000000e+00
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load double, double* %6, align 8
  %35 = fcmp une double %34, 0.000000e+00
  br i1 %35, label %37, label %36

36:                                               ; preds = %33, %1
  br label %308

37:                                               ; preds = %33
  %38 = load double, double* %5, align 8
  %39 = fdiv double %38, 2.000000e+00
  %40 = load double, double* %7, align 8
  %41 = fcmp olt double %39, %40
  br i1 %41, label %42, label %155

42:                                               ; preds = %37
  %43 = load double, double* %6, align 8
  %44 = fdiv double %43, 2.000000e+00
  %45 = load double, double* %7, align 8
  %46 = fcmp olt double %44, %45
  br i1 %46, label %47, label %99

47:                                               ; preds = %42
  %48 = load i32*, i32** %12, align 8
  %49 = load double, double* %3, align 8
  %50 = load double, double* %4, align 8
  %51 = load double, double* %9, align 8
  %52 = fadd double %50, %51
  %53 = fdiv double %52, 2.000000e+00
  %54 = call i32 @uiDrawPathNewFigure(i32* %48, double %49, double %53)
  %55 = load i32*, i32** %12, align 8
  %56 = load double, double* %3, align 8
  %57 = load double, double* %4, align 8
  %58 = load double, double* %3, align 8
  %59 = load double, double* %4, align 8
  %60 = load double, double* %3, align 8
  %61 = load double, double* %8, align 8
  %62 = fadd double %60, %61
  %63 = fdiv double %62, 2.000000e+00
  %64 = load double, double* %4, align 8
  %65 = call i32 @uiDrawPathBezierTo(i32* %55, double %56, double %57, double %58, double %59, double %63, double %64)
  %66 = load i32*, i32** %12, align 8
  %67 = load double, double* %8, align 8
  %68 = load double, double* %4, align 8
  %69 = load double, double* %8, align 8
  %70 = load double, double* %4, align 8
  %71 = load double, double* %8, align 8
  %72 = load double, double* %4, align 8
  %73 = load double, double* %9, align 8
  %74 = fadd double %72, %73
  %75 = fdiv double %74, 2.000000e+00
  %76 = call i32 @uiDrawPathBezierTo(i32* %66, double %67, double %68, double %69, double %70, double %71, double %75)
  %77 = load i32*, i32** %12, align 8
  %78 = load double, double* %8, align 8
  %79 = load double, double* %9, align 8
  %80 = load double, double* %8, align 8
  %81 = load double, double* %9, align 8
  %82 = load double, double* %8, align 8
  %83 = load double, double* %3, align 8
  %84 = fadd double %82, %83
  %85 = fdiv double %84, 2.000000e+00
  %86 = load double, double* %9, align 8
  %87 = call i32 @uiDrawPathBezierTo(i32* %77, double %78, double %79, double %80, double %81, double %85, double %86)
  %88 = load i32*, i32** %12, align 8
  %89 = load double, double* %3, align 8
  %90 = load double, double* %9, align 8
  %91 = load double, double* %3, align 8
  %92 = load double, double* %9, align 8
  %93 = load double, double* %3, align 8
  %94 = load double, double* %4, align 8
  %95 = load double, double* %9, align 8
  %96 = fadd double %94, %95
  %97 = fdiv double %96, 2.000000e+00
  %98 = call i32 @uiDrawPathBezierTo(i32* %88, double %89, double %90, double %91, double %92, double %93, double %97)
  br label %154

99:                                               ; preds = %42
  %100 = load i32*, i32** %12, align 8
  %101 = load double, double* %3, align 8
  %102 = load double, double* %4, align 8
  %103 = load double, double* %7, align 8
  %104 = fadd double %102, %103
  %105 = call i32 @uiDrawPathNewFigure(i32* %100, double %101, double %104)
  %106 = load i32*, i32** %12, align 8
  %107 = load double, double* %3, align 8
  %108 = load double, double* %4, align 8
  %109 = load double, double* %3, align 8
  %110 = load double, double* %4, align 8
  %111 = load double, double* %3, align 8
  %112 = load double, double* %8, align 8
  %113 = fadd double %111, %112
  %114 = fdiv double %113, 2.000000e+00
  %115 = load double, double* %4, align 8
  %116 = call i32 @uiDrawPathBezierTo(i32* %106, double %107, double %108, double %109, double %110, double %114, double %115)
  %117 = load i32*, i32** %12, align 8
  %118 = load double, double* %8, align 8
  %119 = load double, double* %4, align 8
  %120 = load double, double* %8, align 8
  %121 = load double, double* %4, align 8
  %122 = load double, double* %8, align 8
  %123 = load double, double* %4, align 8
  %124 = load double, double* %7, align 8
  %125 = fadd double %123, %124
  %126 = call i32 @uiDrawPathBezierTo(i32* %117, double %118, double %119, double %120, double %121, double %122, double %125)
  %127 = load i32*, i32** %12, align 8
  %128 = load double, double* %8, align 8
  %129 = load double, double* %9, align 8
  %130 = load double, double* %7, align 8
  %131 = fsub double %129, %130
  %132 = call i32 @uiDrawPathLineTo(i32* %127, double %128, double %131)
  %133 = load i32*, i32** %12, align 8
  %134 = load double, double* %8, align 8
  %135 = load double, double* %9, align 8
  %136 = load double, double* %8, align 8
  %137 = load double, double* %9, align 8
  %138 = load double, double* %8, align 8
  %139 = load double, double* %3, align 8
  %140 = fadd double %138, %139
  %141 = fdiv double %140, 2.000000e+00
  %142 = load double, double* %9, align 8
  %143 = call i32 @uiDrawPathBezierTo(i32* %133, double %134, double %135, double %136, double %137, double %141, double %142)
  %144 = load i32*, i32** %12, align 8
  %145 = load double, double* %3, align 8
  %146 = load double, double* %9, align 8
  %147 = load double, double* %3, align 8
  %148 = load double, double* %9, align 8
  %149 = load double, double* %3, align 8
  %150 = load double, double* %9, align 8
  %151 = load double, double* %7, align 8
  %152 = fsub double %150, %151
  %153 = call i32 @uiDrawPathBezierTo(i32* %144, double %145, double %146, double %147, double %148, double %149, double %152)
  br label %154

154:                                              ; preds = %99, %47
  br label %288

155:                                              ; preds = %37
  %156 = load double, double* %6, align 8
  %157 = fdiv double %156, 2.000000e+00
  %158 = load double, double* %7, align 8
  %159 = fcmp olt double %157, %158
  br i1 %159, label %160, label %222

160:                                              ; preds = %155
  %161 = load i32*, i32** %12, align 8
  %162 = load double, double* %3, align 8
  %163 = load double, double* %4, align 8
  %164 = load double, double* %9, align 8
  %165 = fadd double %163, %164
  %166 = fdiv double %165, 2.000000e+00
  %167 = call i32 @uiDrawPathNewFigure(i32* %161, double %162, double %166)
  %168 = load i32*, i32** %12, align 8
  %169 = load double, double* %3, align 8
  %170 = load double, double* %4, align 8
  %171 = load double, double* %3, align 8
  %172 = load double, double* %4, align 8
  %173 = load double, double* %3, align 8
  %174 = load double, double* %7, align 8
  %175 = fadd double %173, %174
  %176 = load double, double* %4, align 8
  %177 = call i32 @uiDrawPathBezierTo(i32* %168, double %169, double %170, double %171, double %172, double %175, double %176)
  %178 = load i32*, i32** %12, align 8
  %179 = load double, double* %8, align 8
  %180 = load double, double* %7, align 8
  %181 = fsub double %179, %180
  %182 = load double, double* %4, align 8
  %183 = call i32 @uiDrawPathLineTo(i32* %178, double %181, double %182)
  %184 = load i32*, i32** %12, align 8
  %185 = load double, double* %8, align 8
  %186 = load double, double* %4, align 8
  %187 = load double, double* %8, align 8
  %188 = load double, double* %4, align 8
  %189 = load double, double* %8, align 8
  %190 = load double, double* %4, align 8
  %191 = load double, double* %9, align 8
  %192 = fadd double %190, %191
  %193 = fdiv double %192, 2.000000e+00
  %194 = call i32 @uiDrawPathBezierTo(i32* %184, double %185, double %186, double %187, double %188, double %189, double %193)
  %195 = load i32*, i32** %12, align 8
  %196 = load double, double* %8, align 8
  %197 = load double, double* %9, align 8
  %198 = load double, double* %8, align 8
  %199 = load double, double* %9, align 8
  %200 = load double, double* %8, align 8
  %201 = load double, double* %7, align 8
  %202 = fsub double %200, %201
  %203 = load double, double* %9, align 8
  %204 = call i32 @uiDrawPathBezierTo(i32* %195, double %196, double %197, double %198, double %199, double %202, double %203)
  %205 = load i32*, i32** %12, align 8
  %206 = load double, double* %3, align 8
  %207 = load double, double* %7, align 8
  %208 = fadd double %206, %207
  %209 = load double, double* %9, align 8
  %210 = call i32 @uiDrawPathLineTo(i32* %205, double %208, double %209)
  %211 = load i32*, i32** %12, align 8
  %212 = load double, double* %3, align 8
  %213 = load double, double* %9, align 8
  %214 = load double, double* %3, align 8
  %215 = load double, double* %9, align 8
  %216 = load double, double* %3, align 8
  %217 = load double, double* %4, align 8
  %218 = load double, double* %9, align 8
  %219 = fadd double %217, %218
  %220 = fdiv double %219, 2.000000e+00
  %221 = call i32 @uiDrawPathBezierTo(i32* %211, double %212, double %213, double %214, double %215, double %216, double %220)
  br label %287

222:                                              ; preds = %155
  %223 = load i32*, i32** %12, align 8
  %224 = load double, double* %3, align 8
  %225 = load double, double* %4, align 8
  %226 = load double, double* %7, align 8
  %227 = fadd double %225, %226
  %228 = call i32 @uiDrawPathNewFigure(i32* %223, double %224, double %227)
  %229 = load i32*, i32** %12, align 8
  %230 = load double, double* %3, align 8
  %231 = load double, double* %4, align 8
  %232 = load double, double* %3, align 8
  %233 = load double, double* %4, align 8
  %234 = load double, double* %3, align 8
  %235 = load double, double* %7, align 8
  %236 = fadd double %234, %235
  %237 = load double, double* %4, align 8
  %238 = call i32 @uiDrawPathBezierTo(i32* %229, double %230, double %231, double %232, double %233, double %236, double %237)
  %239 = load i32*, i32** %12, align 8
  %240 = load double, double* %8, align 8
  %241 = load double, double* %7, align 8
  %242 = fsub double %240, %241
  %243 = load double, double* %4, align 8
  %244 = call i32 @uiDrawPathLineTo(i32* %239, double %242, double %243)
  %245 = load i32*, i32** %12, align 8
  %246 = load double, double* %8, align 8
  %247 = load double, double* %4, align 8
  %248 = load double, double* %8, align 8
  %249 = load double, double* %4, align 8
  %250 = load double, double* %8, align 8
  %251 = load double, double* %4, align 8
  %252 = load double, double* %7, align 8
  %253 = fadd double %251, %252
  %254 = call i32 @uiDrawPathBezierTo(i32* %245, double %246, double %247, double %248, double %249, double %250, double %253)
  %255 = load i32*, i32** %12, align 8
  %256 = load double, double* %8, align 8
  %257 = load double, double* %9, align 8
  %258 = load double, double* %7, align 8
  %259 = fsub double %257, %258
  %260 = call i32 @uiDrawPathLineTo(i32* %255, double %256, double %259)
  %261 = load i32*, i32** %12, align 8
  %262 = load double, double* %8, align 8
  %263 = load double, double* %9, align 8
  %264 = load double, double* %8, align 8
  %265 = load double, double* %9, align 8
  %266 = load double, double* %8, align 8
  %267 = load double, double* %7, align 8
  %268 = fsub double %266, %267
  %269 = load double, double* %9, align 8
  %270 = call i32 @uiDrawPathBezierTo(i32* %261, double %262, double %263, double %264, double %265, double %268, double %269)
  %271 = load i32*, i32** %12, align 8
  %272 = load double, double* %3, align 8
  %273 = load double, double* %7, align 8
  %274 = fadd double %272, %273
  %275 = load double, double* %9, align 8
  %276 = call i32 @uiDrawPathLineTo(i32* %271, double %274, double %275)
  %277 = load i32*, i32** %12, align 8
  %278 = load double, double* %3, align 8
  %279 = load double, double* %9, align 8
  %280 = load double, double* %3, align 8
  %281 = load double, double* %9, align 8
  %282 = load double, double* %3, align 8
  %283 = load double, double* %9, align 8
  %284 = load double, double* %7, align 8
  %285 = fsub double %283, %284
  %286 = call i32 @uiDrawPathBezierTo(i32* %277, double %278, double %279, double %280, double %281, double %282, double %285)
  br label %287

287:                                              ; preds = %222, %160
  br label %288

288:                                              ; preds = %287, %154
  %289 = load i32*, i32** %12, align 8
  %290 = call i32 @uiDrawPathCloseFigure(i32* %289)
  %291 = load i32*, i32** %12, align 8
  %292 = call i32 @uiDrawPathEnd(i32* %291)
  %293 = call i32 @crsourcergba(i32* %10, double 5.000000e-01, double 5.000000e-01, i32 1, double 1.000000e+00)
  %294 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = load i32*, i32** %12, align 8
  %298 = call i32 @uiDrawFill(i32 %296, i32* %297, i32* %10)
  %299 = call i32 @crsourcergba(i32* %10, double 5.000000e-01, double 0.000000e+00, i32 0, double 5.000000e-01)
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store double 1.000000e+01, double* %300, align 8
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = load i32*, i32** %12, align 8
  %305 = call i32 @uiDrawStroke(i32 %303, i32* %304, i32* %10, %struct.TYPE_5__* %11)
  %306 = load i32*, i32** %12, align 8
  %307 = call i32 @uiDrawFreePath(i32* %306)
  br label %308

308:                                              ; preds = %288, %36
  ret void
}

declare dso_local i32 @crsourcergba(i32*, double, double, i32, double) #1

declare dso_local i32* @uiDrawNewPath(i32) #1

declare dso_local i32 @uiDrawPathNewFigure(i32*, double, double) #1

declare dso_local i32 @uiDrawPathBezierTo(i32*, double, double, double, double, double, double) #1

declare dso_local i32 @uiDrawPathLineTo(i32*, double, double) #1

declare dso_local i32 @uiDrawPathCloseFigure(i32*) #1

declare dso_local i32 @uiDrawPathEnd(i32*) #1

declare dso_local i32 @uiDrawFill(i32, i32*, i32*) #1

declare dso_local i32 @uiDrawStroke(i32, i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @uiDrawFreePath(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
