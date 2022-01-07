; ModuleID = '/home/carl/AnghaBench/libui/examples/histogram/extr_main.c_pointLocations.c'
source_filename = "/home/carl/AnghaBench/libui/examples/histogram/extr_main.c_pointLocations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@datapoints = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double, double, double*, double*)* @pointLocations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pointLocations(double %0, double %1, double* %2, double* %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double* %2, double** %7, align 8
  store double* %3, double** %8, align 8
  %13 = load double, double* %5, align 8
  %14 = fdiv double %13, 9.000000e+00
  store double %14, double* %9, align 8
  %15 = load double, double* %6, align 8
  %16 = fdiv double %15, 1.000000e+02
  store double %16, double* %10, align 8
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %45, %4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 10
  br i1 %19, label %20, label %48

20:                                               ; preds = %17
  %21 = load i32*, i32** @datapoints, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @uiSpinboxValue(i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = sub nsw i32 100, %27
  store i32 %28, i32* %12, align 4
  %29 = load double, double* %9, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sitofp i32 %30 to double
  %32 = fmul double %29, %31
  %33 = load double*, double** %7, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %33, i64 %35
  store double %32, double* %36, align 8
  %37 = load double, double* %10, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sitofp i32 %38 to double
  %40 = fmul double %37, %39
  %41 = load double*, double** %8, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, double* %41, i64 %43
  store double %40, double* %44, align 8
  br label %45

45:                                               ; preds = %20
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %17

48:                                               ; preds = %17
  ret void
}

declare dso_local i32 @uiSpinboxValue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
