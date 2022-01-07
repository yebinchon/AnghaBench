; ModuleID = '/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawD2DSimpleApp.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawD2DSimpleApp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { double, i32, i32, i32, i64, i64, i32* }

@d2dLightSlateGray = common dso_local global i32 0, align 4
@d2dCornflowerBlue = common dso_local global i32 0, align 4
@d2dWhite = common dso_local global i32 0, align 4
@uiDrawLineCapFlat = common dso_local global i32 0, align 4
@uiDrawLineJoinMiter = common dso_local global i32 0, align 4
@uiDrawDefaultMiterLimit = common dso_local global i32 0, align 4
@uiDrawFillModeWinding = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @drawD2DSimpleApp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drawD2DSimpleApp(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 6
  store i32* null, i32** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @d2dLightSlateGray, align 4
  %17 = call i32 @d2dSolidBrush(i32* %4, i32 %16, double 1.000000e+00)
  %18 = load i32, i32* @d2dCornflowerBlue, align 4
  %19 = call i32 @d2dSolidBrush(i32* %5, i32 %18, double 1.000000e+00)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = load i32, i32* @d2dWhite, align 4
  %22 = call i32 @d2dClear(%struct.TYPE_7__* %20, i32 %21, double 1.000000e+00)
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store double 5.000000e-01, double* %23, align 8
  %24 = load i32, i32* @uiDrawLineCapFlat, align 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* @uiDrawLineJoinMiter, align 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @uiDrawDefaultMiterLimit, align 4
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %57, %1
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %30
  %37 = load i32, i32* @uiDrawFillModeWinding, align 4
  %38 = call i32* @uiDrawNewPath(i32 %37)
  store i32* %38, i32** %3, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @uiDrawPathNewFigure(i32* %39, i32 %40, i32 0)
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @uiDrawPathLineTo(i32* %42, i32 %43, i32 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @uiDrawPathEnd(i32* %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @uiDrawStroke(i32 %52, i32* %53, i32* %4, %struct.TYPE_6__* %6)
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @uiDrawFreePath(i32* %55)
  br label %57

57:                                               ; preds = %36
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 10
  store i32 %59, i32* %7, align 4
  br label %30

60:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %88, %60
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %91

67:                                               ; preds = %61
  %68 = load i32, i32* @uiDrawFillModeWinding, align 4
  %69 = call i32* @uiDrawNewPath(i32 %68)
  store i32* %69, i32** %3, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @uiDrawPathNewFigure(i32* %70, i32 0, i32 %71)
  %73 = load i32*, i32** %3, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @uiDrawPathLineTo(i32* %73, i32 %76, i32 %77)
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @uiDrawPathEnd(i32* %79)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @uiDrawStroke(i32 %83, i32* %84, i32* %4, %struct.TYPE_6__* %6)
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @uiDrawFreePath(i32* %86)
  br label %88

88:                                               ; preds = %67
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 10
  store i32 %90, i32* %8, align 4
  br label %61

91:                                               ; preds = %61
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = sitofp i32 %94 to double
  %96 = fdiv double %95, 2.000000e+00
  %97 = fsub double %96, 5.000000e+01
  store double %97, double* %9, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = sitofp i32 %100 to double
  %102 = fdiv double %101, 2.000000e+00
  %103 = fadd double %102, 5.000000e+01
  store double %103, double* %11, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sitofp i32 %106 to double
  %108 = fdiv double %107, 2.000000e+00
  %109 = fsub double %108, 5.000000e+01
  store double %109, double* %10, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sitofp i32 %112 to double
  %114 = fdiv double %113, 2.000000e+00
  %115 = fadd double %114, 5.000000e+01
  store double %115, double* %12, align 8
  %116 = load i32, i32* @uiDrawFillModeWinding, align 4
  %117 = call i32* @uiDrawNewPath(i32 %116)
  store i32* %117, i32** %3, align 8
  %118 = load i32*, i32** %3, align 8
  %119 = load double, double* %9, align 8
  %120 = load double, double* %10, align 8
  %121 = load double, double* %11, align 8
  %122 = load double, double* %9, align 8
  %123 = fsub double %121, %122
  %124 = load double, double* %12, align 8
  %125 = load double, double* %10, align 8
  %126 = fsub double %124, %125
  %127 = call i32 @uiDrawPathAddRectangle(i32* %118, double %119, double %120, double %123, double %126)
  %128 = load i32*, i32** %3, align 8
  %129 = call i32 @uiDrawPathEnd(i32* %128)
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %3, align 8
  %134 = call i32 @uiDrawFill(i32 %132, i32* %133, i32* %4)
  %135 = load i32*, i32** %3, align 8
  %136 = call i32 @uiDrawFreePath(i32* %135)
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = sitofp i32 %139 to double
  %141 = fdiv double %140, 2.000000e+00
  %142 = fsub double %141, 1.000000e+02
  store double %142, double* %9, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = sitofp i32 %145 to double
  %147 = fdiv double %146, 2.000000e+00
  %148 = fadd double %147, 1.000000e+02
  store double %148, double* %11, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = sitofp i32 %151 to double
  %153 = fdiv double %152, 2.000000e+00
  %154 = fsub double %153, 1.000000e+02
  store double %154, double* %10, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = sitofp i32 %157 to double
  %159 = fdiv double %158, 2.000000e+00
  %160 = fadd double %159, 1.000000e+02
  store double %160, double* %12, align 8
  %161 = load i32, i32* @uiDrawFillModeWinding, align 4
  %162 = call i32* @uiDrawNewPath(i32 %161)
  store i32* %162, i32** %3, align 8
  %163 = load i32*, i32** %3, align 8
  %164 = load double, double* %9, align 8
  %165 = load double, double* %10, align 8
  %166 = load double, double* %11, align 8
  %167 = load double, double* %9, align 8
  %168 = fsub double %166, %167
  %169 = load double, double* %12, align 8
  %170 = load double, double* %10, align 8
  %171 = fsub double %169, %170
  %172 = call i32 @uiDrawPathAddRectangle(i32* %163, double %164, double %165, double %168, double %171)
  %173 = load i32*, i32** %3, align 8
  %174 = call i32 @uiDrawPathEnd(i32* %173)
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store double 1.000000e+00, double* %175, align 8
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** %3, align 8
  %180 = call i32 @uiDrawStroke(i32 %178, i32* %179, i32* %5, %struct.TYPE_6__* %6)
  %181 = load i32*, i32** %3, align 8
  %182 = call i32 @uiDrawFreePath(i32* %181)
  ret void
}

declare dso_local i32 @d2dSolidBrush(i32*, i32, double) #1

declare dso_local i32 @d2dClear(%struct.TYPE_7__*, i32, double) #1

declare dso_local i32* @uiDrawNewPath(i32) #1

declare dso_local i32 @uiDrawPathNewFigure(i32*, i32, i32) #1

declare dso_local i32 @uiDrawPathLineTo(i32*, i32, i32) #1

declare dso_local i32 @uiDrawPathEnd(i32*) #1

declare dso_local i32 @uiDrawStroke(i32, i32*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @uiDrawFreePath(i32*) #1

declare dso_local i32 @uiDrawPathAddRectangle(i32*, double, double, double, double) #1

declare dso_local i32 @uiDrawFill(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
