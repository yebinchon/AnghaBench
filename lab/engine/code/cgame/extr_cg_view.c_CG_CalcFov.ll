; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_view.c_CG_CalcFov.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_view.c_CG_CalcFov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { double, float, i32, %struct.TYPE_8__, i64, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { float, float, float, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { float }
%struct.TYPE_10__ = type { float }

@cg = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@PM_INTERMISSION = common dso_local global i64 0, align 8
@cgs = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@DF_FIXED_FOV = common dso_local global i32 0, align 4
@cg_fov = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@cg_zoomFov = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@ZOOM_TIME = common dso_local global i64 0, align 8
@M_PI = common dso_local global float 0.000000e+00, align 4
@CONTENTS_WATER = common dso_local global i32 0, align 4
@CONTENTS_SLIME = common dso_local global i32 0, align 4
@CONTENTS_LAVA = common dso_local global i32 0, align 4
@WAVE_FREQUENCY = common dso_local global double 0.000000e+00, align 8
@WAVE_AMPLITUDE = common dso_local global float 0.000000e+00, align 4
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CG_CalcFov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CG_CalcFov() #0 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 5, i32 0), align 8
  %11 = load i64, i64* @PM_INTERMISSION, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  store float 9.000000e+01, float* %5, align 4
  br label %91

14:                                               ; preds = %0
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 0), align 4
  %16 = load i32, i32* @DF_FIXED_FOV, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store float 9.000000e+01, float* %5, align 4
  br label %31

20:                                               ; preds = %14
  %21 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg_fov, i32 0, i32 0), align 4
  store float %21, float* %5, align 4
  %22 = load float, float* %5, align 4
  %23 = fcmp olt float %22, 1.000000e+00
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store float 1.000000e+00, float* %5, align 4
  br label %30

25:                                               ; preds = %20
  %26 = load float, float* %5, align 4
  %27 = fcmp ogt float %26, 1.600000e+02
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store float 1.600000e+02, float* %5, align 4
  br label %29

29:                                               ; preds = %28, %25
  br label %30

30:                                               ; preds = %29, %24
  br label %31

31:                                               ; preds = %30, %19
  %32 = load float, float* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg_zoomFov, i32 0, i32 0), align 4
  store float %32, float* %7, align 4
  %33 = load float, float* %7, align 4
  %34 = fcmp olt float %33, 1.000000e+00
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store float 1.000000e+00, float* %7, align 4
  br label %41

36:                                               ; preds = %31
  %37 = load float, float* %7, align 4
  %38 = fcmp ogt float %37, 1.600000e+02
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store float 1.600000e+02, float* %7, align 4
  br label %40

40:                                               ; preds = %39, %36
  br label %41

41:                                               ; preds = %40, %35
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 4), align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %41
  %45 = load double, double* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0), align 8
  %46 = load float, float* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 1), align 8
  %47 = fpext float %46 to double
  %48 = fsub double %45, %47
  %49 = load i64, i64* @ZOOM_TIME, align 8
  %50 = sitofp i64 %49 to float
  %51 = fpext float %50 to double
  %52 = fdiv double %48, %51
  %53 = fptrunc double %52 to float
  store float %53, float* %8, align 4
  %54 = load float, float* %8, align 4
  %55 = fpext float %54 to double
  %56 = fcmp ogt double %55, 1.000000e+00
  br i1 %56, label %57, label %59

57:                                               ; preds = %44
  %58 = load float, float* %7, align 4
  store float %58, float* %5, align 4
  br label %67

59:                                               ; preds = %44
  %60 = load float, float* %5, align 4
  %61 = load float, float* %8, align 4
  %62 = load float, float* %7, align 4
  %63 = load float, float* %5, align 4
  %64 = fsub float %62, %63
  %65 = fmul float %61, %64
  %66 = fadd float %60, %65
  store float %66, float* %5, align 4
  br label %67

67:                                               ; preds = %59, %57
  br label %90

68:                                               ; preds = %41
  %69 = load double, double* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0), align 8
  %70 = load float, float* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 1), align 8
  %71 = fpext float %70 to double
  %72 = fsub double %69, %71
  %73 = load i64, i64* @ZOOM_TIME, align 8
  %74 = sitofp i64 %73 to float
  %75 = fpext float %74 to double
  %76 = fdiv double %72, %75
  %77 = fptrunc double %76 to float
  store float %77, float* %8, align 4
  %78 = load float, float* %8, align 4
  %79 = fpext float %78 to double
  %80 = fcmp ole double %79, 1.000000e+00
  br i1 %80, label %81, label %89

81:                                               ; preds = %68
  %82 = load float, float* %7, align 4
  %83 = load float, float* %8, align 4
  %84 = load float, float* %5, align 4
  %85 = load float, float* %7, align 4
  %86 = fsub float %84, %85
  %87 = fmul float %83, %86
  %88 = fadd float %82, %87
  store float %88, float* %5, align 4
  br label %89

89:                                               ; preds = %81, %68
  br label %90

90:                                               ; preds = %89, %67
  br label %91

91:                                               ; preds = %90, %13
  %92 = load float, float* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 3, i32 0), align 8
  %93 = load float, float* %5, align 4
  %94 = fdiv float %93, 3.600000e+02
  %95 = load float, float* @M_PI, align 4
  %96 = fmul float %94, %95
  %97 = call float @tan(float %96)
  %98 = fdiv float %92, %97
  store float %98, float* %1, align 4
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 3, i32 4), align 8
  %100 = load float, float* %1, align 4
  %101 = call float @atan2(i32 %99, float %100)
  store float %101, float* %6, align 4
  %102 = load float, float* %6, align 4
  %103 = fmul float %102, 3.600000e+02
  %104 = load float, float* @M_PI, align 4
  %105 = fdiv float %103, %104
  store float %105, float* %6, align 4
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 3, i32 3), align 4
  %107 = call i32 @CG_PointContents(i32 %106, i32 -1)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @CONTENTS_WATER, align 4
  %110 = load i32, i32* @CONTENTS_SLIME, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @CONTENTS_LAVA, align 4
  %113 = or i32 %111, %112
  %114 = and i32 %108, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %137

116:                                              ; preds = %91
  %117 = load double, double* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0), align 8
  %118 = fdiv double %117, 1.000000e+03
  %119 = load double, double* @WAVE_FREQUENCY, align 8
  %120 = fmul double %118, %119
  %121 = load float, float* @M_PI, align 4
  %122 = fpext float %121 to double
  %123 = fmul double %120, %122
  %124 = fmul double %123, 2.000000e+00
  %125 = fptrunc double %124 to float
  store float %125, float* %2, align 4
  %126 = load float, float* @WAVE_AMPLITUDE, align 4
  %127 = load float, float* %2, align 4
  %128 = call float @sin(float %127)
  %129 = fmul float %126, %128
  store float %129, float* %3, align 4
  %130 = load float, float* %3, align 4
  %131 = load float, float* %5, align 4
  %132 = fadd float %131, %130
  store float %132, float* %5, align 4
  %133 = load float, float* %3, align 4
  %134 = load float, float* %6, align 4
  %135 = fsub float %134, %133
  store float %135, float* %6, align 4
  %136 = load i32, i32* @qtrue, align 4
  store i32 %136, i32* %9, align 4
  br label %139

137:                                              ; preds = %91
  %138 = load i32, i32* @qfalse, align 4
  store i32 %138, i32* %9, align 4
  br label %139

139:                                              ; preds = %137, %116
  %140 = load float, float* %5, align 4
  store float %140, float* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 3, i32 1), align 4
  %141 = load float, float* %6, align 4
  store float %141, float* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 3, i32 2), align 8
  %142 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 4), align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %139
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 2), align 4
  br label %150

145:                                              ; preds = %139
  %146 = load float, float* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 3, i32 2), align 8
  %147 = fpext float %146 to double
  %148 = fdiv double %147, 7.500000e+01
  %149 = fptosi double %148 to i32
  store i32 %149, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 2), align 4
  br label %150

150:                                              ; preds = %145, %144
  %151 = load i32, i32* %9, align 4
  ret i32 %151
}

declare dso_local float @tan(float) #1

declare dso_local float @atan2(i32, float) #1

declare dso_local i32 @CG_PointContents(i32, i32) #1

declare dso_local float @sin(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
