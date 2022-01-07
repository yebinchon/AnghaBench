; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_Slider_Paint.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_Slider_Paint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_15__, i32 (float, float, i32, i32, i32)*, i32 (double*)* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__, %struct.TYPE_12__, i64, i64 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { float, float }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_16__ = type { double* }

@WINDOW_HASFOCUS = common dso_local global i32 0, align 4
@DC = common dso_local global %struct.TYPE_11__* null, align 8
@PULSE_DIVISOR = common dso_local global i32 0, align 4
@SLIDER_WIDTH = common dso_local global i32 0, align 4
@SLIDER_HEIGHT = common dso_local global i32 0, align 4
@SLIDER_THUMB_WIDTH = common dso_local global i32 0, align 4
@SLIDER_THUMB_HEIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Item_Slider_Paint(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %7, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @WINDOW_HASFOCUS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %66

19:                                               ; preds = %1
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load double*, double** %21, align 8
  %23 = getelementptr inbounds double, double* %22, i64 0
  %24 = load double, double* %23, align 8
  %25 = fmul double 8.000000e-01, %24
  %26 = load double*, double** %4, align 8
  %27 = getelementptr inbounds double, double* %26, i64 0
  store double %25, double* %27, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load double*, double** %29, align 8
  %31 = getelementptr inbounds double, double* %30, i64 1
  %32 = load double, double* %31, align 8
  %33 = fmul double 8.000000e-01, %32
  %34 = load double*, double** %4, align 8
  %35 = getelementptr inbounds double, double* %34, i64 1
  store double %33, double* %35, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load double*, double** %37, align 8
  %39 = getelementptr inbounds double, double* %38, i64 2
  %40 = load double, double* %39, align 8
  %41 = fmul double 8.000000e-01, %40
  %42 = load double*, double** %4, align 8
  %43 = getelementptr inbounds double, double* %42, i64 2
  store double %41, double* %43, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load double*, double** %45, align 8
  %47 = getelementptr inbounds double, double* %46, i64 3
  %48 = load double, double* %47, align 8
  %49 = fmul double 8.000000e-01, %48
  %50 = load double*, double** %4, align 8
  %51 = getelementptr inbounds double, double* %50, i64 3
  store double %49, double* %51, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load double*, double** %53, align 8
  %55 = load double*, double** %4, align 8
  %56 = load double*, double** %3, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DC, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @PULSE_DIVISOR, align 4
  %61 = sdiv i32 %59, %60
  %62 = call double @sin(i32 %61)
  %63 = fmul double 5.000000e-01, %62
  %64 = fadd double 5.000000e-01, %63
  %65 = call i32 @LerpColor(double* %54, double* %55, double* %56, double %64)
  br label %71

66:                                               ; preds = %1
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 2
  %70 = call i32 @memcpy(double** %3, i32* %69, i32 8)
  br label %71

71:                                               ; preds = %66, %19
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load float, float* %75, align 4
  store float %76, float* %6, align 4
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %71
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %83 = call i32 @Item_Text_Paint(%struct.TYPE_17__* %82)
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %87, %91
  %93 = add nsw i32 %92, 8
  %94 = sitofp i32 %93 to float
  store float %94, float* %5, align 4
  br label %101

95:                                               ; preds = %71
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = load float, float* %99, align 4
  store float %100, float* %5, align 4
  br label %101

101:                                              ; preds = %95, %81
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DC, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 3
  %104 = load i32 (double*)*, i32 (double*)** %103, align 8
  %105 = load double*, double** %3, align 8
  %106 = call i32 %104(double* %105)
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DC, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 2
  %109 = load i32 (float, float, i32, i32, i32)*, i32 (float, float, i32, i32, i32)** %108, align 8
  %110 = load float, float* %5, align 4
  %111 = load float, float* %6, align 4
  %112 = load i32, i32* @SLIDER_WIDTH, align 4
  %113 = load i32, i32* @SLIDER_HEIGHT, align 4
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DC, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 %109(float %110, float %111, i32 %112, i32 %113, i32 %117)
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %120 = call float @Item_Slider_ThumbPosition(%struct.TYPE_17__* %119)
  store float %120, float* %5, align 4
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DC, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 2
  %123 = load i32 (float, float, i32, i32, i32)*, i32 (float, float, i32, i32, i32)** %122, align 8
  %124 = load float, float* %5, align 4
  %125 = load i32, i32* @SLIDER_THUMB_WIDTH, align 4
  %126 = sdiv i32 %125, 2
  %127 = sitofp i32 %126 to float
  %128 = fsub float %124, %127
  %129 = load float, float* %6, align 4
  %130 = fsub float %129, 2.000000e+00
  %131 = load i32, i32* @SLIDER_THUMB_WIDTH, align 4
  %132 = load i32, i32* @SLIDER_THUMB_HEIGHT, align 4
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DC, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 %123(float %128, float %130, i32 %131, i32 %132, i32 %136)
  ret void
}

declare dso_local i32 @LerpColor(double*, double*, double*, double) #1

declare dso_local double @sin(i32) #1

declare dso_local i32 @memcpy(double**, i32*, i32) #1

declare dso_local i32 @Item_Text_Paint(%struct.TYPE_17__*) #1

declare dso_local float @Item_Slider_ThumbPosition(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
