; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawTeamBackground.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawTeamBackground.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { double }
%struct.TYPE_12__ = type { double }
%struct.TYPE_13__ = type { double }
%struct.TYPE_14__ = type { double }
%struct.TYPE_15__ = type { double }
%struct.TYPE_16__ = type { double }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@TEAM_RED = common dso_local global i32 0, align 4
@cg_redteam_r = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@cg_redteam_g = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@cg_redteam_b = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@TEAM_BLUE = common dso_local global i32 0, align 4
@cg_blueteam_r = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@cg_blueteam_g = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@cg_blueteam_b = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@cgs = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_DrawTeamBackground(i32 %0, i32 %1, i32 %2, i32 %3, float %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca double*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store float %4, float* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load float, float* %11, align 4
  %15 = fpext float %14 to double
  %16 = load double*, double** %13, align 8
  %17 = getelementptr inbounds double, double* %16, i64 3
  store double %15, double* %17, align 8
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* @TEAM_RED, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %6
  %22 = load double, double* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg_redteam_r, i32 0, i32 0), align 8
  %23 = fdiv double %22, 2.550000e+02
  %24 = load double*, double** %13, align 8
  %25 = getelementptr inbounds double, double* %24, i64 0
  store double %23, double* %25, align 8
  %26 = load double, double* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg_redteam_g, i32 0, i32 0), align 8
  %27 = fdiv double %26, 2.550000e+02
  %28 = load double*, double** %13, align 8
  %29 = getelementptr inbounds double, double* %28, i64 1
  store double %27, double* %29, align 8
  %30 = load double, double* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg_redteam_b, i32 0, i32 0), align 8
  %31 = fdiv double %30, 2.550000e+02
  %32 = load double*, double** %13, align 8
  %33 = getelementptr inbounds double, double* %32, i64 2
  store double %31, double* %33, align 8
  br label %53

34:                                               ; preds = %6
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @TEAM_BLUE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load double, double* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg_blueteam_r, i32 0, i32 0), align 8
  %40 = fdiv double %39, 2.550000e+02
  %41 = load double*, double** %13, align 8
  %42 = getelementptr inbounds double, double* %41, i64 0
  store double %40, double* %42, align 8
  %43 = load double, double* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg_blueteam_g, i32 0, i32 0), align 8
  %44 = fdiv double %43, 2.550000e+02
  %45 = load double*, double** %13, align 8
  %46 = getelementptr inbounds double, double* %45, i64 1
  store double %44, double* %46, align 8
  %47 = load double, double* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg_blueteam_b, i32 0, i32 0), align 8
  %48 = fdiv double %47, 2.550000e+02
  %49 = load double*, double** %13, align 8
  %50 = getelementptr inbounds double, double* %49, i64 2
  store double %48, double* %50, align 8
  br label %52

51:                                               ; preds = %34
  br label %63

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %21
  %54 = load double*, double** %13, align 8
  %55 = call i32 @trap_R_SetColor(double* %54)
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 0, i32 0), align 4
  %61 = call i32 @CG_DrawPic(i32 %56, i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = call i32 @trap_R_SetColor(double* null)
  br label %63

63:                                               ; preds = %53, %51
  ret void
}

declare dso_local i32 @trap_R_SetColor(double*) #1

declare dso_local i32 @CG_DrawPic(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
