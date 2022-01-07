; ModuleID = '/home/carl/AnghaBench/libui/examples/histogram/extr_main.c_handlerDraw.c'
source_filename = "/home/carl/AnghaBench/libui/examples/histogram/extr_main.c_handlerDraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { double, double, double, double, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@colorWhite = common dso_local global i32 0, align 4
@uiDrawFillModeWinding = common dso_local global i32 0, align 4
@uiDrawLineCapFlat = common dso_local global i32 0, align 4
@uiDrawLineJoinMiter = common dso_local global i32 0, align 4
@uiDrawDefaultMiterLimit = common dso_local global i32 0, align 4
@colorBlack = common dso_local global i32 0, align 4
@xoffLeft = common dso_local global i64 0, align 8
@yoffTop = common dso_local global i64 0, align 8
@colorButton = common dso_local global i32 0, align 4
@uiDrawBrushTypeSolid = common dso_local global i32 0, align 4
@currentPoint = common dso_local global i32 0, align 4
@pointRadius = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_12__*)* @handlerDraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handlerDraw(i32* %0, i32* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca %struct.TYPE_10__, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca [10 x double], align 16
  %18 = alloca [10 x double], align 16
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %6, align 8
  %19 = load i32, i32* @colorWhite, align 4
  %20 = call i32 @setSolidBrush(%struct.TYPE_11__* %8, i32 %19, double 1.000000e+00)
  %21 = load i32, i32* @uiDrawFillModeWinding, align 4
  %22 = call i32* @uiDrawNewPath(i32 %21)
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @uiDrawPathAddRectangle(i32* %23, i32 0, i32 0, i32 %26, i32 %29)
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @uiDrawPathEnd(i32* %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @uiDrawFill(i32 %35, i32* %36, %struct.TYPE_11__* %8)
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @uiDrawFreePath(i32* %38)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @graphSize(i32 %42, i32 %45, double* %11, double* %12)
  %47 = call i32 @memset(%struct.TYPE_10__* %9, i32 0, i32 16)
  %48 = load i32, i32* @uiDrawLineCapFlat, align 4
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 3
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @uiDrawLineJoinMiter, align 4
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i32 2, i32* %52, align 4
  %53 = load i32, i32* @uiDrawDefaultMiterLimit, align 4
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @colorBlack, align 4
  %56 = call i32 @setSolidBrush(%struct.TYPE_11__* %8, i32 %55, double 1.000000e+00)
  %57 = load i32, i32* @uiDrawFillModeWinding, align 4
  %58 = call i32* @uiDrawNewPath(i32 %57)
  store i32* %58, i32** %7, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i64, i64* @xoffLeft, align 8
  %61 = load i64, i64* @yoffTop, align 8
  %62 = call i32 @uiDrawPathNewFigure(i32* %59, i64 %60, i64 %61)
  %63 = load i32*, i32** %7, align 8
  %64 = load i64, i64* @xoffLeft, align 8
  %65 = load i64, i64* @yoffTop, align 8
  %66 = sitofp i64 %65 to double
  %67 = load double, double* %12, align 8
  %68 = fadd double %66, %67
  %69 = fptosi double %68 to i64
  %70 = call i32 @uiDrawPathLineTo(i32* %63, i64 %64, i64 %69)
  %71 = load i32*, i32** %7, align 8
  %72 = load i64, i64* @xoffLeft, align 8
  %73 = sitofp i64 %72 to double
  %74 = load double, double* %11, align 8
  %75 = fadd double %73, %74
  %76 = fptosi double %75 to i64
  %77 = load i64, i64* @yoffTop, align 8
  %78 = sitofp i64 %77 to double
  %79 = load double, double* %12, align 8
  %80 = fadd double %78, %79
  %81 = fptosi double %80 to i64
  %82 = call i32 @uiDrawPathLineTo(i32* %71, i64 %76, i64 %81)
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @uiDrawPathEnd(i32* %83)
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @uiDrawStroke(i32 %87, i32* %88, %struct.TYPE_11__* %8, %struct.TYPE_10__* %9)
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @uiDrawFreePath(i32* %90)
  %92 = call i32 @uiDrawMatrixSetIdentity(i32* %10)
  %93 = load i64, i64* @xoffLeft, align 8
  %94 = load i64, i64* @yoffTop, align 8
  %95 = call i32 @uiDrawMatrixTranslate(i32* %10, i64 %93, i64 %94)
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @uiDrawTransform(i32 %98, i32* %10)
  %100 = load i32, i32* @colorButton, align 4
  %101 = call i32 @uiColorButtonColor(i32 %100, double* %13, double* %14, double* %15, double* %16)
  %102 = load i32, i32* @uiDrawBrushTypeSolid, align 4
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 4
  store i32 %102, i32* %103, align 8
  %104 = load double, double* %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store double %104, double* %105, align 8
  %106 = load double, double* %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  store double %106, double* %107, align 8
  %108 = load double, double* %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  store double %108, double* %109, align 8
  %110 = load double, double* %11, align 8
  %111 = load double, double* %12, align 8
  %112 = call i32* @constructGraph(double %110, double %111, i32 1)
  store i32* %112, i32** %7, align 8
  %113 = load double, double* %16, align 8
  %114 = fdiv double %113, 2.000000e+00
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 3
  store double %114, double* %115, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @uiDrawFill(i32 %118, i32* %119, %struct.TYPE_11__* %8)
  %121 = load i32*, i32** %7, align 8
  %122 = call i32 @uiDrawFreePath(i32* %121)
  %123 = load double, double* %11, align 8
  %124 = load double, double* %12, align 8
  %125 = call i32* @constructGraph(double %123, double %124, i32 0)
  store i32* %125, i32** %7, align 8
  %126 = load double, double* %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 3
  store double %126, double* %127, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %7, align 8
  %132 = call i32 @uiDrawStroke(i32 %130, i32* %131, %struct.TYPE_11__* %8, %struct.TYPE_10__* %9)
  %133 = load i32*, i32** %7, align 8
  %134 = call i32 @uiDrawFreePath(i32* %133)
  %135 = load i32, i32* @currentPoint, align 4
  %136 = icmp ne i32 %135, -1
  br i1 %136, label %137, label %165

137:                                              ; preds = %3
  %138 = load double, double* %11, align 8
  %139 = load double, double* %12, align 8
  %140 = getelementptr inbounds [10 x double], [10 x double]* %17, i64 0, i64 0
  %141 = getelementptr inbounds [10 x double], [10 x double]* %18, i64 0, i64 0
  %142 = call i32 @pointLocations(double %138, double %139, double* %140, double* %141)
  %143 = load i32, i32* @uiDrawFillModeWinding, align 4
  %144 = call i32* @uiDrawNewPath(i32 %143)
  store i32* %144, i32** %7, align 8
  %145 = load i32*, i32** %7, align 8
  %146 = load i32, i32* @currentPoint, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [10 x double], [10 x double]* %17, i64 0, i64 %147
  %149 = load double, double* %148, align 8
  %150 = load i32, i32* @currentPoint, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [10 x double], [10 x double]* %18, i64 0, i64 %151
  %153 = load double, double* %152, align 8
  %154 = load i32, i32* @pointRadius, align 4
  %155 = call i32 @uiDrawPathNewFigureWithArc(i32* %145, double %149, double %153, i32 %154, i32 0, double 6.230000e+00, i32 0)
  %156 = load i32*, i32** %7, align 8
  %157 = call i32 @uiDrawPathEnd(i32* %156)
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32*, i32** %7, align 8
  %162 = call i32 @uiDrawFill(i32 %160, i32* %161, %struct.TYPE_11__* %8)
  %163 = load i32*, i32** %7, align 8
  %164 = call i32 @uiDrawFreePath(i32* %163)
  br label %165

165:                                              ; preds = %137, %3
  ret void
}

declare dso_local i32 @setSolidBrush(%struct.TYPE_11__*, i32, double) #1

declare dso_local i32* @uiDrawNewPath(i32) #1

declare dso_local i32 @uiDrawPathAddRectangle(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @uiDrawPathEnd(i32*) #1

declare dso_local i32 @uiDrawFill(i32, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @uiDrawFreePath(i32*) #1

declare dso_local i32 @graphSize(i32, i32, double*, double*) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @uiDrawPathNewFigure(i32*, i64, i64) #1

declare dso_local i32 @uiDrawPathLineTo(i32*, i64, i64) #1

declare dso_local i32 @uiDrawStroke(i32, i32*, %struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i32 @uiDrawMatrixSetIdentity(i32*) #1

declare dso_local i32 @uiDrawMatrixTranslate(i32*, i64, i64) #1

declare dso_local i32 @uiDrawTransform(i32, i32*) #1

declare dso_local i32 @uiColorButtonColor(i32, double*, double*, double*, double*) #1

declare dso_local i32* @constructGraph(double, double, i32) #1

declare dso_local i32 @pointLocations(double, double, double*, double*) #1

declare dso_local i32 @uiDrawPathNewFigureWithArc(i32*, double, double, i32, i32, double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
