; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_team.c_SelectCTFSpawnPoint.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_team.c_SelectCTFSpawnPoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { float, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@vec3_origin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @SelectCTFSpawnPoint(i32 %0, i32 %1, float* %2, float* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca float, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store float* %2, float** %9, align 8
  store float* %3, float** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %11, align 4
  %17 = call %struct.TYPE_7__* @SelectRandomTeamSpawnPoint(i32 %14, i32 %15, i32 %16)
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %12, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @vec3_origin, align 4
  %22 = load float*, float** %9, align 8
  %23 = load float*, float** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call %struct.TYPE_7__* @SelectSpawnPoint(i32 %21, float* %22, float* %23, i32 %24)
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %6, align 8
  br label %66

26:                                               ; preds = %5
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load float*, float** %9, align 8
  %32 = call i32 @VectorCopy(i32 %30, float* %31)
  %33 = load float*, float** %9, align 8
  %34 = getelementptr inbounds float, float* %33, i64 2
  %35 = load float, float* %34, align 4
  %36 = fadd float %35, 9.000000e+00
  store float %36, float* %34, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load float*, float** %10, align 8
  %42 = call i32 @VectorCopy(i32 %40, float* %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load float, float* %44, align 4
  %46 = fcmp oeq float %45, 3.600000e+02
  br i1 %46, label %47, label %52

47:                                               ; preds = %26
  %48 = call float (...) @random()
  %49 = fmul float %48, 3.600000e+02
  %50 = load float*, float** %10, align 8
  %51 = getelementptr inbounds float, float* %50, i64 1
  store float %49, float* %51, align 4
  br label %64

52:                                               ; preds = %26
  %53 = call float (...) @random()
  %54 = fsub float %53, 5.000000e-01
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load float, float* %56, align 4
  %58 = fmul float %54, %57
  store float %58, float* %13, align 4
  %59 = load float, float* %13, align 4
  %60 = load float*, float** %10, align 8
  %61 = getelementptr inbounds float, float* %60, i64 1
  %62 = load float, float* %61, align 4
  %63 = fadd float %62, %59
  store float %63, float* %61, align 4
  br label %64

64:                                               ; preds = %52, %47
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %65, %struct.TYPE_7__** %6, align 8
  br label %66

66:                                               ; preds = %64, %20
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  ret %struct.TYPE_7__* %67
}

declare dso_local %struct.TYPE_7__* @SelectRandomTeamSpawnPoint(i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @SelectSpawnPoint(i32, float*, float*, i32) #1

declare dso_local i32 @VectorCopy(i32, float*) #1

declare dso_local float @random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
