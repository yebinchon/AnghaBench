; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_ents.c_CG_EntityEffects.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_ents.c_CG_EntityEffects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i32, i32 }

@ET_SPEAKER = common dso_local global i64 0, align 8
@vec3_origin = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @CG_EntityEffects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_EntityEffects(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = call i32 @CG_SetEntitySoundPosition(%struct.TYPE_7__* %8)
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %59

15:                                               ; preds = %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ET_SPEAKER, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %15
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @vec3_origin, align 4
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 0), align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %31, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @trap_S_AddLoopingSound(i32 %26, i32 %29, i32 %30, i32 %38)
  br label %58

40:                                               ; preds = %15
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @vec3_origin, align 4
  %49 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 0), align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %49, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @trap_S_AddRealLoopingSound(i32 %44, i32 %47, i32 %48, i32 %56)
  br label %58

58:                                               ; preds = %40, %22
  br label %59

59:                                               ; preds = %58, %1
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %105

65:                                               ; preds = %59
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = and i32 %70, 255
  %72 = sitofp i32 %71 to float
  %73 = fpext float %72 to double
  %74 = fdiv double %73, 2.550000e+02
  %75 = fptrunc double %74 to float
  store float %75, float* %5, align 4
  %76 = load i32, i32* %3, align 4
  %77 = ashr i32 %76, 8
  %78 = and i32 %77, 255
  %79 = sitofp i32 %78 to float
  %80 = fpext float %79 to double
  %81 = fdiv double %80, 2.550000e+02
  %82 = fptrunc double %81 to float
  store float %82, float* %6, align 4
  %83 = load i32, i32* %3, align 4
  %84 = ashr i32 %83, 16
  %85 = and i32 %84, 255
  %86 = sitofp i32 %85 to float
  %87 = fpext float %86 to double
  %88 = fdiv double %87, 2.550000e+02
  %89 = fptrunc double %88 to float
  store float %89, float* %7, align 4
  %90 = load i32, i32* %3, align 4
  %91 = ashr i32 %90, 24
  %92 = and i32 %91, 255
  %93 = sitofp i32 %92 to float
  %94 = fpext float %93 to double
  %95 = fmul double %94, 4.000000e+00
  %96 = fptrunc double %95 to float
  store float %96, float* %4, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load float, float* %4, align 4
  %101 = load float, float* %5, align 4
  %102 = load float, float* %6, align 4
  %103 = load float, float* %7, align 4
  %104 = call i32 @trap_R_AddLightToScene(i32 %99, float %100, float %101, float %102, float %103)
  br label %105

105:                                              ; preds = %65, %59
  ret void
}

declare dso_local i32 @CG_SetEntitySoundPosition(%struct.TYPE_7__*) #1

declare dso_local i32 @trap_S_AddLoopingSound(i32, i32, i32, i32) #1

declare dso_local i32 @trap_S_AddRealLoopingSound(i32, i32, i32, i32) #1

declare dso_local i32 @trap_R_AddLightToScene(i32, float, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
