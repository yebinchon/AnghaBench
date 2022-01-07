; ModuleID = '/home/carl/AnghaBench/libui/test/extr_page9.c_drawGuides.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_page9.c_drawGuides.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { double, i64, i64 }
%struct.TYPE_9__ = type { i32, double, double, double, double, i32, i32, i32, i32 }

@addLeading = common dso_local global i32 0, align 4
@uiDrawBrushTypeSolid = common dso_local global i32 0, align 4
@uiDrawLineCapFlat = common dso_local global i32 0, align 4
@uiDrawLineJoinMiter = common dso_local global i32 0, align 4
@uiDrawDefaultMiterLimit = common dso_local global i32 0, align 4
@uiDrawFillModeWinding = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*)* @drawGuides to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drawGuides(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  store double 0.000000e+00, double* %8, align 8
  %10 = load i32, i32* @addLeading, align 4
  %11 = call i64 @uiCheckboxChecked(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load double, double* %15, align 8
  store double %16, double* %8, align 8
  br label %17

17:                                               ; preds = %13, %2
  %18 = call i32 @memset(%struct.TYPE_9__* %6, i32 0, i32 56)
  %19 = load i32, i32* @uiDrawBrushTypeSolid, align 4
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 8
  store i32 %19, i32* %20, align 4
  %21 = call i32 @memset(%struct.TYPE_9__* %7, i32 0, i32 56)
  %22 = load i32, i32* @uiDrawLineCapFlat, align 4
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 7
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* @uiDrawLineJoinMiter, align 4
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 6
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @uiDrawDefaultMiterLimit, align 4
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 5
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i32 2, i32* %28, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @uiDrawSave(i32* %29)
  %31 = load i32, i32* @uiDrawFillModeWinding, align 4
  %32 = call i32* @uiDrawNewPath(i32 %31)
  store i32* %32, i32** %5, align 8
  store double 1.000000e+01, double* %9, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load double, double* %9, align 8
  %35 = call i32 @uiDrawPathNewFigure(i32* %33, i32 8, double %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = sitofp i64 %38 to double
  %40 = load double, double* %9, align 8
  %41 = fadd double %40, %39
  store double %41, double* %9, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load double, double* %9, align 8
  %44 = call i32 @uiDrawPathLineTo(i32* %42, i32 8, double %43)
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @uiDrawPathEnd(i32* %45)
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  store double 0x3FEE147AE147AE14, double* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  store double 5.000000e-01, double* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  store double 5.000000e-01, double* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 4
  store double 1.000000e+00, double* %50, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @uiDrawStroke(i32* %51, i32* %52, %struct.TYPE_9__* %6, %struct.TYPE_9__* %7)
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @uiDrawFreePath(i32* %54)
  %56 = load i32, i32* @uiDrawFillModeWinding, align 4
  %57 = call i32* @uiDrawNewPath(i32 %56)
  store i32* %57, i32** %5, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load double, double* %9, align 8
  %60 = call i32 @uiDrawPathNewFigure(i32* %58, i32 8, double %59)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = sitofp i64 %63 to double
  %65 = load double, double* %9, align 8
  %66 = fadd double %65, %64
  store double %66, double* %9, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load double, double* %9, align 8
  %69 = call i32 @uiDrawPathLineTo(i32* %67, i32 8, double %68)
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @uiDrawPathEnd(i32* %70)
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  store double 1.200000e-01, double* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  store double 5.600000e-01, double* %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  store double 1.000000e+00, double* %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 4
  store double 1.000000e+00, double* %75, align 8
  %76 = load i32*, i32** %3, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @uiDrawStroke(i32* %76, i32* %77, %struct.TYPE_9__* %6, %struct.TYPE_9__* %7)
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @uiDrawFreePath(i32* %79)
  %81 = load i32, i32* @uiDrawFillModeWinding, align 4
  %82 = call i32* @uiDrawNewPath(i32 %81)
  store i32* %82, i32** %5, align 8
  %83 = load double, double* %8, align 8
  %84 = load double, double* %9, align 8
  %85 = fadd double %84, %83
  store double %85, double* %9, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = load double, double* %9, align 8
  %88 = call i32 @uiDrawPathNewFigure(i32* %86, i32 8, double %87)
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = sitofp i64 %91 to double
  %93 = load double, double* %9, align 8
  %94 = fadd double %93, %92
  store double %94, double* %9, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = load double, double* %9, align 8
  %97 = call i32 @uiDrawPathLineTo(i32* %95, i32 8, double %96)
  %98 = load i32*, i32** %5, align 8
  %99 = call i32 @uiDrawPathEnd(i32* %98)
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  store double 0x3FEE147AE147AE14, double* %100, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  store double 5.000000e-01, double* %101, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  store double 5.000000e-01, double* %102, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 4
  store double 7.500000e-01, double* %103, align 8
  %104 = load i32*, i32** %3, align 8
  %105 = load i32*, i32** %5, align 8
  %106 = call i32 @uiDrawStroke(i32* %104, i32* %105, %struct.TYPE_9__* %6, %struct.TYPE_9__* %7)
  %107 = load i32*, i32** %5, align 8
  %108 = call i32 @uiDrawFreePath(i32* %107)
  %109 = load i32, i32* @uiDrawFillModeWinding, align 4
  %110 = call i32* @uiDrawNewPath(i32 %109)
  store i32* %110, i32** %5, align 8
  %111 = load i32*, i32** %5, align 8
  %112 = load double, double* %9, align 8
  %113 = call i32 @uiDrawPathNewFigure(i32* %111, i32 8, double %112)
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = sitofp i64 %116 to double
  %118 = load double, double* %9, align 8
  %119 = fadd double %118, %117
  store double %119, double* %9, align 8
  %120 = load i32*, i32** %5, align 8
  %121 = load double, double* %9, align 8
  %122 = call i32 @uiDrawPathLineTo(i32* %120, i32 8, double %121)
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @uiDrawPathEnd(i32* %123)
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  store double 1.200000e-01, double* %125, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  store double 5.600000e-01, double* %126, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  store double 1.000000e+00, double* %127, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 4
  store double 7.500000e-01, double* %128, align 8
  %129 = load i32*, i32** %3, align 8
  %130 = load i32*, i32** %5, align 8
  %131 = call i32 @uiDrawStroke(i32* %129, i32* %130, %struct.TYPE_9__* %6, %struct.TYPE_9__* %7)
  %132 = load i32*, i32** %5, align 8
  %133 = call i32 @uiDrawFreePath(i32* %132)
  %134 = load i32, i32* @uiDrawFillModeWinding, align 4
  %135 = call i32* @uiDrawNewPath(i32 %134)
  store i32* %135, i32** %5, align 8
  %136 = load i32*, i32** %5, align 8
  %137 = call i32 @uiDrawPathAddRectangle(i32* %136, i32 0, i32 0, i32 10, i32 10)
  %138 = load i32*, i32** %5, align 8
  %139 = call i32 @uiDrawPathEnd(i32* %138)
  %140 = load i32*, i32** %3, align 8
  %141 = load i32*, i32** %5, align 8
  %142 = call i32 @uiDrawClip(i32* %140, i32* %141)
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  store double 8.500000e-01, double* %143, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  store double 6.500000e-01, double* %144, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  store double 1.300000e-01, double* %145, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 4
  store double 1.000000e+00, double* %146, align 8
  %147 = load i32*, i32** %3, align 8
  %148 = load i32*, i32** %5, align 8
  %149 = call i32 @uiDrawStroke(i32* %147, i32* %148, %struct.TYPE_9__* %6, %struct.TYPE_9__* %7)
  %150 = load i32*, i32** %5, align 8
  %151 = call i32 @uiDrawFreePath(i32* %150)
  %152 = load i32*, i32** %3, align 8
  %153 = call i32 @uiDrawRestore(i32* %152)
  ret void
}

declare dso_local i64 @uiCheckboxChecked(i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @uiDrawSave(i32*) #1

declare dso_local i32* @uiDrawNewPath(i32) #1

declare dso_local i32 @uiDrawPathNewFigure(i32*, i32, double) #1

declare dso_local i32 @uiDrawPathLineTo(i32*, i32, double) #1

declare dso_local i32 @uiDrawPathEnd(i32*) #1

declare dso_local i32 @uiDrawStroke(i32*, i32*, %struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @uiDrawFreePath(i32*) #1

declare dso_local i32 @uiDrawPathAddRectangle(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @uiDrawClip(i32*, i32*) #1

declare dso_local i32 @uiDrawRestore(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
