; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_effects.c_CG_BigExplode.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_effects.c_CG_BigExplode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@cg_blood = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@EXP_VELOCITY = common dso_local global double 0.000000e+00, align 8
@EXP_JUMP = common dso_local global double 0.000000e+00, align 8
@cgs = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_BigExplode(double* %0) #0 {
  %2 = alloca double*, align 8
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  store double* %0, double** %2, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg_blood, i32 0, i32 0), align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %135

8:                                                ; preds = %1
  %9 = load double*, double** %2, align 8
  %10 = load double*, double** %3, align 8
  %11 = call i32 @VectorCopy(double* %9, double* %10)
  %12 = call double (...) @crandom()
  %13 = load double, double* @EXP_VELOCITY, align 8
  %14 = fmul double %12, %13
  %15 = load double*, double** %4, align 8
  %16 = getelementptr inbounds double, double* %15, i64 0
  store double %14, double* %16, align 8
  %17 = call double (...) @crandom()
  %18 = load double, double* @EXP_VELOCITY, align 8
  %19 = fmul double %17, %18
  %20 = load double*, double** %4, align 8
  %21 = getelementptr inbounds double, double* %20, i64 1
  store double %19, double* %21, align 8
  %22 = load double, double* @EXP_JUMP, align 8
  %23 = call double (...) @crandom()
  %24 = load double, double* @EXP_VELOCITY, align 8
  %25 = fmul double %23, %24
  %26 = fadd double %22, %25
  %27 = load double*, double** %4, align 8
  %28 = getelementptr inbounds double, double* %27, i64 2
  store double %26, double* %28, align 8
  %29 = load double*, double** %3, align 8
  %30 = load double*, double** %4, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 0, i32 0), align 4
  %32 = call i32 @CG_LaunchExplode(double* %29, double* %30, i32 %31)
  %33 = load double*, double** %2, align 8
  %34 = load double*, double** %3, align 8
  %35 = call i32 @VectorCopy(double* %33, double* %34)
  %36 = call double (...) @crandom()
  %37 = load double, double* @EXP_VELOCITY, align 8
  %38 = fmul double %36, %37
  %39 = load double*, double** %4, align 8
  %40 = getelementptr inbounds double, double* %39, i64 0
  store double %38, double* %40, align 8
  %41 = call double (...) @crandom()
  %42 = load double, double* @EXP_VELOCITY, align 8
  %43 = fmul double %41, %42
  %44 = load double*, double** %4, align 8
  %45 = getelementptr inbounds double, double* %44, i64 1
  store double %43, double* %45, align 8
  %46 = load double, double* @EXP_JUMP, align 8
  %47 = call double (...) @crandom()
  %48 = load double, double* @EXP_VELOCITY, align 8
  %49 = fmul double %47, %48
  %50 = fadd double %46, %49
  %51 = load double*, double** %4, align 8
  %52 = getelementptr inbounds double, double* %51, i64 2
  store double %50, double* %52, align 8
  %53 = load double*, double** %3, align 8
  %54 = load double*, double** %4, align 8
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 0, i32 0), align 4
  %56 = call i32 @CG_LaunchExplode(double* %53, double* %54, i32 %55)
  %57 = load double*, double** %2, align 8
  %58 = load double*, double** %3, align 8
  %59 = call i32 @VectorCopy(double* %57, double* %58)
  %60 = call double (...) @crandom()
  %61 = load double, double* @EXP_VELOCITY, align 8
  %62 = fmul double %60, %61
  %63 = fmul double %62, 1.500000e+00
  %64 = load double*, double** %4, align 8
  %65 = getelementptr inbounds double, double* %64, i64 0
  store double %63, double* %65, align 8
  %66 = call double (...) @crandom()
  %67 = load double, double* @EXP_VELOCITY, align 8
  %68 = fmul double %66, %67
  %69 = fmul double %68, 1.500000e+00
  %70 = load double*, double** %4, align 8
  %71 = getelementptr inbounds double, double* %70, i64 1
  store double %69, double* %71, align 8
  %72 = load double, double* @EXP_JUMP, align 8
  %73 = call double (...) @crandom()
  %74 = load double, double* @EXP_VELOCITY, align 8
  %75 = fmul double %73, %74
  %76 = fadd double %72, %75
  %77 = load double*, double** %4, align 8
  %78 = getelementptr inbounds double, double* %77, i64 2
  store double %76, double* %78, align 8
  %79 = load double*, double** %3, align 8
  %80 = load double*, double** %4, align 8
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 0, i32 0), align 4
  %82 = call i32 @CG_LaunchExplode(double* %79, double* %80, i32 %81)
  %83 = load double*, double** %2, align 8
  %84 = load double*, double** %3, align 8
  %85 = call i32 @VectorCopy(double* %83, double* %84)
  %86 = call double (...) @crandom()
  %87 = load double, double* @EXP_VELOCITY, align 8
  %88 = fmul double %86, %87
  %89 = fmul double %88, 2.000000e+00
  %90 = load double*, double** %4, align 8
  %91 = getelementptr inbounds double, double* %90, i64 0
  store double %89, double* %91, align 8
  %92 = call double (...) @crandom()
  %93 = load double, double* @EXP_VELOCITY, align 8
  %94 = fmul double %92, %93
  %95 = fmul double %94, 2.000000e+00
  %96 = load double*, double** %4, align 8
  %97 = getelementptr inbounds double, double* %96, i64 1
  store double %95, double* %97, align 8
  %98 = load double, double* @EXP_JUMP, align 8
  %99 = call double (...) @crandom()
  %100 = load double, double* @EXP_VELOCITY, align 8
  %101 = fmul double %99, %100
  %102 = fadd double %98, %101
  %103 = load double*, double** %4, align 8
  %104 = getelementptr inbounds double, double* %103, i64 2
  store double %102, double* %104, align 8
  %105 = load double*, double** %3, align 8
  %106 = load double*, double** %4, align 8
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 0, i32 0), align 4
  %108 = call i32 @CG_LaunchExplode(double* %105, double* %106, i32 %107)
  %109 = load double*, double** %2, align 8
  %110 = load double*, double** %3, align 8
  %111 = call i32 @VectorCopy(double* %109, double* %110)
  %112 = call double (...) @crandom()
  %113 = load double, double* @EXP_VELOCITY, align 8
  %114 = fmul double %112, %113
  %115 = fmul double %114, 2.500000e+00
  %116 = load double*, double** %4, align 8
  %117 = getelementptr inbounds double, double* %116, i64 0
  store double %115, double* %117, align 8
  %118 = call double (...) @crandom()
  %119 = load double, double* @EXP_VELOCITY, align 8
  %120 = fmul double %118, %119
  %121 = fmul double %120, 2.500000e+00
  %122 = load double*, double** %4, align 8
  %123 = getelementptr inbounds double, double* %122, i64 1
  store double %121, double* %123, align 8
  %124 = load double, double* @EXP_JUMP, align 8
  %125 = call double (...) @crandom()
  %126 = load double, double* @EXP_VELOCITY, align 8
  %127 = fmul double %125, %126
  %128 = fadd double %124, %127
  %129 = load double*, double** %4, align 8
  %130 = getelementptr inbounds double, double* %129, i64 2
  store double %128, double* %130, align 8
  %131 = load double*, double** %3, align 8
  %132 = load double*, double** %4, align 8
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 0, i32 0), align 4
  %134 = call i32 @CG_LaunchExplode(double* %131, double* %132, i32 %133)
  br label %135

135:                                              ; preds = %8, %7
  ret void
}

declare dso_local i32 @VectorCopy(double*, double*) #1

declare dso_local double @crandom(...) #1

declare dso_local i32 @CG_LaunchExplode(double*, double*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
