; ModuleID = '/home/carl/AnghaBench/libui/_wip/attrstr_metrics/extr_common_OLD_drawtext.c_drawTextBackground.c'
source_filename = "/home/carl/AnghaBench/libui/_wip/attrstr_metrics/extr_common_OLD_drawtext.c_drawTextBackground.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@uiDrawFillModeWinding = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drawTextBackground(i32* %0, double %1, double %2, i32* %3, i64 %4, i64 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca %struct.TYPE_3__, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store double %1, double* %10, align 8
  store double %2, double* %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %27 = load i32*, i32** %12, align 8
  %28 = call i32 @uiDrawTextLayoutExtents(i32* %27, double* %21, double* %22)
  %29 = load i32*, i32** %12, align 8
  %30 = call i32 @uiDrawTextLayoutNumLines(i32* %29)
  store i32 %30, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %31

31:                                               ; preds = %48, %8
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* %18, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* %17, align 4
  %38 = call i32 @uiDrawTextLayoutLineByteRange(i32* %36, i32 %37, i64* %19, i64* %20)
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* %19, align 8
  %41 = icmp uge i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* %20, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %51

47:                                               ; preds = %42, %35
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %17, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %17, align 4
  br label %31

51:                                               ; preds = %46, %31
  br label %52

52:                                               ; preds = %83, %51
  %53 = load i64, i64* %14, align 8
  %54 = load i64, i64* %13, align 8
  %55 = sub i64 %53, %54
  %56 = icmp ugt i64 %55, 0
  br i1 %56, label %57, label %116

57:                                               ; preds = %52
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* %17, align 4
  %60 = call i32 @uiDrawTextLayoutLineByteRange(i32* %58, i32 %59, i64* %19, i64* %20)
  %61 = load i64, i64* %20, align 8
  %62 = load i64, i64* %14, align 8
  %63 = icmp ugt i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i64, i64* %14, align 8
  store i64 %65, i64* %20, align 8
  br label %66

66:                                               ; preds = %64, %57
  %67 = load i32*, i32** %12, align 8
  %68 = load i64, i64* %13, align 8
  %69 = load i32, i32* %17, align 4
  %70 = call double @uiDrawTextLayoutByteLocationInLine(i32* %67, i64 %68, i32 %69)
  store double %70, double* %24, align 8
  %71 = load double, double* %21, align 8
  store double %71, double* %25, align 8
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* %20, align 8
  %77 = icmp ule i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %74, %66
  %79 = load i32*, i32** %12, align 8
  %80 = load i64, i64* %20, align 8
  %81 = load i32, i32* %17, align 4
  %82 = call double @uiDrawTextLayoutByteLocationInLine(i32* %79, i64 %80, i32 %81)
  store double %82, double* %25, align 8
  br label %83

83:                                               ; preds = %78, %74
  %84 = load i32*, i32** %12, align 8
  %85 = load i32, i32* %17, align 4
  %86 = call i32 @uiDrawTextLayoutLineGetMetrics(i32* %84, i32 %85, %struct.TYPE_3__* %23)
  %87 = load i32, i32* @uiDrawFillModeWinding, align 4
  %88 = call i32* @uiDrawNewPath(i32 %87)
  store i32* %88, i32** %26, align 8
  %89 = load i32*, i32** %26, align 8
  %90 = load double, double* %10, align 8
  %91 = load double, double* %24, align 8
  %92 = fadd double %90, %91
  %93 = load double, double* %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = sitofp i64 %95 to double
  %97 = fadd double %93, %96
  %98 = fptosi double %97 to i64
  %99 = load double, double* %25, align 8
  %100 = load double, double* %24, align 8
  %101 = fsub double %99, %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @uiDrawPathAddRectangle(i32* %89, double %92, i64 %98, double %101, i32 %103)
  %105 = load i32*, i32** %26, align 8
  %106 = call i32 @uiDrawPathEnd(i32* %105)
  %107 = load i32*, i32** %9, align 8
  %108 = load i32*, i32** %26, align 8
  %109 = load i32*, i32** %15, align 8
  %110 = call i32 @uiDrawFill(i32* %107, i32* %108, i32* %109)
  %111 = load i32*, i32** %26, align 8
  %112 = call i32 @uiDrawFreePath(i32* %111)
  %113 = load i32, i32* %17, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %17, align 4
  %115 = load i64, i64* %20, align 8
  store i64 %115, i64* %13, align 8
  br label %52

116:                                              ; preds = %52
  ret void
}

declare dso_local i32 @uiDrawTextLayoutExtents(i32*, double*, double*) #1

declare dso_local i32 @uiDrawTextLayoutNumLines(i32*) #1

declare dso_local i32 @uiDrawTextLayoutLineByteRange(i32*, i32, i64*, i64*) #1

declare dso_local double @uiDrawTextLayoutByteLocationInLine(i32*, i64, i32) #1

declare dso_local i32 @uiDrawTextLayoutLineGetMetrics(i32*, i32, %struct.TYPE_3__*) #1

declare dso_local i32* @uiDrawNewPath(i32) #1

declare dso_local i32 @uiDrawPathAddRectangle(i32*, double, i64, double, i32) #1

declare dso_local i32 @uiDrawPathEnd(i32*) #1

declare dso_local i32 @uiDrawFill(i32*, i32*, i32*) #1

declare dso_local i32 @uiDrawFreePath(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
