; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_aas_map.c_AAS_TransformPlane.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_aas_map.c_AAS_TransformPlane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { float, i32 }

@mapplanes = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_TransformPlane(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mapplanes, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @VectorCopy(i32 %15, i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %8, i64 0, i64 0
  %20 = bitcast [3 x float]* %19 to float**
  %21 = call i32 @CreateRotationMatrix(i32 %18, float** %20)
  %22 = load i32, i32* %9, align 4
  %23 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %8, i64 0, i64 0
  %24 = bitcast [3 x float]* %23 to float**
  %25 = call i32 @RotatePoint(i32 %22, float** %24)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mapplanes, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load float, float* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call float @DotProduct(i32 %32, i32 %33)
  %35 = fadd float %31, %34
  store float %35, float* %7, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load float, float* %7, align 4
  %38 = call i32 @FindFloatPlane(i32 %36, float %37)
  ret i32 %38
}

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @CreateRotationMatrix(i32, float**) #1

declare dso_local i32 @RotatePoint(i32, float**) #1

declare dso_local float @DotProduct(i32, i32) #1

declare dso_local i32 @FindFloatPlane(i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
