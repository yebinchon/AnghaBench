; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_patch.c_CM_PlaneEqual.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_patch.c_CM_PlaneEqual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@NORMAL_EPSILON = common dso_local global i64 0, align 8
@DIST_EPSILON = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CM_PlaneEqual(%struct.TYPE_3__* %0, float* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [4 x float], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store float* %1, float** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = sitofp i64 %13 to float
  %15 = load float*, float** %6, align 8
  %16 = getelementptr inbounds float, float* %15, i64 0
  %17 = load float, float* %16, align 4
  %18 = fsub float %14, %17
  %19 = fptosi float %18 to i64
  %20 = call i64 @fabs(i64 %19)
  %21 = load i64, i64* @NORMAL_EPSILON, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %72

23:                                               ; preds = %3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = sitofp i64 %28 to float
  %30 = load float*, float** %6, align 8
  %31 = getelementptr inbounds float, float* %30, i64 1
  %32 = load float, float* %31, align 4
  %33 = fsub float %29, %32
  %34 = fptosi float %33 to i64
  %35 = call i64 @fabs(i64 %34)
  %36 = load i64, i64* @NORMAL_EPSILON, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %72

38:                                               ; preds = %23
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 2
  %43 = load i64, i64* %42, align 8
  %44 = sitofp i64 %43 to float
  %45 = load float*, float** %6, align 8
  %46 = getelementptr inbounds float, float* %45, i64 2
  %47 = load float, float* %46, align 4
  %48 = fsub float %44, %47
  %49 = fptosi float %48 to i64
  %50 = call i64 @fabs(i64 %49)
  %51 = load i64, i64* @NORMAL_EPSILON, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %38
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 3
  %58 = load i64, i64* %57, align 8
  %59 = sitofp i64 %58 to float
  %60 = load float*, float** %6, align 8
  %61 = getelementptr inbounds float, float* %60, i64 3
  %62 = load float, float* %61, align 4
  %63 = fsub float %59, %62
  %64 = fptosi float %63 to i64
  %65 = call i64 @fabs(i64 %64)
  %66 = load i64, i64* @DIST_EPSILON, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %53
  %69 = load i32, i32* @qfalse, align 4
  %70 = load i32*, i32** %7, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* @qtrue, align 4
  store i32 %71, i32* %4, align 4
  br label %142

72:                                               ; preds = %53, %38, %23, %3
  %73 = load float*, float** %6, align 8
  %74 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 0
  %75 = call i32 @VectorNegate(float* %73, float* %74)
  %76 = load float*, float** %6, align 8
  %77 = getelementptr inbounds float, float* %76, i64 3
  %78 = load float, float* %77, align 4
  %79 = fneg float %78
  %80 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 3
  store float %79, float* %80, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  %85 = load i64, i64* %84, align 8
  %86 = sitofp i64 %85 to float
  %87 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 0
  %88 = load float, float* %87, align 16
  %89 = fsub float %86, %88
  %90 = fptosi float %89 to i64
  %91 = call i64 @fabs(i64 %90)
  %92 = load i64, i64* @NORMAL_EPSILON, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %140

94:                                               ; preds = %72
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 1
  %99 = load i64, i64* %98, align 8
  %100 = sitofp i64 %99 to float
  %101 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 1
  %102 = load float, float* %101, align 4
  %103 = fsub float %100, %102
  %104 = fptosi float %103 to i64
  %105 = call i64 @fabs(i64 %104)
  %106 = load i64, i64* @NORMAL_EPSILON, align 8
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %108, label %140

108:                                              ; preds = %94
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 2
  %113 = load i64, i64* %112, align 8
  %114 = sitofp i64 %113 to float
  %115 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 2
  %116 = load float, float* %115, align 8
  %117 = fsub float %114, %116
  %118 = fptosi float %117 to i64
  %119 = call i64 @fabs(i64 %118)
  %120 = load i64, i64* @NORMAL_EPSILON, align 8
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %122, label %140

122:                                              ; preds = %108
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 3
  %127 = load i64, i64* %126, align 8
  %128 = sitofp i64 %127 to float
  %129 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 3
  %130 = load float, float* %129, align 4
  %131 = fsub float %128, %130
  %132 = fptosi float %131 to i64
  %133 = call i64 @fabs(i64 %132)
  %134 = load i64, i64* @DIST_EPSILON, align 8
  %135 = icmp slt i64 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %122
  %137 = load i32, i32* @qtrue, align 4
  %138 = load i32*, i32** %7, align 8
  store i32 %137, i32* %138, align 4
  %139 = load i32, i32* @qtrue, align 4
  store i32 %139, i32* %4, align 4
  br label %142

140:                                              ; preds = %122, %108, %94, %72
  %141 = load i32, i32* @qfalse, align 4
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %140, %136, %68
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i64 @fabs(i64) #1

declare dso_local i32 @VectorNegate(float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
