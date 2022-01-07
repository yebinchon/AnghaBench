; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shade_calc.c_RB_CalcBulgeVertexes.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shade_calc.c_RB_CalcBulgeVertexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i64, i64* }
%struct.TYPE_11__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { double }
%struct.TYPE_9__ = type { float* }
%struct.TYPE_8__ = type { double, float, float }

@tess = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@backEnd = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@FUNCTABLE_SIZE = common dso_local global i32 0, align 4
@M_PI = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@FUNCTABLE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_CalcBulgeVertexes(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca double, align 8
  %8 = alloca i64, align 8
  %9 = alloca float, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %10 = load i64*, i64** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 3), align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to float*
  store float* %13, float** %4, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 2), align 8
  %15 = inttoptr i64 %14 to float*
  store float* %15, float** %5, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 1), align 8
  %17 = inttoptr i64 %16 to float*
  store float* %17, float** %6, align 8
  %18 = load double, double* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @backEnd, i32 0, i32 0, i32 0), align 8
  %19 = fmul double %18, 1.000000e-03
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load double, double* %21, align 8
  %23 = fmul double %19, %22
  store double %23, double* %7, align 8
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %84, %1
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 0), align 8
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %93

28:                                               ; preds = %24
  %29 = load i32, i32* @FUNCTABLE_SIZE, align 4
  %30 = load i32, i32* @M_PI, align 4
  %31 = mul nsw i32 %30, 2
  %32 = sdiv i32 %29, %31
  %33 = sitofp i32 %32 to float
  %34 = fpext float %33 to double
  %35 = load float*, float** %4, align 8
  %36 = getelementptr inbounds float, float* %35, i64 0
  %37 = load float, float* %36, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load float, float* %39, align 8
  %41 = fmul float %37, %40
  %42 = fpext float %41 to double
  %43 = load double, double* %7, align 8
  %44 = fadd double %42, %43
  %45 = fmul double %34, %44
  %46 = fptoui double %45 to i64
  store i64 %46, i64* %8, align 8
  %47 = load float*, float** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 0), align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @FUNCTABLE_MASK, align 8
  %50 = and i64 %48, %49
  %51 = getelementptr inbounds float, float* %47, i64 %50
  %52 = load float, float* %51, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = load float, float* %54, align 4
  %56 = fmul float %52, %55
  store float %56, float* %9, align 4
  %57 = load float*, float** %6, align 8
  %58 = getelementptr inbounds float, float* %57, i64 0
  %59 = load float, float* %58, align 4
  %60 = load float, float* %9, align 4
  %61 = fmul float %59, %60
  %62 = load float*, float** %5, align 8
  %63 = getelementptr inbounds float, float* %62, i64 0
  %64 = load float, float* %63, align 4
  %65 = fadd float %64, %61
  store float %65, float* %63, align 4
  %66 = load float*, float** %6, align 8
  %67 = getelementptr inbounds float, float* %66, i64 1
  %68 = load float, float* %67, align 4
  %69 = load float, float* %9, align 4
  %70 = fmul float %68, %69
  %71 = load float*, float** %5, align 8
  %72 = getelementptr inbounds float, float* %71, i64 1
  %73 = load float, float* %72, align 4
  %74 = fadd float %73, %70
  store float %74, float* %72, align 4
  %75 = load float*, float** %6, align 8
  %76 = getelementptr inbounds float, float* %75, i64 2
  %77 = load float, float* %76, align 4
  %78 = load float, float* %9, align 4
  %79 = fmul float %77, %78
  %80 = load float*, float** %5, align 8
  %81 = getelementptr inbounds float, float* %80, i64 2
  %82 = load float, float* %81, align 4
  %83 = fadd float %82, %79
  store float %83, float* %81, align 4
  br label %84

84:                                               ; preds = %28
  %85 = load i32, i32* %3, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %3, align 4
  %87 = load float*, float** %5, align 8
  %88 = getelementptr inbounds float, float* %87, i64 4
  store float* %88, float** %5, align 8
  %89 = load float*, float** %4, align 8
  %90 = getelementptr inbounds float, float* %89, i64 4
  store float* %90, float** %4, align 8
  %91 = load float*, float** %6, align 8
  %92 = getelementptr inbounds float, float* %91, i64 4
  store float* %92, float** %6, align 8
  br label %24

93:                                               ; preds = %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
