; ModuleID = '/home/carl/AnghaBench/libui/test/extr_page10.c_handlerDraw.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_page10.c_handlerDraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@textFontButton = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"One two three four\00", align 1
@textColorButton = common dso_local global i32 0, align 4
@noZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_3__*)* @handlerDraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handlerDraw(i32* %0, i32* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca [7 x i8], align 1
  %14 = alloca [12 x i8], align 1
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %17 = load i32, i32* @textFontButton, align 4
  %18 = call i32* @uiFontButtonFont(i32 %17)
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32* @uiDrawNewTextLayout(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %19, i32 -1)
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @uiDrawTextLayoutSetColor(i32* %21, i32 4, i32 7, double 1.000000e+00, double 0.000000e+00, i32 0, double 1.000000e+00)
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @uiDrawTextLayoutSetColor(i32* %23, i32 8, i32 14, double 1.000000e+00, double 0.000000e+00, i32 0, double 5.000000e-01)
  %25 = load i32, i32* @textColorButton, align 4
  %26 = call i32 @uiColorButtonColor(i32 %25, double* %9, double* %10, double* %11, double* %12)
  %27 = load i32*, i32** %8, align 8
  %28 = load double, double* %9, align 8
  %29 = load double, double* %10, align 8
  %30 = load double, double* %11, align 8
  %31 = fptosi double %30 to i32
  %32 = load double, double* %12, align 8
  %33 = call i32 @uiDrawTextLayoutSetColor(i32* %27, i32 14, i32 18, double %28, double %29, i32 %31, double %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @uiDrawText(i32 %36, i32 10, i32 10, i32* %37)
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @uiDrawTextLayoutExtents(i32* %39, double* %15, double* %16)
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @uiDrawFreeTextLayout(i32* %41)
  %43 = getelementptr inbounds [7 x i8], [7 x i8]* %13, i64 0, i64 0
  store i8 120, i8* %43, align 1
  %44 = getelementptr inbounds [7 x i8], [7 x i8]* %13, i64 0, i64 1
  store i8 -16, i8* %44, align 1
  %45 = getelementptr inbounds [7 x i8], [7 x i8]* %13, i64 0, i64 2
  store i8 -112, i8* %45, align 1
  %46 = getelementptr inbounds [7 x i8], [7 x i8]* %13, i64 0, i64 3
  store i8 -116, i8* %46, align 1
  %47 = getelementptr inbounds [7 x i8], [7 x i8]* %13, i64 0, i64 4
  store i8 -120, i8* %47, align 1
  %48 = getelementptr inbounds [7 x i8], [7 x i8]* %13, i64 0, i64 5
  store i8 121, i8* %48, align 1
  %49 = getelementptr inbounds [7 x i8], [7 x i8]* %13, i64 0, i64 6
  store i8 0, i8* %49, align 1
  %50 = getelementptr inbounds [7 x i8], [7 x i8]* %13, i64 0, i64 0
  %51 = load i32*, i32** %7, align 8
  %52 = call i32* @uiDrawNewTextLayout(i8* %50, i32* %51, i32 -1)
  store i32* %52, i32** %8, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @uiDrawTextLayoutSetColor(i32* %53, i32 1, i32 2, double 1.000000e+00, double 0.000000e+00, i32 0, double 5.000000e-01)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load double, double* %16, align 8
  %59 = fadd double 1.000000e+01, %58
  %60 = fptosi double %59 to i32
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @uiDrawText(i32 %57, i32 10, i32 %60, i32* %61)
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @uiDrawFreeTextLayout(i32* %63)
  %65 = getelementptr inbounds [12 x i8], [12 x i8]* %14, i64 0, i64 0
  store i8 122, i8* %65, align 1
  %66 = getelementptr inbounds [12 x i8], [12 x i8]* %14, i64 0, i64 1
  store i8 122, i8* %66, align 1
  %67 = getelementptr inbounds [12 x i8], [12 x i8]* %14, i64 0, i64 2
  store i8 -61, i8* %67, align 1
  %68 = getelementptr inbounds [12 x i8], [12 x i8]* %14, i64 0, i64 3
  store i8 -87, i8* %68, align 1
  %69 = getelementptr inbounds [12 x i8], [12 x i8]* %14, i64 0, i64 4
  store i8 122, i8* %69, align 1
  %70 = getelementptr inbounds [12 x i8], [12 x i8]* %14, i64 0, i64 5
  store i8 122, i8* %70, align 1
  %71 = getelementptr inbounds [12 x i8], [12 x i8]* %14, i64 0, i64 6
  store i8 101, i8* %71, align 1
  %72 = getelementptr inbounds [12 x i8], [12 x i8]* %14, i64 0, i64 7
  store i8 -52, i8* %72, align 1
  %73 = getelementptr inbounds [12 x i8], [12 x i8]* %14, i64 0, i64 8
  store i8 -127, i8* %73, align 1
  %74 = getelementptr inbounds [12 x i8], [12 x i8]* %14, i64 0, i64 9
  store i8 122, i8* %74, align 1
  %75 = getelementptr inbounds [12 x i8], [12 x i8]* %14, i64 0, i64 10
  store i8 122, i8* %75, align 1
  %76 = getelementptr inbounds [12 x i8], [12 x i8]* %14, i64 0, i64 11
  store i8 0, i8* %76, align 1
  %77 = getelementptr inbounds [12 x i8], [12 x i8]* %14, i64 0, i64 0
  %78 = load i32*, i32** %7, align 8
  %79 = call i32* @uiDrawNewTextLayout(i8* %77, i32* %78, i32 -1)
  store i32* %79, i32** %8, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @uiDrawTextLayoutSetColor(i32* %80, i32 2, i32 3, double 1.000000e+00, double 0.000000e+00, i32 0, double 5.000000e-01)
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @uiDrawTextLayoutSetColor(i32* %82, i32 5, i32 6, double 1.000000e+00, double 0.000000e+00, i32 0, double 5.000000e-01)
  %84 = load i32, i32* @noZ, align 4
  %85 = call i32 @uiCheckboxChecked(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %3
  %88 = load i32*, i32** %8, align 8
  %89 = call i32 @uiDrawTextLayoutSetColor(i32* %88, i32 6, i32 7, double 5.000000e-01, double 0.000000e+00, i32 1, double 5.000000e-01)
  br label %90

90:                                               ; preds = %87, %3
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load double, double* %16, align 8
  %95 = fadd double 1.000000e+01, %94
  %96 = load double, double* %16, align 8
  %97 = fadd double %95, %96
  %98 = fptosi double %97 to i32
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 @uiDrawText(i32 %93, i32 10, i32 %98, i32* %99)
  %101 = load i32*, i32** %8, align 8
  %102 = call i32 @uiDrawFreeTextLayout(i32* %101)
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 @uiDrawFreeTextFont(i32* %103)
  ret void
}

declare dso_local i32* @uiFontButtonFont(i32) #1

declare dso_local i32* @uiDrawNewTextLayout(i8*, i32*, i32) #1

declare dso_local i32 @uiDrawTextLayoutSetColor(i32*, i32, i32, double, double, i32, double) #1

declare dso_local i32 @uiColorButtonColor(i32, double*, double*, double*, double*) #1

declare dso_local i32 @uiDrawText(i32, i32, i32, i32*) #1

declare dso_local i32 @uiDrawTextLayoutExtents(i32*, double*, double*) #1

declare dso_local i32 @uiDrawFreeTextLayout(i32*) #1

declare dso_local i32 @uiCheckboxChecked(i32) #1

declare dso_local i32 @uiDrawFreeTextFont(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
