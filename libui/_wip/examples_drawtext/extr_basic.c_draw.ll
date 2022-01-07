; ModuleID = '/home/carl/AnghaBench/libui/_wip/examples_drawtext/extr_basic.c_draw.c'
source_filename = "/home/carl/AnghaBench/libui/_wip/examples_drawtext/extr_basic.c_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { double, double, double, double, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, double, double, i64, i64, i64 }

@uiDrawBrushTypeSolid = common dso_local global i32 0, align 4
@uiDrawFillModeWinding = common dso_local global i32 0, align 4
@margins = common dso_local global i32 0, align 4
@params = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@showExtents = common dso_local global i32 0, align 4
@strokeParams = common dso_local global i32 0, align 4
@showLineBounds = common dso_local global i32 0, align 4
@showLineGuides = common dso_local global i32 0, align 4
@fillBrushes = common dso_local global %struct.TYPE_13__* null, align 8
@strokeBrushes = common dso_local global %struct.TYPE_13__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %12 = load i32, i32* @uiDrawBrushTypeSolid, align 4
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 4
  store i32 %12, i32* %13, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @uiDrawSave(i32 %16)
  %18 = load i32, i32* @uiDrawFillModeWinding, align 4
  %19 = call i32* @uiDrawNewPath(i32 %18)
  store i32* %19, i32** %3, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @margins, align 4
  %22 = load i32, i32* @margins, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @margins, align 4
  %27 = mul nsw i32 2, %26
  %28 = sub nsw i32 %25, %27
  %29 = sitofp i32 %28 to double
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @margins, align 4
  %34 = mul nsw i32 2, %33
  %35 = sub nsw i32 %32, %34
  %36 = sitofp i32 %35 to double
  %37 = call i32 @uiDrawPathAddRectangle(i32* %20, i32 %21, i32 %22, double %29, double %36)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @uiDrawPathEnd(i32* %38)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @uiDrawClip(i32 %42, i32* %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @uiDrawFreePath(i32* %45)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @margins, align 4
  %51 = mul nsw i32 2, %50
  %52 = sub nsw i32 %49, %51
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @params, i32 0, i32 0), align 4
  %53 = call i32* @uiDrawNewTextLayout(%struct.TYPE_15__* @params)
  store i32* %53, i32** %4, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* @margins, align 4
  %59 = load i32, i32* @margins, align 4
  %60 = call i32 @uiDrawText(i32 %56, i32* %57, i32 %58, i32 %59)
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @uiDrawRestore(i32 %63)
  %65 = load i32, i32* @showExtents, align 4
  %66 = call i64 @uiCheckboxChecked(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %92

68:                                               ; preds = %1
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @uiDrawTextLayoutExtents(i32* %69, double* %6, double* %7)
  %71 = load i32, i32* @uiDrawFillModeWinding, align 4
  %72 = call i32* @uiDrawNewPath(i32 %71)
  store i32* %72, i32** %3, align 8
  %73 = load i32*, i32** %3, align 8
  %74 = load i32, i32* @margins, align 4
  %75 = load i32, i32* @margins, align 4
  %76 = load double, double* %6, align 8
  %77 = load double, double* %7, align 8
  %78 = call i32 @uiDrawPathAddRectangle(i32* %73, i32 %74, i32 %75, double %76, double %77)
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @uiDrawPathEnd(i32* %79)
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  store double 1.000000e+00, double* %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  store double 0.000000e+00, double* %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 2
  store double 1.000000e+00, double* %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 3
  store double 5.000000e-01, double* %84, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 @uiDrawStroke(i32 %87, i32* %88, %struct.TYPE_13__* %5, i32* @strokeParams)
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @uiDrawFreePath(i32* %90)
  br label %92

92:                                               ; preds = %68, %1
  %93 = load i32, i32* @showLineBounds, align 4
  %94 = call i64 @uiCheckboxChecked(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* @showLineGuides, align 4
  %98 = call i64 @uiCheckboxChecked(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %289

100:                                              ; preds = %96, %92
  store i32 0, i32* %11, align 4
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @uiDrawTextLayoutNumLines(i32* %101)
  store i32 %102, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %103

103:                                              ; preds = %285, %100
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %288

107:                                              ; preds = %103
  %108 = load i32*, i32** %4, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @uiDrawTextLayoutLineGetMetrics(i32* %108, i32 %109, %struct.TYPE_12__* %8)
  %111 = load i32, i32* @showLineBounds, align 4
  %112 = call i64 @uiCheckboxChecked(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %147

114:                                              ; preds = %107
  %115 = load i32, i32* @uiDrawFillModeWinding, align 4
  %116 = call i32* @uiDrawNewPath(i32 %115)
  store i32* %116, i32** %3, align 8
  %117 = load i32*, i32** %3, align 8
  %118 = load i32, i32* @margins, align 4
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %118, %120
  %122 = load i32, i32* @margins, align 4
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %122, %124
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %127 = load double, double* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 3
  %129 = load double, double* %128, align 8
  %130 = call i32 @uiDrawPathAddRectangle(i32* %117, i32 %121, i32 %125, double %127, double %129)
  %131 = load i32*, i32** %3, align 8
  %132 = call i32 @uiDrawPathEnd(i32* %131)
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %3, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** @fillBrushes, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i64 %139
  %141 = call i32 @uiDrawFill(i32 %135, i32* %136, %struct.TYPE_13__* %140)
  %142 = load i32*, i32** %3, align 8
  %143 = call i32 @uiDrawFreePath(i32* %142)
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 1
  %146 = srem i32 %145, 4
  store i32 %146, i32* %11, align 4
  br label %147

147:                                              ; preds = %114, %107
  %148 = load i32, i32* @showLineGuides, align 4
  %149 = call i64 @uiCheckboxChecked(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %284

151:                                              ; preds = %147
  %152 = load i32, i32* @uiDrawFillModeWinding, align 4
  %153 = call i32* @uiDrawNewPath(i32 %152)
  store i32* %153, i32** %3, align 8
  %154 = load i32*, i32** %3, align 8
  %155 = load i32, i32* @margins, align 4
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %155, %157
  %159 = load i32, i32* @margins, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 5
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %160, %162
  %164 = call i32 @uiDrawPathNewFigure(i32* %154, i32 %158, i64 %163)
  %165 = load i32*, i32** %3, align 8
  %166 = load i32, i32* @margins, align 4
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = add nsw i32 %166, %168
  %170 = sitofp i32 %169 to double
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %172 = load double, double* %171, align 8
  %173 = fadd double %170, %172
  %174 = fptosi double %173 to i32
  %175 = load i32, i32* @margins, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 5
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %176, %178
  %180 = call i32 @uiDrawPathLineTo(i32* %165, i32 %174, i64 %179)
  %181 = load i32*, i32** %3, align 8
  %182 = call i32 @uiDrawPathEnd(i32* %181)
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = load i32*, i32** %3, align 8
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** @strokeBrushes, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i64 0
  %189 = call i32 @uiDrawStroke(i32 %185, i32* %186, %struct.TYPE_13__* %188, i32* @strokeParams)
  %190 = load i32*, i32** %3, align 8
  %191 = call i32 @uiDrawFreePath(i32* %190)
  %192 = load i32, i32* @uiDrawFillModeWinding, align 4
  %193 = call i32* @uiDrawNewPath(i32 %192)
  store i32* %193, i32** %3, align 8
  %194 = load i32*, i32** %3, align 8
  %195 = load i32, i32* @margins, align 4
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = add nsw i32 %195, %197
  %199 = load i32, i32* @margins, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 5
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %200, %202
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 6
  %205 = load i64, i64* %204, align 8
  %206 = sub nsw i64 %203, %205
  %207 = call i32 @uiDrawPathNewFigure(i32* %194, i32 %198, i64 %206)
  %208 = load i32*, i32** %3, align 8
  %209 = load i32, i32* @margins, align 4
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = add nsw i32 %209, %211
  %213 = sitofp i32 %212 to double
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %215 = load double, double* %214, align 8
  %216 = fadd double %213, %215
  %217 = fptosi double %216 to i32
  %218 = load i32, i32* @margins, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 5
  %221 = load i64, i64* %220, align 8
  %222 = add nsw i64 %219, %221
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 6
  %224 = load i64, i64* %223, align 8
  %225 = sub nsw i64 %222, %224
  %226 = call i32 @uiDrawPathLineTo(i32* %208, i32 %217, i64 %225)
  %227 = load i32*, i32** %3, align 8
  %228 = call i32 @uiDrawPathEnd(i32* %227)
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = load i32*, i32** %3, align 8
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** @strokeBrushes, align 8
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i64 1
  %235 = call i32 @uiDrawStroke(i32 %231, i32* %232, %struct.TYPE_13__* %234, i32* @strokeParams)
  %236 = load i32*, i32** %3, align 8
  %237 = call i32 @uiDrawFreePath(i32* %236)
  %238 = load i32, i32* @uiDrawFillModeWinding, align 4
  %239 = call i32* @uiDrawNewPath(i32 %238)
  store i32* %239, i32** %3, align 8
  %240 = load i32*, i32** %3, align 8
  %241 = load i32, i32* @margins, align 4
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = add nsw i32 %241, %243
  %245 = load i32, i32* @margins, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 5
  %248 = load i64, i64* %247, align 8
  %249 = add nsw i64 %246, %248
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 4
  %251 = load i64, i64* %250, align 8
  %252 = add nsw i64 %249, %251
  %253 = call i32 @uiDrawPathNewFigure(i32* %240, i32 %244, i64 %252)
  %254 = load i32*, i32** %3, align 8
  %255 = load i32, i32* @margins, align 4
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = add nsw i32 %255, %257
  %259 = sitofp i32 %258 to double
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %261 = load double, double* %260, align 8
  %262 = fadd double %259, %261
  %263 = fptosi double %262 to i32
  %264 = load i32, i32* @margins, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 5
  %267 = load i64, i64* %266, align 8
  %268 = add nsw i64 %265, %267
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 4
  %270 = load i64, i64* %269, align 8
  %271 = add nsw i64 %268, %270
  %272 = call i32 @uiDrawPathLineTo(i32* %254, i32 %263, i64 %271)
  %273 = load i32*, i32** %3, align 8
  %274 = call i32 @uiDrawPathEnd(i32* %273)
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = load i32*, i32** %3, align 8
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** @strokeBrushes, align 8
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i64 2
  %281 = call i32 @uiDrawStroke(i32 %277, i32* %278, %struct.TYPE_13__* %280, i32* @strokeParams)
  %282 = load i32*, i32** %3, align 8
  %283 = call i32 @uiDrawFreePath(i32* %282)
  br label %284

284:                                              ; preds = %151, %147
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %9, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %9, align 4
  br label %103

288:                                              ; preds = %103
  br label %289

289:                                              ; preds = %288, %96
  %290 = load i32*, i32** %4, align 8
  %291 = call i32 @uiDrawFreeTextLayout(i32* %290)
  ret void
}

declare dso_local i32 @uiDrawSave(i32) #1

declare dso_local i32* @uiDrawNewPath(i32) #1

declare dso_local i32 @uiDrawPathAddRectangle(i32*, i32, i32, double, double) #1

declare dso_local i32 @uiDrawPathEnd(i32*) #1

declare dso_local i32 @uiDrawClip(i32, i32*) #1

declare dso_local i32 @uiDrawFreePath(i32*) #1

declare dso_local i32* @uiDrawNewTextLayout(%struct.TYPE_15__*) #1

declare dso_local i32 @uiDrawText(i32, i32*, i32, i32) #1

declare dso_local i32 @uiDrawRestore(i32) #1

declare dso_local i64 @uiCheckboxChecked(i32) #1

declare dso_local i32 @uiDrawTextLayoutExtents(i32*, double*, double*) #1

declare dso_local i32 @uiDrawStroke(i32, i32*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @uiDrawTextLayoutNumLines(i32*) #1

declare dso_local i32 @uiDrawTextLayoutLineGetMetrics(i32*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @uiDrawFill(i32, i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @uiDrawPathNewFigure(i32*, i32, i64) #1

declare dso_local i32 @uiDrawPathLineTo(i32*, i32, i64) #1

declare dso_local i32 @uiDrawFreeTextLayout(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
