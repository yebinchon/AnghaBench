; ModuleID = '/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawD2DPathGeometries.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawD2DPathGeometries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { double, double, i32, i32, i32 }
%struct.TYPE_11__ = type { double, i32, i32, i32, i64, i64, i32* }

@uiDrawBrushTypeRadialGradient = common dso_local global i32 0, align 4
@d2dYellow = common dso_local global i32 0, align 4
@d2dForestGreen = common dso_local global i32 0, align 4
@uiDrawFillModeWinding = common dso_local global i32 0, align 4
@uiPi = common dso_local global i32 0, align 4
@d2dWhite = common dso_local global i32 0, align 4
@d2dBlack = common dso_local global i32 0, align 4
@uiDrawLineCapFlat = common dso_local global i32 0, align 4
@uiDrawLineJoinMiter = common dso_local global i32 0, align 4
@uiDrawDefaultMiterLimit = common dso_local global i32 0, align 4
@d2dOliveDrab = common dso_local global i32 0, align 4
@d2dLightSkyBlue = common dso_local global i32 0, align 4
@d2dYellowGreen = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @drawD2DPathGeometries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drawD2DPathGeometries(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__, align 8
  %9 = alloca %struct.TYPE_13__, align 8
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca [2 x %struct.TYPE_12__], align 16
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 6
  store i32* null, i32** %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 5
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 4
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @uiDrawBrushTypeRadialGradient, align 4
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 7
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  store i32 75, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  store i32 75, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  store i32 75, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 3
  store i32 75, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 4
  store i32 75, i32* %21, align 8
  %22 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %11, i64 0, i64 0
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  store double 0.000000e+00, double* %23, align 16
  %24 = load i32, i32* @d2dYellow, align 4
  %25 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %11, i64 0, i64 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 4
  %27 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %11, i64 0, i64 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 3
  %29 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %11, i64 0, i64 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  %31 = call i32 @d2dColorToRGB(i32 %24, i32* %26, i32* %28, i32* %30)
  %32 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %11, i64 0, i64 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  store double 1.000000e+00, double* %33, align 8
  %34 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %11, i64 0, i64 1
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  store double 1.000000e+00, double* %35, align 16
  %36 = load i32, i32* @d2dForestGreen, align 4
  %37 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %11, i64 0, i64 1
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 4
  %39 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %11, i64 0, i64 1
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 3
  %41 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %11, i64 0, i64 1
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  %43 = call i32 @d2dColorToRGB(i32 %36, i32* %38, i32* %40, i32* %42)
  %44 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %11, i64 0, i64 1
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  store double 1.000000e+00, double* %45, align 8
  %46 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %11, i64 0, i64 0
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 6
  store %struct.TYPE_12__* %46, %struct.TYPE_12__** %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 5
  store i32 2, i32* %48, align 4
  %49 = load i32, i32* @uiDrawFillModeWinding, align 4
  %50 = call i32* @uiDrawNewPath(i32 %49)
  store i32* %50, i32** %3, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @uiDrawPathNewFigure(i32* %51, i32 346, i32 255)
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @uiDrawPathLineTo(i32* %53, i32 267, i32 177)
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @uiDrawPathLineTo(i32* %55, i32 236, i32 192)
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @uiDrawPathLineTo(i32* %57, i32 212, i32 160)
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @uiDrawPathLineTo(i32* %59, i32 156, i32 255)
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @uiDrawPathLineTo(i32* %61, i32 346, i32 255)
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @uiDrawPathCloseFigure(i32* %63)
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @uiDrawPathEnd(i32* %65)
  %67 = load i32, i32* @uiDrawFillModeWinding, align 4
  %68 = call i32* @uiDrawNewPath(i32 %67)
  store i32* %68, i32** %4, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @uiDrawPathNewFigure(i32* %69, i32 575, i32 263)
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @uiDrawPathLineTo(i32* %71, i32 481, i32 146)
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @uiDrawPathLineTo(i32* %73, i32 449, i32 181)
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @uiDrawPathLineTo(i32* %75, i32 433, i32 159)
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @uiDrawPathLineTo(i32* %77, i32 401, i32 214)
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @uiDrawPathLineTo(i32* %79, i32 381, i32 199)
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @uiDrawPathLineTo(i32* %81, i32 323, i32 263)
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @uiDrawPathLineTo(i32* %83, i32 575, i32 263)
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @uiDrawPathCloseFigure(i32* %85)
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @uiDrawPathEnd(i32* %87)
  %89 = load i32, i32* @uiDrawFillModeWinding, align 4
  %90 = call i32* @uiDrawNewPath(i32 %89)
  store i32* %90, i32** %5, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* @uiPi, align 4
  %93 = load i32, i32* @uiPi, align 4
  %94 = call i32 @uiDrawPathNewFigureWithArc(i32* %91, double 3.550000e+02, i32 255, i32 85, i32 %92, i32 %93, i32 0)
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @uiDrawPathCloseFigure(i32* %95)
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @uiDrawPathEnd(i32* %97)
  %99 = load i32, i32* @uiDrawFillModeWinding, align 4
  %100 = call i32* @uiDrawNewPath(i32 %99)
  store i32* %100, i32** %6, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 @uiDrawPathNewFigure(i32* %101, i32 299, i32 182)
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 @uiDrawPathBezierTo(i32* %103, i32 299, i32 182, i32 294, i32 176, i32 285, i32 178)
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @uiDrawPathBezierTo(i32* %105, i32 276, i32 179, i32 272, i32 173, i32 272, i32 173)
  %107 = load i32*, i32** %6, align 8
  %108 = call i32 @uiDrawPathNewFigure(i32* %107, i32 354, i32 156)
  %109 = load i32*, i32** %6, align 8
  %110 = call i32 @uiDrawPathBezierTo(i32* %109, i32 354, i32 156, i32 358, i32 149, i32 354, i32 142)
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @uiDrawPathBezierTo(i32* %111, i32 349, i32 134, i32 354, i32 127, i32 354, i32 127)
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @uiDrawPathNewFigure(i32* %113, i32 322, i32 164)
  %115 = load i32*, i32** %6, align 8
  %116 = call i32 @uiDrawPathBezierTo(i32* %115, i32 322, i32 164, i32 322, i32 156, i32 314, i32 152)
  %117 = load i32*, i32** %6, align 8
  %118 = call i32 @uiDrawPathBezierTo(i32* %117, i32 306, i32 149, i32 305, i32 141, i32 305, i32 141)
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 @uiDrawPathNewFigure(i32* %119, i32 385, i32 164)
  %121 = load i32*, i32** %6, align 8
  %122 = call i32 @uiDrawPathBezierTo(i32* %121, i32 385, i32 164, i32 392, i32 161, i32 394, i32 152)
  %123 = load i32*, i32** %6, align 8
  %124 = call i32 @uiDrawPathBezierTo(i32* %123, i32 395, i32 144, i32 402, i32 141, i32 402, i32 142)
  %125 = load i32*, i32** %6, align 8
  %126 = call i32 @uiDrawPathNewFigure(i32* %125, i32 408, i32 182)
  %127 = load i32*, i32** %6, align 8
  %128 = call i32 @uiDrawPathBezierTo(i32* %127, i32 408, i32 182, i32 416, i32 184, i32 422, i32 178)
  %129 = load i32*, i32** %6, align 8
  %130 = call i32 @uiDrawPathBezierTo(i32* %129, i32 428, i32 171, i32 435, i32 173, i32 435, i32 173)
  %131 = load i32*, i32** %6, align 8
  %132 = call i32 @uiDrawPathEnd(i32* %131)
  %133 = load i32, i32* @uiDrawFillModeWinding, align 4
  %134 = call i32* @uiDrawNewPath(i32 %133)
  store i32* %134, i32** %7, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = call i32 @uiDrawPathNewFigure(i32* %135, i32 183, i32 392)
  %137 = load i32*, i32** %7, align 8
  %138 = call i32 @uiDrawPathBezierTo(i32* %137, i32 238, i32 284, i32 472, i32 345, i32 356, i32 303)
  %139 = load i32*, i32** %7, align 8
  %140 = call i32 @uiDrawPathBezierTo(i32* %139, i32 237, i32 261, i32 333, i32 256, i32 333, i32 256)
  %141 = load i32*, i32** %7, align 8
  %142 = call i32 @uiDrawPathBezierTo(i32* %141, i32 335, i32 257, i32 241, i32 261, i32 411, i32 306)
  %143 = load i32*, i32** %7, align 8
  %144 = call i32 @uiDrawPathBezierTo(i32* %143, i32 574, i32 350, i32 288, i32 324, i32 296, i32 392)
  %145 = load i32*, i32** %7, align 8
  %146 = call i32 @uiDrawPathEnd(i32* %145)
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %148 = load i32, i32* @d2dWhite, align 4
  %149 = call i32 @d2dClear(%struct.TYPE_14__* %147, i32 %148, double 1.000000e+00)
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %5, align 8
  %154 = call i32 @uiDrawFill(i32 %152, i32* %153, %struct.TYPE_13__* %8)
  %155 = load i32, i32* @d2dBlack, align 4
  %156 = call i32 @d2dSolidBrush(%struct.TYPE_13__* %9, i32 %155, double 1.000000e+00)
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store double 1.000000e+00, double* %157, align 8
  %158 = load i32, i32* @uiDrawLineCapFlat, align 4
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  store i32 %158, i32* %159, align 8
  %160 = load i32, i32* @uiDrawLineJoinMiter, align 4
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  store i32 %160, i32* %161, align 4
  %162 = load i32, i32* @uiDrawDefaultMiterLimit, align 4
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  store i32 %162, i32* %163, align 8
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %5, align 8
  %168 = call i32 @uiDrawStroke(i32 %166, i32* %167, %struct.TYPE_13__* %9, %struct.TYPE_11__* %10)
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %6, align 8
  %173 = call i32 @uiDrawStroke(i32 %171, i32* %172, %struct.TYPE_13__* %9, %struct.TYPE_11__* %10)
  %174 = load i32, i32* @d2dOliveDrab, align 4
  %175 = call i32 @d2dSolidBrush(%struct.TYPE_13__* %9, i32 %174, double 1.000000e+00)
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** %3, align 8
  %180 = call i32 @uiDrawFill(i32 %178, i32* %179, %struct.TYPE_13__* %9)
  %181 = load i32, i32* @d2dBlack, align 4
  %182 = call i32 @d2dSolidBrush(%struct.TYPE_13__* %9, i32 %181, double 1.000000e+00)
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32*, i32** %3, align 8
  %187 = call i32 @uiDrawStroke(i32 %185, i32* %186, %struct.TYPE_13__* %9, %struct.TYPE_11__* %10)
  %188 = load i32, i32* @d2dLightSkyBlue, align 4
  %189 = call i32 @d2dSolidBrush(%struct.TYPE_13__* %9, i32 %188, double 1.000000e+00)
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32*, i32** %7, align 8
  %194 = call i32 @uiDrawFill(i32 %192, i32* %193, %struct.TYPE_13__* %9)
  %195 = load i32, i32* @d2dBlack, align 4
  %196 = call i32 @d2dSolidBrush(%struct.TYPE_13__* %9, i32 %195, double 1.000000e+00)
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** %7, align 8
  %201 = call i32 @uiDrawStroke(i32 %199, i32* %200, %struct.TYPE_13__* %9, %struct.TYPE_11__* %10)
  %202 = load i32, i32* @d2dYellowGreen, align 4
  %203 = call i32 @d2dSolidBrush(%struct.TYPE_13__* %9, i32 %202, double 1.000000e+00)
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32*, i32** %4, align 8
  %208 = call i32 @uiDrawFill(i32 %206, i32* %207, %struct.TYPE_13__* %9)
  %209 = load i32, i32* @d2dBlack, align 4
  %210 = call i32 @d2dSolidBrush(%struct.TYPE_13__* %9, i32 %209, double 1.000000e+00)
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32*, i32** %4, align 8
  %215 = call i32 @uiDrawStroke(i32 %213, i32* %214, %struct.TYPE_13__* %9, %struct.TYPE_11__* %10)
  %216 = load i32*, i32** %3, align 8
  %217 = call i32 @uiDrawFreePath(i32* %216)
  %218 = load i32*, i32** %4, align 8
  %219 = call i32 @uiDrawFreePath(i32* %218)
  %220 = load i32*, i32** %5, align 8
  %221 = call i32 @uiDrawFreePath(i32* %220)
  %222 = load i32*, i32** %6, align 8
  %223 = call i32 @uiDrawFreePath(i32* %222)
  %224 = load i32*, i32** %7, align 8
  %225 = call i32 @uiDrawFreePath(i32* %224)
  ret void
}

declare dso_local i32 @d2dColorToRGB(i32, i32*, i32*, i32*) #1

declare dso_local i32* @uiDrawNewPath(i32) #1

declare dso_local i32 @uiDrawPathNewFigure(i32*, i32, i32) #1

declare dso_local i32 @uiDrawPathLineTo(i32*, i32, i32) #1

declare dso_local i32 @uiDrawPathCloseFigure(i32*) #1

declare dso_local i32 @uiDrawPathEnd(i32*) #1

declare dso_local i32 @uiDrawPathNewFigureWithArc(i32*, double, i32, i32, i32, i32, i32) #1

declare dso_local i32 @uiDrawPathBezierTo(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @d2dClear(%struct.TYPE_14__*, i32, double) #1

declare dso_local i32 @uiDrawFill(i32, i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @d2dSolidBrush(%struct.TYPE_13__*, i32, double) #1

declare dso_local i32 @uiDrawStroke(i32, i32*, %struct.TYPE_13__*, %struct.TYPE_11__*) #1

declare dso_local i32 @uiDrawFreePath(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
