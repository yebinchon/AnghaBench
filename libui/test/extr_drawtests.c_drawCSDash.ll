; ModuleID = '/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawCSDash.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawCSDash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { double*, i32, double, double, i32, i32, i32 }

@__const.drawCSDash.dashes = private unnamed_addr constant [4 x double] [double 5.000000e+01, double 1.000000e+01, double 1.000000e+01, double 1.000000e+01], align 16
@uiDrawLineCapFlat = common dso_local global i32 0, align 4
@uiDrawLineJoinMiter = common dso_local global i32 0, align 4
@uiDrawDefaultMiterLimit = common dso_local global i32 0, align 4
@uiDrawFillModeWinding = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @drawCSDash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drawCSDash(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca [4 x double], align 16
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %9 = bitcast [4 x double]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([4 x double]* @__const.drawCSDash.dashes to i8*), i64 32, i1 false)
  store i32 4, i32* %4, align 4
  store double -5.000000e+01, double* %5, align 8
  %10 = call i32 @crsourcergba(i32* %6, i32 0, i32 0, i32 0, i32 1)
  %11 = load i32, i32* @uiDrawLineCapFlat, align 4
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 6
  store i32 %11, i32* %12, align 8
  %13 = load i32, i32* @uiDrawLineJoinMiter, align 4
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 5
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @uiDrawDefaultMiterLimit, align 4
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 4
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds [4 x double], [4 x double]* %3, i64 0, i64 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store double* %17, double** %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i32 %19, i32* %20, align 8
  %21 = load double, double* %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  store double %21, double* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  store double 1.000000e+01, double* %23, align 8
  %24 = load i32, i32* @uiDrawFillModeWinding, align 4
  %25 = call i32* @uiDrawNewPath(i32 %24)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @uiDrawPathNewFigure(i32* %26, double 1.280000e+02, double 2.560000e+01)
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @uiDrawPathLineTo(i32* %28, double 2.304000e+02, double 2.304000e+02)
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @uiDrawPathLineTo(i32* %30, double 1.280000e+02, double 2.304000e+02)
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @uiDrawPathBezierTo(i32* %32, double 5.120000e+01, double 2.304000e+02, double 5.120000e+01, double 1.280000e+02, double 1.280000e+02, double 1.280000e+02)
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @uiDrawPathEnd(i32* %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @uiDrawStroke(i32 %38, i32* %39, i32* %6, %struct.TYPE_5__* %7)
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @uiDrawFreePath(i32* %41)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @crsourcergba(i32*, i32, i32, i32, i32) #2

declare dso_local i32* @uiDrawNewPath(i32) #2

declare dso_local i32 @uiDrawPathNewFigure(i32*, double, double) #2

declare dso_local i32 @uiDrawPathLineTo(i32*, double, double) #2

declare dso_local i32 @uiDrawPathBezierTo(i32*, double, double, double, double, double, double) #2

declare dso_local i32 @uiDrawPathEnd(i32*) #2

declare dso_local i32 @uiDrawStroke(i32, i32*, i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @uiDrawFreePath(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
