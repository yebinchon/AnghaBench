; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_localents.c_CG_AddSpriteExplosion.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_localents.c_CG_AddSpriteExplosion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { float }
%struct.TYPE_7__ = type { float, float, float, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32, i32, i32 }

@cg = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@RT_SPRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @CG_AddSpriteExplosion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_AddSpriteExplosion(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  %8 = bitcast %struct.TYPE_6__* %3 to i8*
  %9 = bitcast %struct.TYPE_6__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 24, i1 false)
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load float, float* %11, align 8
  %13 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 4
  %14 = fsub float %12, %13
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load float, float* %16, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load float, float* %19, align 4
  %21 = fsub float %17, %20
  %22 = fdiv float %14, %21
  store float %22, float* %4, align 4
  %23 = load float, float* %4, align 4
  %24 = fcmp ogt float %23, 1.000000e+00
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store float 1.000000e+00, float* %4, align 4
  br label %26

26:                                               ; preds = %25, %1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 255, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 255, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  store i32 255, i32* %35, align 4
  %36 = load float, float* %4, align 4
  %37 = fmul float 2.550000e+02, %36
  %38 = fpext float %37 to double
  %39 = fmul double %38, 3.300000e-01
  %40 = fptosi double %39 to i32
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @RT_SPRITE, align 4
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  store i32 %44, i32* %45, align 8
  %46 = load float, float* %4, align 4
  %47 = fpext float %46 to double
  %48 = fsub double 1.000000e+00, %47
  %49 = fmul double 4.200000e+01, %48
  %50 = fadd double %49, 3.000000e+01
  %51 = fptosi double %50 to i32
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i32 %51, i32* %52, align 8
  %53 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_6__* %3)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load float, float* %55, align 8
  %57 = fcmp une float %56, 0.000000e+00
  br i1 %57, label %58, label %108

58:                                               ; preds = %26
  %59 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load float, float* %61, align 4
  %63 = fsub float %59, %62
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load float, float* %65, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load float, float* %68, align 4
  %70 = fsub float %66, %69
  %71 = fdiv float %63, %70
  store float %71, float* %5, align 4
  %72 = load float, float* %5, align 4
  %73 = fpext float %72 to double
  %74 = fcmp olt double %73, 5.000000e-01
  br i1 %74, label %75, label %76

75:                                               ; preds = %58
  store float 1.000000e+00, float* %5, align 4
  br label %83

76:                                               ; preds = %58
  %77 = load float, float* %5, align 4
  %78 = fpext float %77 to double
  %79 = fsub double %78, 5.000000e-01
  %80 = fmul double %79, 2.000000e+00
  %81 = fsub double 1.000000e+00, %80
  %82 = fptrunc double %81 to float
  store float %82, float* %5, align 4
  br label %83

83:                                               ; preds = %76, %75
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  %86 = load float, float* %85, align 8
  %87 = load float, float* %5, align 4
  %88 = fmul float %86, %87
  store float %88, float* %5, align 4
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load float, float* %5, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @trap_R_AddLightToScene(i32 %90, float %91, i32 %96, i32 %101, i32 %106)
  br label %108

108:                                              ; preds = %83, %26
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @trap_R_AddRefEntityToScene(%struct.TYPE_6__*) #2

declare dso_local i32 @trap_R_AddLightToScene(i32, float, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
