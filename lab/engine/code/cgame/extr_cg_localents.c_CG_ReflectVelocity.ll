; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_localents.c_CG_ReflectVelocity.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_localents.c_CG_ReflectVelocity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i64, i32 }
%struct.TYPE_8__ = type { i64* }

@cg = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@TR_STATIONARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_ReflectVelocity(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 0), align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 1), align 4
  %10 = sub nsw i32 %8, %9
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 1), align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = mul nsw i32 %11, %14
  %16 = add nsw i32 %10, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @BG_EvaluateTrajectoryDelta(%struct.TYPE_12__* %18, i32 %19, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = call float @DotProduct(i32 %22, i64* %26)
  store float %27, float* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load float, float* %6, align 4
  %30 = fmul float -2.000000e+00, %29
  %31 = fptosi float %30 to i32
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @VectorMA(i32 %28, i32 %31, i64* %35, i32* %39)
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @VectorScale(i32* %44, i32 %47, i32* %51)
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @VectorCopy(i32 %55, i32 %59)
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 0), align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %102, label %69

69:                                               ; preds = %2
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %107

77:                                               ; preds = %69
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %83, 40
  br i1 %84, label %102, label %85

85:                                               ; preds = %77
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 1), align 4
  %93 = sub nsw i32 0, %92
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %93, %99
  %101 = icmp slt i32 %91, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %85, %77, %2
  %103 = load i32, i32* @TR_STATIONARY, align 4
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 2
  store i32 %103, i32* %106, align 4
  br label %108

107:                                              ; preds = %85, %69
  br label %108

108:                                              ; preds = %107, %102
  ret void
}

declare dso_local i32 @BG_EvaluateTrajectoryDelta(%struct.TYPE_12__*, i32, i32) #1

declare dso_local float @DotProduct(i32, i64*) #1

declare dso_local i32 @VectorMA(i32, i32, i64*, i32*) #1

declare dso_local i32 @VectorScale(i32*, i32, i32*) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
