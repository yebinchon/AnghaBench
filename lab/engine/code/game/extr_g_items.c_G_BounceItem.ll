; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_items.c_G_BounceItem.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_items.c_G_BounceItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__, %struct.TYPE_13__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32*, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, double*, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i64* }

@level = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_BounceItem(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @level, i32 0, i32 0), align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @level, i32 0, i32 1), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @level, i32 0, i32 0), align 4
  %11 = sub nsw i32 %9, %10
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = mul nsw i32 %11, %14
  %16 = add nsw i32 %8, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @BG_EvaluateTrajectoryDelta(%struct.TYPE_11__* %19, i32 %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = call float @DotProduct(i32 %23, i64* %27)
  store float %28, float* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load float, float* %6, align 4
  %31 = fmul float -2.000000e+00, %30
  %32 = fptosi float %31 to i32
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @VectorMA(i32 %29, i32 %32, i64* %36, i32* %41)
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @VectorScale(i32* %47, i32 %50, i32* %55)
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %95

64:                                               ; preds = %2
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %71, 40
  br i1 %72, label %73, label %95

73:                                               ; preds = %64
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load double*, double** %75, align 8
  %77 = getelementptr inbounds double, double* %76, i64 2
  %78 = load double, double* %77, align 8
  %79 = fadd double %78, 1.000000e+00
  store double %79, double* %77, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load double*, double** %81, align 8
  %83 = call i32 @SnapVector(double* %82)
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  %87 = load double*, double** %86, align 8
  %88 = call i32 @G_SetOrigin(%struct.TYPE_16__* %84, double* %87)
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 8
  br label %124

95:                                               ; preds = %64, %2
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @VectorAdd(i32 %99, i64* %103, i32 %107)
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @VectorCopy(i32 %112, i32 %117)
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @level, i32 0, i32 1), align 4
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  store i32 %119, i32* %123, align 8
  br label %124

124:                                              ; preds = %95, %73
  ret void
}

declare dso_local i32 @BG_EvaluateTrajectoryDelta(%struct.TYPE_11__*, i32, i32) #1

declare dso_local float @DotProduct(i32, i64*) #1

declare dso_local i32 @VectorMA(i32, i32, i64*, i32*) #1

declare dso_local i32 @VectorScale(i32*, i32, i32*) #1

declare dso_local i32 @SnapVector(double*) #1

declare dso_local i32 @G_SetOrigin(%struct.TYPE_16__*, double*) #1

declare dso_local i32 @VectorAdd(i32, i64*, i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
