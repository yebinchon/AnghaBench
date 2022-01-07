; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_q3.c_Q3_SurfacePlane.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_q3.c_Q3_SurfacePlane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float* }
%struct.TYPE_4__ = type { i64, i32 }

@q3_drawVerts = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"surface %td bogus normal vector %f %f %f\0A\00", align 1
@q3_drawSurfaces = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"t1 = %f %f %f, t2 = %f %f %f\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"p%d = %f %f %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Q3_SurfacePlane(%struct.TYPE_4__* %0, double* %1, float* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca double*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store double* %1, double** %5, align 8
  store float* %2, float** %6, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @q3_drawVerts, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load float*, float** %18, align 8
  store float* %19, float** %8, align 8
  store i32 1, i32* %7, align 4
  br label %20

20:                                               ; preds = %76, %3
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 1
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %79

27:                                               ; preds = %20
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @q3_drawVerts, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = srem i32 %32, %35
  %37 = sext i32 %36 to i64
  %38 = add i64 %31, %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load float*, float** %40, align 8
  store float* %41, float** %9, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @q3_drawVerts, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = srem i32 %47, %50
  %52 = sext i32 %51 to i64
  %53 = add i64 %45, %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load float*, float** %55, align 8
  store float* %56, float** %10, align 8
  %57 = load float*, float** %8, align 8
  %58 = load float*, float** %9, align 8
  %59 = load double*, double** %11, align 8
  %60 = call i32 @VectorSubtract(float* %57, float* %58, double* %59)
  %61 = load float*, float** %10, align 8
  %62 = load float*, float** %9, align 8
  %63 = load double*, double** %12, align 8
  %64 = call i32 @VectorSubtract(float* %61, float* %62, double* %63)
  %65 = load double*, double** %11, align 8
  %66 = load double*, double** %12, align 8
  %67 = load double*, double** %5, align 8
  %68 = call i32 @CrossProduct(double* %65, double* %66, double* %67)
  %69 = load double*, double** %5, align 8
  %70 = call i32 @VectorNormalize(double* %69)
  %71 = load double*, double** %5, align 8
  %72 = call double @VectorLength(double* %71)
  %73 = fcmp une double %72, 0.000000e+00
  br i1 %73, label %74, label %75

74:                                               ; preds = %27
  br label %79

75:                                               ; preds = %27
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %20

79:                                               ; preds = %74, %20
  %80 = load double*, double** %5, align 8
  %81 = call double @VectorLength(double* %80)
  %82 = fcmp olt double %81, 9.000000e-01
  br i1 %82, label %83, label %154

83:                                               ; preds = %79
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %85 = load i32, i32* @q3_drawSurfaces, align 4
  %86 = sext i32 %85 to i64
  %87 = sub i64 0, %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %87
  %89 = load double*, double** %5, align 8
  %90 = getelementptr inbounds double, double* %89, i64 0
  %91 = load double, double* %90, align 8
  %92 = load double*, double** %5, align 8
  %93 = getelementptr inbounds double, double* %92, i64 1
  %94 = load double, double* %93, align 8
  %95 = load double*, double** %5, align 8
  %96 = getelementptr inbounds double, double* %95, i64 2
  %97 = load double, double* %96, align 8
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %88, double %91, double %94, double %97)
  %99 = load double*, double** %11, align 8
  %100 = getelementptr inbounds double, double* %99, i64 0
  %101 = load double, double* %100, align 8
  %102 = load double*, double** %11, align 8
  %103 = getelementptr inbounds double, double* %102, i64 1
  %104 = load double, double* %103, align 8
  %105 = load double*, double** %11, align 8
  %106 = getelementptr inbounds double, double* %105, i64 2
  %107 = load double, double* %106, align 8
  %108 = load double*, double** %12, align 8
  %109 = getelementptr inbounds double, double* %108, i64 0
  %110 = load double, double* %109, align 8
  %111 = load double*, double** %12, align 8
  %112 = getelementptr inbounds double, double* %111, i64 1
  %113 = load double, double* %112, align 8
  %114 = load double*, double** %12, align 8
  %115 = getelementptr inbounds double, double* %114, i64 2
  %116 = load double, double* %115, align 8
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), double %101, double %104, double %107, double %110, double %113, double %116)
  store i32 0, i32* %7, align 4
  br label %118

118:                                              ; preds = %150, %83
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %153

124:                                              ; preds = %118
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** @q3_drawVerts, align 8
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = srem i32 %129, %132
  %134 = sext i32 %133 to i64
  %135 = add i64 %128, %134
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load float*, float** %137, align 8
  store float* %138, float** %9, align 8
  %139 = load i32, i32* %7, align 4
  %140 = load float*, float** %9, align 8
  %141 = getelementptr inbounds float, float* %140, i64 0
  %142 = load float, float* %141, align 4
  %143 = load float*, float** %9, align 8
  %144 = getelementptr inbounds float, float* %143, i64 1
  %145 = load float, float* %144, align 4
  %146 = load float*, float** %9, align 8
  %147 = getelementptr inbounds float, float* %146, i64 2
  %148 = load float, float* %147, align 4
  %149 = call i32 @Log_Print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %139, float %142, float %145, float %148)
  br label %150

150:                                              ; preds = %124
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %7, align 4
  br label %118

153:                                              ; preds = %118
  br label %154

154:                                              ; preds = %153, %79
  %155 = load float*, float** %8, align 8
  %156 = load double*, double** %5, align 8
  %157 = call float @DotProduct(float* %155, double* %156)
  %158 = load float*, float** %6, align 8
  store float %157, float* %158, align 4
  ret void
}

declare dso_local i32 @VectorSubtract(float*, float*, double*) #1

declare dso_local i32 @CrossProduct(double*, double*, double*) #1

declare dso_local i32 @VectorNormalize(double*) #1

declare dso_local double @VectorLength(double*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @Log_Print(i8*, i32, float, float, float) #1

declare dso_local float @DotProduct(float*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
