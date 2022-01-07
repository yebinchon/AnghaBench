; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_bg_pmove.c_PM_Friction.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_bg_pmove.c_PM_Friction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { float*, i32, i64, i64* }
%struct.TYPE_7__ = type { float, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32 }

@pm = common dso_local global %struct.TYPE_8__* null, align 8
@pml = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@SURF_SLICK = common dso_local global i32 0, align 4
@PMF_TIME_KNOCKBACK = common dso_local global i32 0, align 4
@pm_stopspeed = common dso_local global float 0.000000e+00, align 4
@pm_friction = common dso_local global float 0.000000e+00, align 4
@pm_waterfriction = common dso_local global float 0.000000e+00, align 4
@PW_FLIGHT = common dso_local global i64 0, align 8
@pm_flightfriction = common dso_local global float 0.000000e+00, align 4
@PM_SPECTATOR = common dso_local global i64 0, align 8
@pm_spectatorfriction = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PM_Friction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PM_Friction() #0 {
  %1 = alloca i64*, align 8
  %2 = alloca float*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load float*, float** %10, align 8
  store float* %11, float** %2, align 8
  %12 = load float*, float** %2, align 8
  %13 = load i64*, i64** %1, align 8
  %14 = call i32 @VectorCopy(float* %12, i64* %13)
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pml, i32 0, i32 2), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = load i64*, i64** %1, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 2
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %17, %0
  %21 = load i64*, i64** %1, align 8
  %22 = call float @VectorLength(i64* %21)
  store float %22, float* %3, align 4
  %23 = load float, float* %3, align 4
  %24 = fcmp olt float %23, 1.000000e+00
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load float*, float** %2, align 8
  %27 = getelementptr inbounds float, float* %26, i64 0
  store float 0.000000e+00, float* %27, align 4
  %28 = load float*, float** %2, align 8
  %29 = getelementptr inbounds float, float* %28, i64 1
  store float 0.000000e+00, float* %29, align 4
  br label %155

30:                                               ; preds = %20
  store float 0.000000e+00, float* %6, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sle i32 %33, 1
  br i1 %34, label %35, label %71

35:                                               ; preds = %30
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pml, i32 0, i32 2), align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %70

38:                                               ; preds = %35
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pml, i32 0, i32 1, i32 0), align 4
  %40 = load i32, i32* @SURF_SLICK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %70, label %43

43:                                               ; preds = %38
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PMF_TIME_KNOCKBACK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %69, label %52

52:                                               ; preds = %43
  %53 = load float, float* %3, align 4
  %54 = load float, float* @pm_stopspeed, align 4
  %55 = fcmp olt float %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load float, float* @pm_stopspeed, align 4
  br label %60

58:                                               ; preds = %52
  %59 = load float, float* %3, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi float [ %57, %56 ], [ %59, %58 ]
  store float %61, float* %5, align 4
  %62 = load float, float* %5, align 4
  %63 = load float, float* @pm_friction, align 4
  %64 = fmul float %62, %63
  %65 = load float, float* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pml, i32 0, i32 0), align 8
  %66 = fmul float %64, %65
  %67 = load float, float* %6, align 4
  %68 = fadd float %67, %66
  store float %68, float* %6, align 4
  br label %69

69:                                               ; preds = %60, %43
  br label %70

70:                                               ; preds = %69, %38, %35
  br label %71

71:                                               ; preds = %70, %30
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %71
  %77 = load float, float* %3, align 4
  %78 = load float, float* @pm_waterfriction, align 4
  %79 = fmul float %77, %78
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sitofp i32 %82 to float
  %84 = fmul float %79, %83
  %85 = load float, float* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pml, i32 0, i32 0), align 8
  %86 = fmul float %84, %85
  %87 = load float, float* %6, align 4
  %88 = fadd float %87, %86
  store float %88, float* %6, align 4
  br label %89

89:                                               ; preds = %76, %71
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 3
  %94 = load i64*, i64** %93, align 8
  %95 = load i64, i64* @PW_FLIGHT, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %89
  %100 = load float, float* %3, align 4
  %101 = load float, float* @pm_flightfriction, align 4
  %102 = fmul float %100, %101
  %103 = load float, float* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pml, i32 0, i32 0), align 8
  %104 = fmul float %102, %103
  %105 = load float, float* %6, align 4
  %106 = fadd float %105, %104
  store float %106, float* %6, align 4
  br label %107

107:                                              ; preds = %99, %89
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @PM_SPECTATOR, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %107
  %116 = load float, float* %3, align 4
  %117 = load float, float* @pm_spectatorfriction, align 4
  %118 = fmul float %116, %117
  %119 = load float, float* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pml, i32 0, i32 0), align 8
  %120 = fmul float %118, %119
  %121 = load float, float* %6, align 4
  %122 = fadd float %121, %120
  store float %122, float* %6, align 4
  br label %123

123:                                              ; preds = %115, %107
  %124 = load float, float* %3, align 4
  %125 = load float, float* %6, align 4
  %126 = fsub float %124, %125
  store float %126, float* %4, align 4
  %127 = load float, float* %4, align 4
  %128 = fcmp olt float %127, 0.000000e+00
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  store float 0.000000e+00, float* %4, align 4
  br label %130

130:                                              ; preds = %129, %123
  %131 = load float, float* %3, align 4
  %132 = load float, float* %4, align 4
  %133 = fdiv float %132, %131
  store float %133, float* %4, align 4
  %134 = load float*, float** %2, align 8
  %135 = getelementptr inbounds float, float* %134, i64 0
  %136 = load float, float* %135, align 4
  %137 = load float, float* %4, align 4
  %138 = fmul float %136, %137
  %139 = load float*, float** %2, align 8
  %140 = getelementptr inbounds float, float* %139, i64 0
  store float %138, float* %140, align 4
  %141 = load float*, float** %2, align 8
  %142 = getelementptr inbounds float, float* %141, i64 1
  %143 = load float, float* %142, align 4
  %144 = load float, float* %4, align 4
  %145 = fmul float %143, %144
  %146 = load float*, float** %2, align 8
  %147 = getelementptr inbounds float, float* %146, i64 1
  store float %145, float* %147, align 4
  %148 = load float*, float** %2, align 8
  %149 = getelementptr inbounds float, float* %148, i64 2
  %150 = load float, float* %149, align 4
  %151 = load float, float* %4, align 4
  %152 = fmul float %150, %151
  %153 = load float*, float** %2, align 8
  %154 = getelementptr inbounds float, float* %153, i64 2
  store float %152, float* %154, align 4
  br label %155

155:                                              ; preds = %130, %25
  ret void
}

declare dso_local i32 @VectorCopy(float*, i64*) #1

declare dso_local float @VectorLength(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
