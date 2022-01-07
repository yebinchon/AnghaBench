; ModuleID = '/home/carl/AnghaBench/htop/extr_ScreenManager.c_checkRecalculation.c'
source_filename = "/home/carl/AnghaBench/htop/extr_ScreenManager.c_checkRecalculation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_5__ = type { double, i64 }
%struct.timeval = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, double*, i32*, i32*, i32*, i32*)* @checkRecalculation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkRecalculation(%struct.TYPE_6__* %0, double* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.timeval, align 8
  %15 = alloca double, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store double* %1, double** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %13, align 8
  %21 = call i32 @gettimeofday(%struct.timeval* %14, i32* null)
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = sitofp i64 %23 to double
  %25 = fmul double %24, 1.000000e+01
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sitofp i64 %27 to double
  %29 = fdiv double %28, 1.000000e+05
  %30 = fadd double %25, %29
  store double %30, double* %15, align 8
  %31 = load double, double* %15, align 8
  %32 = load double*, double** %8, align 8
  %33 = load double, double* %32, align 8
  %34 = fsub double %31, %33
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load double, double* %38, align 8
  %40 = fcmp ogt double %34, %39
  %41 = zext i1 %40 to i32
  %42 = load i32*, i32** %12, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %6
  %47 = load i32*, i32** %12, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %46, %6
  %51 = phi i1 [ true, %6 ], [ %49, %46 ]
  %52 = zext i1 %51 to i32
  %53 = load i32*, i32** %11, align 8
  store i32 %52, i32* %53, align 4
  %54 = load double, double* %15, align 8
  %55 = load double*, double** %8, align 8
  %56 = load double, double* %55, align 8
  %57 = fcmp olt double %54, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32*, i32** %11, align 8
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %58, %50
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %60
  %65 = load double, double* %15, align 8
  %66 = load double*, double** %8, align 8
  store double %65, double* %66, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = call i32 @ProcessList_scan(i32* %67)
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %64
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72, %64
  %80 = load i32*, i32** %13, align 8
  %81 = call i32 @ProcessList_sort(i32* %80)
  %82 = load i32*, i32** %9, align 8
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %79, %72
  %84 = load i32*, i32** %10, align 8
  store i32 1, i32* %84, align 4
  br label %85

85:                                               ; preds = %83, %60
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load i32*, i32** %13, align 8
  %91 = call i32 @ProcessList_rebuildPanel(i32* %90)
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = call i32 @Header_draw(%struct.TYPE_7__* %94)
  br label %96

96:                                               ; preds = %89, %85
  %97 = load i32*, i32** %11, align 8
  store i32 0, i32* %97, align 4
  ret void
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @ProcessList_scan(i32*) #1

declare dso_local i32 @ProcessList_sort(i32*) #1

declare dso_local i32 @ProcessList_rebuildPanel(i32*) #1

declare dso_local i32 @Header_draw(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
