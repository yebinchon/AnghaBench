; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_scene.c_RE_AddDynamicLightToScene.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_scene.c_RE_AddDynamicLightToScene.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { float, float*, i32, i32 }

@tr = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@r_numdlights = common dso_local global i64 0, align 8
@MAX_DLIGHTS = common dso_local global i64 0, align 8
@glConfig = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@GLHW_RIVA128 = common dso_local global i64 0, align 8
@GLHW_PERMEDIA2 = common dso_local global i64 0, align 8
@backEndData = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RE_AddDynamicLightToScene(i32 %0, float %1, float %2, float %3, float %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %7, align 4
  store float %1, float* %8, align 4
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 0), align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %6
  br label %68

17:                                               ; preds = %6
  %18 = load i64, i64* @r_numdlights, align 8
  %19 = load i64, i64* @MAX_DLIGHTS, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %68

22:                                               ; preds = %17
  %23 = load float, float* %8, align 4
  %24 = fcmp ole float %23, 0.000000e+00
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %68

26:                                               ; preds = %22
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @glConfig, i32 0, i32 0), align 8
  %28 = load i64, i64* @GLHW_RIVA128, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @glConfig, i32 0, i32 0), align 8
  %32 = load i64, i64* @GLHW_PERMEDIA2, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %26
  br label %68

35:                                               ; preds = %30
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @backEndData, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i64, i64* @r_numdlights, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* @r_numdlights, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %39
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %13, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @VectorCopy(i32 %42, i32 %45)
  %47 = load float, float* %8, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store float %47, float* %49, align 8
  %50 = load float, float* %9, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load float*, float** %52, align 8
  %54 = getelementptr inbounds float, float* %53, i64 0
  store float %50, float* %54, align 4
  %55 = load float, float* %10, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load float*, float** %57, align 8
  %59 = getelementptr inbounds float, float* %58, i64 1
  store float %55, float* %59, align 4
  %60 = load float, float* %11, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load float*, float** %62, align 8
  %64 = getelementptr inbounds float, float* %63, i64 2
  store float %60, float* %64, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %35, %34, %25, %21, %16
  ret void
}

declare dso_local i32 @VectorCopy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
