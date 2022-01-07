; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_sky.c_MakeSkyVec.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_sky.c_MakeSkyVec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { double }

@MakeSkyVec.st_to_vec = internal global [6 x [3 x i32]] [[3 x i32] [i32 3, i32 -1, i32 2], [3 x i32] [i32 -3, i32 1, i32 2], [3 x i32] [i32 1, i32 3, i32 2], [3 x i32] [i32 -1, i32 -3, i32 2], [3 x i32] [i32 -2, i32 -1, i32 3], [3 x i32] [i32 2, i32 -1, i32 -3]], align 16
@backEnd = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@sky_min = common dso_local global float 0.000000e+00, align 4
@sky_max = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float, float, i32, float*, float*)* @MakeSkyVec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MakeSkyVec(float %0, float %1, i32 %2, float* %3, float* %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  store float %0, float* %6, align 4
  store float %1, float* %7, align 4
  store i32 %2, i32* %8, align 4
  store float* %3, float** %9, align 8
  store float* %4, float** %10, align 8
  %15 = load double, double* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @backEnd, i32 0, i32 0, i32 0), align 8
  %16 = fdiv double %15, 1.750000e+00
  %17 = fptrunc double %16 to float
  store float %17, float* %14, align 4
  %18 = load float, float* %6, align 4
  %19 = load float, float* %14, align 4
  %20 = fmul float %18, %19
  %21 = load float*, float** %11, align 8
  %22 = getelementptr inbounds float, float* %21, i64 0
  store float %20, float* %22, align 4
  %23 = load float, float* %7, align 4
  %24 = load float, float* %14, align 4
  %25 = fmul float %23, %24
  %26 = load float*, float** %11, align 8
  %27 = getelementptr inbounds float, float* %26, i64 1
  store float %25, float* %27, align 4
  %28 = load float, float* %14, align 4
  %29 = load float*, float** %11, align 8
  %30 = getelementptr inbounds float, float* %29, i64 2
  store float %28, float* %30, align 4
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %69, %5
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 3
  br i1 %33, label %34, label %72

34:                                               ; preds = %31
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [6 x [3 x i32]], [6 x [3 x i32]]* @MakeSkyVec.st_to_vec, i64 0, i64 %36
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %37, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %34
  %45 = load float*, float** %11, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sub nsw i32 0, %46
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %45, i64 %49
  %51 = load float, float* %50, align 4
  %52 = fneg float %51
  %53 = load float*, float** %10, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %53, i64 %55
  store float %52, float* %56, align 4
  br label %68

57:                                               ; preds = %34
  %58 = load float*, float** %11, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, float* %58, i64 %61
  %63 = load float, float* %62, align 4
  %64 = load float*, float** %10, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %64, i64 %66
  store float %63, float* %67, align 4
  br label %68

68:                                               ; preds = %57, %44
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %31

72:                                               ; preds = %31
  %73 = load float, float* %6, align 4
  %74 = fadd float %73, 1.000000e+00
  %75 = fpext float %74 to double
  %76 = fmul double %75, 5.000000e-01
  %77 = fptrunc double %76 to float
  store float %77, float* %6, align 4
  %78 = load float, float* %7, align 4
  %79 = fadd float %78, 1.000000e+00
  %80 = fpext float %79 to double
  %81 = fmul double %80, 5.000000e-01
  %82 = fptrunc double %81 to float
  store float %82, float* %7, align 4
  %83 = load float, float* %6, align 4
  %84 = load float, float* @sky_min, align 4
  %85 = fcmp olt float %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %72
  %87 = load float, float* @sky_min, align 4
  store float %87, float* %6, align 4
  br label %95

88:                                               ; preds = %72
  %89 = load float, float* %6, align 4
  %90 = load float, float* @sky_max, align 4
  %91 = fcmp ogt float %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load float, float* @sky_max, align 4
  store float %93, float* %6, align 4
  br label %94

94:                                               ; preds = %92, %88
  br label %95

95:                                               ; preds = %94, %86
  %96 = load float, float* %7, align 4
  %97 = load float, float* @sky_min, align 4
  %98 = fcmp olt float %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load float, float* @sky_min, align 4
  store float %100, float* %7, align 4
  br label %108

101:                                              ; preds = %95
  %102 = load float, float* %7, align 4
  %103 = load float, float* @sky_max, align 4
  %104 = fcmp ogt float %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load float, float* @sky_max, align 4
  store float %106, float* %7, align 4
  br label %107

107:                                              ; preds = %105, %101
  br label %108

108:                                              ; preds = %107, %99
  %109 = load float, float* %7, align 4
  %110 = fpext float %109 to double
  %111 = fsub double 1.000000e+00, %110
  %112 = fptrunc double %111 to float
  store float %112, float* %7, align 4
  %113 = load float*, float** %9, align 8
  %114 = icmp ne float* %113, null
  br i1 %114, label %115, label %122

115:                                              ; preds = %108
  %116 = load float, float* %6, align 4
  %117 = load float*, float** %9, align 8
  %118 = getelementptr inbounds float, float* %117, i64 0
  store float %116, float* %118, align 4
  %119 = load float, float* %7, align 4
  %120 = load float*, float** %9, align 8
  %121 = getelementptr inbounds float, float* %120, i64 1
  store float %119, float* %121, align 4
  br label %122

122:                                              ; preds = %115, %108
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
