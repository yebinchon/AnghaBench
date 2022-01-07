; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_players.c_UI_MovedirAdjustment.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_players.c_UI_MovedirAdjustment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.TYPE_3__*)* @UI_MovedirAdjustment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @UI_MovedirAdjustment(%struct.TYPE_3__* %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load double*, double** %4, align 8
  %13 = call i32 @VectorSubtract(i32 %8, i32 %11, double* %12)
  %14 = load double*, double** %4, align 8
  %15 = load double*, double** %5, align 8
  %16 = call i32 @AngleVectors(double* %14, double* %15, i32* null, i32* null)
  %17 = load double*, double** %5, align 8
  %18 = getelementptr inbounds double, double* %17, i64 0
  %19 = load double, double* %18, align 8
  %20 = call double @Q_fabs(double %19)
  %21 = fcmp olt double %20, 1.000000e-02
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load double*, double** %5, align 8
  %24 = getelementptr inbounds double, double* %23, i64 0
  store double 0.000000e+00, double* %24, align 8
  br label %25

25:                                               ; preds = %22, %1
  %26 = load double*, double** %5, align 8
  %27 = getelementptr inbounds double, double* %26, i64 1
  %28 = load double, double* %27, align 8
  %29 = call double @Q_fabs(double %28)
  %30 = fcmp olt double %29, 1.000000e-02
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load double*, double** %5, align 8
  %33 = getelementptr inbounds double, double* %32, i64 1
  store double 0.000000e+00, double* %33, align 8
  br label %34

34:                                               ; preds = %31, %25
  %35 = load double*, double** %5, align 8
  %36 = getelementptr inbounds double, double* %35, i64 1
  %37 = load double, double* %36, align 8
  %38 = fcmp oeq double %37, 0.000000e+00
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load double*, double** %5, align 8
  %41 = getelementptr inbounds double, double* %40, i64 0
  %42 = load double, double* %41, align 8
  %43 = fcmp ogt double %42, 0.000000e+00
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store float 0.000000e+00, float* %2, align 4
  br label %112

45:                                               ; preds = %39, %34
  %46 = load double*, double** %5, align 8
  %47 = getelementptr inbounds double, double* %46, i64 1
  %48 = load double, double* %47, align 8
  %49 = fcmp olt double %48, 0.000000e+00
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load double*, double** %5, align 8
  %52 = getelementptr inbounds double, double* %51, i64 0
  %53 = load double, double* %52, align 8
  %54 = fcmp ogt double %53, 0.000000e+00
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store float 2.200000e+01, float* %2, align 4
  br label %112

56:                                               ; preds = %50, %45
  %57 = load double*, double** %5, align 8
  %58 = getelementptr inbounds double, double* %57, i64 1
  %59 = load double, double* %58, align 8
  %60 = fcmp olt double %59, 0.000000e+00
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load double*, double** %5, align 8
  %63 = getelementptr inbounds double, double* %62, i64 0
  %64 = load double, double* %63, align 8
  %65 = fcmp oeq double %64, 0.000000e+00
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store float 4.500000e+01, float* %2, align 4
  br label %112

67:                                               ; preds = %61, %56
  %68 = load double*, double** %5, align 8
  %69 = getelementptr inbounds double, double* %68, i64 1
  %70 = load double, double* %69, align 8
  %71 = fcmp olt double %70, 0.000000e+00
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load double*, double** %5, align 8
  %74 = getelementptr inbounds double, double* %73, i64 0
  %75 = load double, double* %74, align 8
  %76 = fcmp olt double %75, 0.000000e+00
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store float -2.200000e+01, float* %2, align 4
  br label %112

78:                                               ; preds = %72, %67
  %79 = load double*, double** %5, align 8
  %80 = getelementptr inbounds double, double* %79, i64 1
  %81 = load double, double* %80, align 8
  %82 = fcmp oeq double %81, 0.000000e+00
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load double*, double** %5, align 8
  %85 = getelementptr inbounds double, double* %84, i64 0
  %86 = load double, double* %85, align 8
  %87 = fcmp olt double %86, 0.000000e+00
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store float 0.000000e+00, float* %2, align 4
  br label %112

89:                                               ; preds = %83, %78
  %90 = load double*, double** %5, align 8
  %91 = getelementptr inbounds double, double* %90, i64 1
  %92 = load double, double* %91, align 8
  %93 = fcmp ogt double %92, 0.000000e+00
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load double*, double** %5, align 8
  %96 = getelementptr inbounds double, double* %95, i64 0
  %97 = load double, double* %96, align 8
  %98 = fcmp olt double %97, 0.000000e+00
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store float 2.200000e+01, float* %2, align 4
  br label %112

100:                                              ; preds = %94, %89
  %101 = load double*, double** %5, align 8
  %102 = getelementptr inbounds double, double* %101, i64 1
  %103 = load double, double* %102, align 8
  %104 = fcmp ogt double %103, 0.000000e+00
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load double*, double** %5, align 8
  %107 = getelementptr inbounds double, double* %106, i64 0
  %108 = load double, double* %107, align 8
  %109 = fcmp oeq double %108, 0.000000e+00
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store float -4.500000e+01, float* %2, align 4
  br label %112

111:                                              ; preds = %105, %100
  store float -2.200000e+01, float* %2, align 4
  br label %112

112:                                              ; preds = %111, %110, %99, %88, %77, %66, %55, %44
  %113 = load float, float* %2, align 4
  ret float %113
}

declare dso_local i32 @VectorSubtract(i32, i32, double*) #1

declare dso_local i32 @AngleVectors(double*, double*, i32*, i32*) #1

declare dso_local double @Q_fabs(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
