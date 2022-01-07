; ModuleID = '/home/carl/AnghaBench/libui/_wip/attrstr_metrics/extr_common_OLD_drawtext.c_uiDrawCaret.c'
source_filename = "/home/carl/AnghaBench/libui/_wip/attrstr_metrics/extr_common_OLD_drawtext.c_uiDrawCaret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.caretDrawParams = type { double, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@uiDrawFillModeWinding = common dso_local global i32 0, align 4
@uiDrawBrushTypeSolid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uiDrawCaret(i32* %0, double %1, double %2, i32* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.TYPE_5__, align 8
  %15 = alloca %struct.caretDrawParams, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_6__, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store double %1, double* %8, align 8
  store double %2, double* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i32*, i32** %12, align 8
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %23, %6
  %26 = load i32*, i32** %12, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @uiDrawTextLayoutNumLines(i32* %28)
  %30 = sub nsw i32 %29, 1
  %31 = icmp sgt i32 %27, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @uiDrawTextLayoutNumLines(i32* %33)
  %35 = sub nsw i32 %34, 1
  %36 = load i32*, i32** %12, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %32, %25
  %38 = load i32*, i32** %10, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call double @uiDrawTextLayoutByteLocationInLine(i32* %38, i64 %39, i32 %41)
  store double %42, double* %13, align 8
  br label %43

43:                                               ; preds = %62, %37
  %44 = load double, double* %13, align 8
  %45 = fcmp olt double %44, 0.000000e+00
  br i1 %45, label %46, label %68

46:                                               ; preds = %43
  %47 = load i32*, i32** %10, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @uiDrawTextLayoutLineByteRange(i32* %47, i32 %49, i64* %18, i64* %19)
  %51 = load i64, i64* %19, align 8
  %52 = load i64, i64* %11, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %62

58:                                               ; preds = %46
  %59 = load i32*, i32** %12, align 8
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %58, %54
  %63 = load i32*, i32** %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call double @uiDrawTextLayoutByteLocationInLine(i32* %63, i64 %64, i32 %66)
  store double %67, double* %13, align 8
  br label %43

68:                                               ; preds = %43
  %69 = load i32*, i32** %10, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @uiDrawTextLayoutLineGetMetrics(i32* %69, i32 %71, %struct.TYPE_5__* %14)
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @caretDrawParams(i32* %73, i32 %75, %struct.caretDrawParams* %15)
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @uiDrawSave(i32* %77)
  %79 = load i32, i32* @uiDrawFillModeWinding, align 4
  %80 = call i32* @uiDrawNewPath(i32 %79)
  store i32* %80, i32** %16, align 8
  %81 = load i32*, i32** %16, align 8
  %82 = load double, double* %8, align 8
  %83 = load double, double* %13, align 8
  %84 = fadd double %82, %83
  %85 = getelementptr inbounds %struct.caretDrawParams, %struct.caretDrawParams* %15, i32 0, i32 0
  %86 = load double, double* %85, align 8
  %87 = fsub double %84, %86
  %88 = load double, double* %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = sitofp i64 %90 to double
  %92 = fadd double %88, %91
  %93 = fptosi double %92 to i64
  %94 = getelementptr inbounds %struct.caretDrawParams, %struct.caretDrawParams* %15, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @uiDrawPathAddRectangle(i32* %81, double %87, i64 %93, i32 %95, i32 %97)
  %99 = load i32*, i32** %16, align 8
  %100 = call i32 @uiDrawPathEnd(i32* %99)
  %101 = load i32, i32* @uiDrawBrushTypeSolid, align 4
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 4
  store i32 %101, i32* %102, align 4
  %103 = getelementptr inbounds %struct.caretDrawParams, %struct.caretDrawParams* %15, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  store i32 %104, i32* %105, align 4
  %106 = getelementptr inbounds %struct.caretDrawParams, %struct.caretDrawParams* %15, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  store i32 %107, i32* %108, align 4
  %109 = getelementptr inbounds %struct.caretDrawParams, %struct.caretDrawParams* %15, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  store i32 %110, i32* %111, align 4
  %112 = getelementptr inbounds %struct.caretDrawParams, %struct.caretDrawParams* %15, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 %113, i32* %114, align 4
  %115 = load i32*, i32** %7, align 8
  %116 = load i32*, i32** %16, align 8
  %117 = call i32 @uiDrawFill(i32* %115, i32* %116, %struct.TYPE_6__* %17)
  %118 = load i32*, i32** %16, align 8
  %119 = call i32 @uiDrawFreePath(i32* %118)
  %120 = load i32*, i32** %7, align 8
  %121 = call i32 @uiDrawRestore(i32* %120)
  ret void
}

declare dso_local i32 @uiDrawTextLayoutNumLines(i32*) #1

declare dso_local double @uiDrawTextLayoutByteLocationInLine(i32*, i64, i32) #1

declare dso_local i32 @uiDrawTextLayoutLineByteRange(i32*, i32, i64*, i64*) #1

declare dso_local i32 @uiDrawTextLayoutLineGetMetrics(i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @caretDrawParams(i32*, i32, %struct.caretDrawParams*) #1

declare dso_local i32 @uiDrawSave(i32*) #1

declare dso_local i32* @uiDrawNewPath(i32) #1

declare dso_local i32 @uiDrawPathAddRectangle(i32*, double, i64, i32, i32) #1

declare dso_local i32 @uiDrawPathEnd(i32*) #1

declare dso_local i32 @uiDrawFill(i32*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @uiDrawFreePath(i32*) #1

declare dso_local i32 @uiDrawRestore(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
