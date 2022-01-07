; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_players.c_CG_SwingAngles.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_players.c_CG_SwingAngles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { float }

@qtrue = common dso_local global i64 0, align 8
@cg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@qfalse = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float, float, float, float, float*, i64*)* @CG_SwingAngles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_SwingAngles(float %0, float %1, float %2, float %3, float* %4, i64* %5) #0 {
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  store float %0, float* %7, align 4
  store float %1, float* %8, align 4
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store float* %4, float** %11, align 8
  store i64* %5, i64** %12, align 8
  %16 = load i64*, i64** %12, align 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %6
  %20 = load float*, float** %11, align 8
  %21 = load float, float* %20, align 4
  %22 = load float, float* %7, align 4
  %23 = call float @AngleSubtract(float %21, float %22)
  store float %23, float* %13, align 4
  %24 = load float, float* %13, align 4
  %25 = load float, float* %8, align 4
  %26 = fcmp ogt float %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %19
  %28 = load float, float* %13, align 4
  %29 = load float, float* %8, align 4
  %30 = fneg float %29
  %31 = fcmp olt float %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27, %19
  %33 = load i64, i64* @qtrue, align 8
  %34 = load i64*, i64** %12, align 8
  store i64 %33, i64* %34, align 8
  br label %35

35:                                               ; preds = %32, %27
  br label %36

36:                                               ; preds = %35, %6
  %37 = load i64*, i64** %12, align 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  br label %138

41:                                               ; preds = %36
  %42 = load float, float* %7, align 4
  %43 = load float*, float** %11, align 8
  %44 = load float, float* %43, align 4
  %45 = call float @AngleSubtract(float %42, float %44)
  store float %45, float* %13, align 4
  %46 = load float, float* %13, align 4
  %47 = call float @fabs(float %46)
  store float %47, float* %15, align 4
  %48 = load float, float* %15, align 4
  %49 = fpext float %48 to double
  %50 = load float, float* %8, align 4
  %51 = fpext float %50 to double
  %52 = fmul double %51, 5.000000e-01
  %53 = fcmp olt double %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  store float 5.000000e-01, float* %15, align 4
  br label %62

55:                                               ; preds = %41
  %56 = load float, float* %15, align 4
  %57 = load float, float* %8, align 4
  %58 = fcmp olt float %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store float 1.000000e+00, float* %15, align 4
  br label %61

60:                                               ; preds = %55
  store float 2.000000e+00, float* %15, align 4
  br label %61

61:                                               ; preds = %60, %59
  br label %62

62:                                               ; preds = %61, %54
  %63 = load float, float* %13, align 4
  %64 = fcmp oge float %63, 0.000000e+00
  br i1 %64, label %65, label %85

65:                                               ; preds = %62
  %66 = load float, float* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cg, i32 0, i32 0), align 4
  %67 = load float, float* %15, align 4
  %68 = fmul float %66, %67
  %69 = load float, float* %10, align 4
  %70 = fmul float %68, %69
  store float %70, float* %14, align 4
  %71 = load float, float* %14, align 4
  %72 = load float, float* %13, align 4
  %73 = fcmp oge float %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = load float, float* %13, align 4
  store float %75, float* %14, align 4
  %76 = load i64, i64* @qfalse, align 8
  %77 = load i64*, i64** %12, align 8
  store i64 %76, i64* %77, align 8
  br label %78

78:                                               ; preds = %74, %65
  %79 = load float*, float** %11, align 8
  %80 = load float, float* %79, align 4
  %81 = load float, float* %14, align 4
  %82 = fadd float %80, %81
  %83 = call float @AngleMod(float %82)
  %84 = load float*, float** %11, align 8
  store float %83, float* %84, align 4
  br label %110

85:                                               ; preds = %62
  %86 = load float, float* %13, align 4
  %87 = fcmp olt float %86, 0.000000e+00
  br i1 %87, label %88, label %109

88:                                               ; preds = %85
  %89 = load float, float* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cg, i32 0, i32 0), align 4
  %90 = load float, float* %15, align 4
  %91 = fmul float %89, %90
  %92 = load float, float* %10, align 4
  %93 = fneg float %92
  %94 = fmul float %91, %93
  store float %94, float* %14, align 4
  %95 = load float, float* %14, align 4
  %96 = load float, float* %13, align 4
  %97 = fcmp ole float %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %88
  %99 = load float, float* %13, align 4
  store float %99, float* %14, align 4
  %100 = load i64, i64* @qfalse, align 8
  %101 = load i64*, i64** %12, align 8
  store i64 %100, i64* %101, align 8
  br label %102

102:                                              ; preds = %98, %88
  %103 = load float*, float** %11, align 8
  %104 = load float, float* %103, align 4
  %105 = load float, float* %14, align 4
  %106 = fadd float %104, %105
  %107 = call float @AngleMod(float %106)
  %108 = load float*, float** %11, align 8
  store float %107, float* %108, align 4
  br label %109

109:                                              ; preds = %102, %85
  br label %110

110:                                              ; preds = %109, %78
  %111 = load float, float* %7, align 4
  %112 = load float*, float** %11, align 8
  %113 = load float, float* %112, align 4
  %114 = call float @AngleSubtract(float %111, float %113)
  store float %114, float* %13, align 4
  %115 = load float, float* %13, align 4
  %116 = load float, float* %9, align 4
  %117 = fcmp ogt float %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %110
  %119 = load float, float* %7, align 4
  %120 = load float, float* %9, align 4
  %121 = fsub float %120, 1.000000e+00
  %122 = fsub float %119, %121
  %123 = call float @AngleMod(float %122)
  %124 = load float*, float** %11, align 8
  store float %123, float* %124, align 4
  br label %138

125:                                              ; preds = %110
  %126 = load float, float* %13, align 4
  %127 = load float, float* %9, align 4
  %128 = fneg float %127
  %129 = fcmp olt float %126, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load float, float* %7, align 4
  %132 = load float, float* %9, align 4
  %133 = fsub float %132, 1.000000e+00
  %134 = fadd float %131, %133
  %135 = call float @AngleMod(float %134)
  %136 = load float*, float** %11, align 8
  store float %135, float* %136, align 4
  br label %137

137:                                              ; preds = %130, %125
  br label %138

138:                                              ; preds = %40, %137, %118
  ret void
}

declare dso_local float @AngleSubtract(float, float) #1

declare dso_local float @fabs(float) #1

declare dso_local float @AngleMod(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
