; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-libm/extr_trig.c___kernel_cos.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-libm/extr_trig.c___kernel_cos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@one = common dso_local global double 0.000000e+00, align 8
@C1 = common dso_local global double 0.000000e+00, align 8
@C2 = common dso_local global double 0.000000e+00, align 8
@C3 = common dso_local global double 0.000000e+00, align 8
@C4 = common dso_local global double 0.000000e+00, align 8
@C5 = common dso_local global double 0.000000e+00, align 8
@C6 = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double)* @__kernel_cos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @__kernel_cos(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  %12 = load double, double* %4, align 8
  %13 = call i32 @__HI(double %12)
  %14 = and i32 %13, 2147483647
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 1044381696
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load double, double* %4, align 8
  %19 = fptosi double %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load double, double* @one, align 8
  store double %22, double* %3, align 8
  br label %99

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %2
  %25 = load double, double* %4, align 8
  %26 = load double, double* %4, align 8
  %27 = fmul double %25, %26
  store double %27, double* %8, align 8
  %28 = load double, double* %8, align 8
  %29 = load double, double* @C1, align 8
  %30 = load double, double* %8, align 8
  %31 = load double, double* @C2, align 8
  %32 = load double, double* %8, align 8
  %33 = load double, double* @C3, align 8
  %34 = load double, double* %8, align 8
  %35 = load double, double* @C4, align 8
  %36 = load double, double* %8, align 8
  %37 = load double, double* @C5, align 8
  %38 = load double, double* %8, align 8
  %39 = load double, double* @C6, align 8
  %40 = fmul double %38, %39
  %41 = fadd double %37, %40
  %42 = fmul double %36, %41
  %43 = fadd double %35, %42
  %44 = fmul double %34, %43
  %45 = fadd double %33, %44
  %46 = fmul double %32, %45
  %47 = fadd double %31, %46
  %48 = fmul double %30, %47
  %49 = fadd double %29, %48
  %50 = fmul double %28, %49
  store double %50, double* %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 1070805811
  br i1 %52, label %53, label %66

53:                                               ; preds = %24
  %54 = load double, double* @one, align 8
  %55 = load double, double* %8, align 8
  %56 = fmul double 5.000000e-01, %55
  %57 = load double, double* %8, align 8
  %58 = load double, double* %9, align 8
  %59 = fmul double %57, %58
  %60 = load double, double* %4, align 8
  %61 = load double, double* %5, align 8
  %62 = fmul double %60, %61
  %63 = fsub double %59, %62
  %64 = fsub double %56, %63
  %65 = fsub double %54, %64
  store double %65, double* %3, align 8
  br label %99

66:                                               ; preds = %24
  %67 = load i32, i32* %10, align 4
  %68 = icmp sgt i32 %67, 1072234496
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store double 2.812500e-01, double* %70, align 8
  br label %78

71:                                               ; preds = %66
  %72 = load i32, i32* %10, align 4
  %73 = sub nsw i32 %72, 2097152
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  br label %78

78:                                               ; preds = %71, %69
  %79 = load double, double* %8, align 8
  %80 = fmul double 5.000000e-01, %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %82 = load double, double* %81, align 8
  %83 = fsub double %80, %82
  store double %83, double* %7, align 8
  %84 = load double, double* @one, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %86 = load double, double* %85, align 8
  %87 = fsub double %84, %86
  store double %87, double* %6, align 8
  %88 = load double, double* %6, align 8
  %89 = load double, double* %7, align 8
  %90 = load double, double* %8, align 8
  %91 = load double, double* %9, align 8
  %92 = fmul double %90, %91
  %93 = load double, double* %4, align 8
  %94 = load double, double* %5, align 8
  %95 = fmul double %93, %94
  %96 = fsub double %92, %95
  %97 = fsub double %89, %96
  %98 = fsub double %88, %97
  store double %98, double* %3, align 8
  br label %99

99:                                               ; preds = %78, %53, %21
  %100 = load double, double* %3, align 8
  ret double %100
}

declare dso_local i32 @__HI(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
