; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_tetrahedron.c_TH_PlaneFromPoints.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_tetrahedron.c_TH_PlaneFromPoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { float* }

@thworld = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TH_PlaneFromPoints(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @thworld, i32 0, i32 0), align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load float*, float** %18, align 8
  store float* %19, float** %11, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @thworld, i32 0, i32 0), align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load float*, float** %24, align 8
  store float* %25, float** %12, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @thworld, i32 0, i32 0), align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load float*, float** %30, align 8
  store float* %31, float** %13, align 8
  %32 = load float*, float** %11, align 8
  %33 = load float*, float** %12, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @VectorSubtract(float* %32, float* %33, i32 %34)
  %36 = load float*, float** %13, align 8
  %37 = load float*, float** %12, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @VectorSubtract(float* %36, float* %37, i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @CrossProduct(i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @VectorNormalize(i32 %44)
  %46 = load float*, float** %11, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @DotProduct(float* %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @TH_FindFloatPlane(i32 %49, i32 %50)
  ret i32 %51
}

declare dso_local i32 @VectorSubtract(float*, float*, i32) #1

declare dso_local i32 @CrossProduct(i32, i32, i32) #1

declare dso_local i32 @VectorNormalize(i32) #1

declare dso_local i32 @DotProduct(float*, i32) #1

declare dso_local i32 @TH_FindFloatPlane(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
