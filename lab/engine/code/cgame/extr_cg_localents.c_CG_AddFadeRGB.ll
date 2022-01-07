; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_localents.c_CG_AddFadeRGB.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_localents.c_CG_AddFadeRGB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { float }
%struct.TYPE_7__ = type { float, float, float*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { float* }

@cg = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_AddFadeRGB(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca float, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load float, float* %8, align 8
  %10 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 4
  %11 = fsub float %9, %10
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load float, float* %13, align 4
  %15 = fmul float %11, %14
  store float %15, float* %4, align 4
  %16 = load float, float* %4, align 4
  %17 = fmul float %16, 2.550000e+02
  store float %17, float* %4, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load float*, float** %19, align 8
  %21 = getelementptr inbounds float, float* %20, i64 0
  %22 = load float, float* %21, align 4
  %23 = load float, float* %4, align 4
  %24 = fmul float %22, %23
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load float*, float** %26, align 8
  %28 = getelementptr inbounds float, float* %27, i64 0
  store float %24, float* %28, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load float*, float** %30, align 8
  %32 = getelementptr inbounds float, float* %31, i64 1
  %33 = load float, float* %32, align 4
  %34 = load float, float* %4, align 4
  %35 = fmul float %33, %34
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load float*, float** %37, align 8
  %39 = getelementptr inbounds float, float* %38, i64 1
  store float %35, float* %39, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load float*, float** %41, align 8
  %43 = getelementptr inbounds float, float* %42, i64 2
  %44 = load float, float* %43, align 4
  %45 = load float, float* %4, align 4
  %46 = fmul float %44, %45
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load float*, float** %48, align 8
  %50 = getelementptr inbounds float, float* %49, i64 2
  store float %46, float* %50, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load float*, float** %52, align 8
  %54 = getelementptr inbounds float, float* %53, i64 3
  %55 = load float, float* %54, align 4
  %56 = load float, float* %4, align 4
  %57 = fmul float %55, %56
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load float*, float** %59, align 8
  %61 = getelementptr inbounds float, float* %60, i64 3
  store float %57, float* %61, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_6__* %62)
  ret void
}

declare dso_local i32 @trap_R_AddRefEntityToScene(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
