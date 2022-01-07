; ModuleID = '/home/carl/AnghaBench/glfw/examples/extr_wave.c_init_grid.c'
source_filename = "/home/carl/AnghaBench/glfw/examples/extr_wave.c_init_grid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GRIDH = common dso_local global i32 0, align 4
@GRIDW = common dso_local global i32 0, align 4
@M_PI = common dso_local global double 0.000000e+00, align 8
@p = common dso_local global double** null, align 8
@vx = common dso_local global double** null, align 8
@vy = common dso_local global double** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_grid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %91, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @GRIDH, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %94

10:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %87, %10
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @GRIDW, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %90

15:                                               ; preds = %11
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @GRIDW, align 4
  %18 = sdiv i32 %17, 2
  %19 = sub nsw i32 %16, %18
  %20 = sitofp i32 %19 to double
  store double %20, double* %3, align 8
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @GRIDH, align 4
  %23 = sdiv i32 %22, 2
  %24 = sub nsw i32 %21, %23
  %25 = sitofp i32 %24 to double
  store double %25, double* %4, align 8
  %26 = load double, double* %3, align 8
  %27 = load double, double* %3, align 8
  %28 = fmul double %26, %27
  %29 = load double, double* %4, align 8
  %30 = load double, double* %4, align 8
  %31 = fmul double %29, %30
  %32 = fadd double %28, %31
  %33 = call double @sqrt(double %32) #2
  store double %33, double* %5, align 8
  %34 = load double, double* %5, align 8
  %35 = load i32, i32* @GRIDW, align 4
  %36 = sdiv i32 %35, 2
  %37 = sitofp i32 %36 to double
  %38 = fmul double 1.000000e-01, %37
  %39 = fcmp olt double %34, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %15
  %41 = load double, double* %5, align 8
  %42 = fmul double %41, 1.000000e+01
  store double %42, double* %5, align 8
  %43 = load double, double* %5, align 8
  %44 = load double, double* @M_PI, align 8
  %45 = load i32, i32* @GRIDW, align 4
  %46 = mul nsw i32 %45, 4
  %47 = sitofp i32 %46 to double
  %48 = fdiv double %44, %47
  %49 = fmul double %43, %48
  %50 = call double @cos(double %49) #2
  %51 = fneg double %50
  %52 = fmul double %51, 1.000000e+02
  %53 = load double**, double*** @p, align 8
  %54 = load i32, i32* %1, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double*, double** %53, i64 %55
  %57 = load double*, double** %56, align 8
  %58 = load i32, i32* %2, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds double, double* %57, i64 %59
  store double %52, double* %60, align 8
  br label %70

61:                                               ; preds = %15
  %62 = load double**, double*** @p, align 8
  %63 = load i32, i32* %1, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds double*, double** %62, i64 %64
  %66 = load double*, double** %65, align 8
  %67 = load i32, i32* %2, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds double, double* %66, i64 %68
  store double 0.000000e+00, double* %69, align 8
  br label %70

70:                                               ; preds = %61, %40
  %71 = load double**, double*** @vx, align 8
  %72 = load i32, i32* %1, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double*, double** %71, i64 %73
  %75 = load double*, double** %74, align 8
  %76 = load i32, i32* %2, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds double, double* %75, i64 %77
  store double 0.000000e+00, double* %78, align 8
  %79 = load double**, double*** @vy, align 8
  %80 = load i32, i32* %1, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds double*, double** %79, i64 %81
  %83 = load double*, double** %82, align 8
  %84 = load i32, i32* %2, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, double* %83, i64 %85
  store double 0.000000e+00, double* %86, align 8
  br label %87

87:                                               ; preds = %70
  %88 = load i32, i32* %1, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %1, align 4
  br label %11

90:                                               ; preds = %11
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %2, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %2, align 4
  br label %6

94:                                               ; preds = %6
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

; Function Attrs: nounwind
declare dso_local double @cos(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
