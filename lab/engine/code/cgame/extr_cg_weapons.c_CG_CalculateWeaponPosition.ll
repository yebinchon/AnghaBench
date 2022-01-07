; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_weapons.c_CG_CalculateWeaponPosition.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_weapons.c_CG_CalculateWeaponPosition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, float, float, double, i32, double, i32, double, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@cg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ROLL = common dso_local global i64 0, align 8
@YAW = common dso_local global i64 0, align 8
@PITCH = common dso_local global i64 0, align 8
@LAND_DEFLECT_TIME = common dso_local global i32 0, align 4
@LAND_RETURN_TIME = common dso_local global i32 0, align 4
@STEP_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*)* @CG_CalculateWeaponPosition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_CalculateWeaponPosition(float* %0, float* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  store float* %0, float** %3, align 8
  store float* %1, float** %4, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 9, i32 0), align 4
  %9 = load float*, float** %3, align 8
  %10 = call i32 @VectorCopy(i32 %8, float* %9)
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 8), align 8
  %12 = load float*, float** %4, align 8
  %13 = call i32 @VectorCopy(i32 %11, float* %12)
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 0), align 8
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load float, float* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 1), align 4
  %19 = fneg float %18
  store float %19, float* %5, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load float, float* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 1), align 4
  store float %21, float* %5, align 4
  br label %22

22:                                               ; preds = %20, %17
  %23 = load float, float* %5, align 4
  %24 = load float, float* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 2), align 8
  %25 = fmul float %23, %24
  %26 = fpext float %25 to double
  %27 = fmul double %26, 5.000000e-03
  %28 = load float*, float** %4, align 8
  %29 = load i64, i64* @ROLL, align 8
  %30 = getelementptr inbounds float, float* %28, i64 %29
  %31 = load float, float* %30, align 4
  %32 = fpext float %31 to double
  %33 = fadd double %32, %27
  %34 = fptrunc double %33 to float
  store float %34, float* %30, align 4
  %35 = load float, float* %5, align 4
  %36 = load float, float* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 2), align 8
  %37 = fmul float %35, %36
  %38 = fpext float %37 to double
  %39 = fmul double %38, 1.000000e-02
  %40 = load float*, float** %4, align 8
  %41 = load i64, i64* @YAW, align 8
  %42 = getelementptr inbounds float, float* %40, i64 %41
  %43 = load float, float* %42, align 4
  %44 = fpext float %43 to double
  %45 = fadd double %44, %39
  %46 = fptrunc double %45 to float
  store float %46, float* %42, align 4
  %47 = load float, float* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 1), align 4
  %48 = load float, float* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 2), align 8
  %49 = fmul float %47, %48
  %50 = fpext float %49 to double
  %51 = fmul double %50, 5.000000e-03
  %52 = load float*, float** %4, align 8
  %53 = load i64, i64* @PITCH, align 8
  %54 = getelementptr inbounds float, float* %52, i64 %53
  %55 = load float, float* %54, align 4
  %56 = fpext float %55 to double
  %57 = fadd double %56, %51
  %58 = fptrunc double %57 to float
  store float %58, float* %54, align 4
  %59 = load double, double* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 3), align 8
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 4), align 8
  %61 = sitofp i32 %60 to double
  %62 = fsub double %59, %61
  %63 = fptosi double %62 to i32
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @LAND_DEFLECT_TIME, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %22
  %68 = load double, double* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 5), align 8
  %69 = fmul double %68, 2.500000e-01
  %70 = load i32, i32* %6, align 4
  %71 = sitofp i32 %70 to double
  %72 = fmul double %69, %71
  %73 = load i32, i32* @LAND_DEFLECT_TIME, align 4
  %74 = sitofp i32 %73 to double
  %75 = fdiv double %72, %74
  %76 = load float*, float** %3, align 8
  %77 = getelementptr inbounds float, float* %76, i64 2
  %78 = load float, float* %77, align 4
  %79 = fpext float %78 to double
  %80 = fadd double %79, %75
  %81 = fptrunc double %80 to float
  store float %81, float* %77, align 4
  br label %108

82:                                               ; preds = %22
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @LAND_DEFLECT_TIME, align 4
  %85 = load i32, i32* @LAND_RETURN_TIME, align 4
  %86 = add nsw i32 %84, %85
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %107

88:                                               ; preds = %82
  %89 = load double, double* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 5), align 8
  %90 = fmul double %89, 2.500000e-01
  %91 = load i32, i32* @LAND_DEFLECT_TIME, align 4
  %92 = load i32, i32* @LAND_RETURN_TIME, align 4
  %93 = add nsw i32 %91, %92
  %94 = load i32, i32* %6, align 4
  %95 = sub nsw i32 %93, %94
  %96 = sitofp i32 %95 to double
  %97 = fmul double %90, %96
  %98 = load i32, i32* @LAND_RETURN_TIME, align 4
  %99 = sitofp i32 %98 to double
  %100 = fdiv double %97, %99
  %101 = load float*, float** %3, align 8
  %102 = getelementptr inbounds float, float* %101, i64 2
  %103 = load float, float* %102, align 4
  %104 = fpext float %103 to double
  %105 = fadd double %104, %100
  %106 = fptrunc double %105 to float
  store float %106, float* %102, align 4
  br label %107

107:                                              ; preds = %88, %82
  br label %108

108:                                              ; preds = %107, %67
  %109 = load float, float* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 1), align 4
  %110 = fadd float %109, 4.000000e+01
  store float %110, float* %5, align 4
  %111 = load double, double* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 3), align 8
  %112 = fmul double %111, 1.000000e-03
  %113 = call float @sin(double %112)
  store float %113, float* %7, align 4
  %114 = load float, float* %5, align 4
  %115 = load float, float* %7, align 4
  %116 = fmul float %114, %115
  %117 = fpext float %116 to double
  %118 = fmul double %117, 1.000000e-02
  %119 = load float*, float** %4, align 8
  %120 = load i64, i64* @ROLL, align 8
  %121 = getelementptr inbounds float, float* %119, i64 %120
  %122 = load float, float* %121, align 4
  %123 = fpext float %122 to double
  %124 = fadd double %123, %118
  %125 = fptrunc double %124 to float
  store float %125, float* %121, align 4
  %126 = load float, float* %5, align 4
  %127 = load float, float* %7, align 4
  %128 = fmul float %126, %127
  %129 = fpext float %128 to double
  %130 = fmul double %129, 1.000000e-02
  %131 = load float*, float** %4, align 8
  %132 = load i64, i64* @YAW, align 8
  %133 = getelementptr inbounds float, float* %131, i64 %132
  %134 = load float, float* %133, align 4
  %135 = fpext float %134 to double
  %136 = fadd double %135, %130
  %137 = fptrunc double %136 to float
  store float %137, float* %133, align 4
  %138 = load float, float* %5, align 4
  %139 = load float, float* %7, align 4
  %140 = fmul float %138, %139
  %141 = fpext float %140 to double
  %142 = fmul double %141, 1.000000e-02
  %143 = load float*, float** %4, align 8
  %144 = load i64, i64* @PITCH, align 8
  %145 = getelementptr inbounds float, float* %143, i64 %144
  %146 = load float, float* %145, align 4
  %147 = fpext float %146 to double
  %148 = fadd double %147, %142
  %149 = fptrunc double %148 to float
  store float %149, float* %145, align 4
  ret void
}

declare dso_local i32 @VectorCopy(i32, float*) #1

declare dso_local float @sin(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
