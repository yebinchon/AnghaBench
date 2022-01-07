; ModuleID = '/home/carl/AnghaBench/libui/test/extr_page15.c_drawtrect.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_page15.c_drawtrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trect = type { i64, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { double, double, double, double, i32 }

@uiDrawBrushTypeSolid = common dso_local global i32 0, align 4
@uiDrawFillModeWinding = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.trect*, double, double, double)* @drawtrect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drawtrect(i32* %0, %struct.trect* byval(%struct.trect) align 8 %1, double %2, double %3, double %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  store double %4, double* %9, align 8
  %12 = call i32 @memset(%struct.TYPE_4__* %11, i32 0, i32 40)
  %13 = load i32, i32* @uiDrawBrushTypeSolid, align 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  store i32 %13, i32* %14, align 8
  %15 = load double, double* %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store double %15, double* %16, align 8
  %17 = load double, double* %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store double %17, double* %18, align 8
  %19 = load double, double* %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  store double %19, double* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  store double 1.000000e+00, double* %21, align 8
  %22 = getelementptr inbounds %struct.trect, %struct.trect* %1, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %27 = load double, double* %26, align 8
  %28 = fmul double %27, 7.500000e-01
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %30 = load double, double* %29, align 8
  %31 = fadd double %30, %28
  store double %31, double* %29, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %33 = load double, double* %32, align 8
  %34 = fmul double %33, 7.500000e-01
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %36 = load double, double* %35, align 8
  %37 = fadd double %36, %34
  store double %37, double* %35, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %39 = load double, double* %38, align 8
  %40 = fmul double %39, 7.500000e-01
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %42 = load double, double* %41, align 8
  %43 = fadd double %42, %40
  store double %43, double* %41, align 8
  br label %44

44:                                               ; preds = %25, %5
  %45 = load i32, i32* @uiDrawFillModeWinding, align 4
  %46 = call i32* @uiDrawNewPath(i32 %45)
  store i32* %46, i32** %10, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds %struct.trect, %struct.trect* %1, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.trect, %struct.trect* %1, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.trect, %struct.trect* %1, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.trect, %struct.trect* %1, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %53, %55
  %57 = getelementptr inbounds %struct.trect, %struct.trect* %1, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.trect, %struct.trect* %1, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %58, %60
  %62 = call i32 @uiDrawPathAddRectangle(i32* %47, i64 %49, i64 %51, i64 %56, i64 %61)
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @uiDrawPathEnd(i32* %63)
  %65 = load i32*, i32** %6, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @uiDrawFill(i32* %65, i32* %66, %struct.TYPE_4__* %11)
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @uiDrawFreePath(i32* %68)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32* @uiDrawNewPath(i32) #1

declare dso_local i32 @uiDrawPathAddRectangle(i32*, i64, i64, i64, i64) #1

declare dso_local i32 @uiDrawPathEnd(i32*) #1

declare dso_local i32 @uiDrawFill(i32*, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @uiDrawFreePath(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
