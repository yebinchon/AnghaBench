; ModuleID = '/home/carl/AnghaBench/ish/tests/e2e/fpu/extr_test_fpu.c_main.c'
source_filename = "/home/carl/AnghaBench/ish/tests/e2e/fpu/extr_test_fpu.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%.2f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store i32 0, i32* %1, align 4
  store double 1.200000e-01, double* %2, align 8
  store double 1.600000e+01, double* %3, align 8
  %4 = load double, double* %2, align 8
  %5 = load double, double* %3, align 8
  %6 = fadd double %4, %5
  %7 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %6)
  %8 = load double, double* %2, align 8
  %9 = load double, double* %3, align 8
  %10 = fsub double %8, %9
  %11 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %10)
  %12 = load double, double* %2, align 8
  %13 = load double, double* %3, align 8
  %14 = fmul double %12, %13
  %15 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %14)
  %16 = load double, double* %2, align 8
  %17 = load double, double* %3, align 8
  %18 = fdiv double %16, %17
  %19 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %18)
  %20 = load double, double* %3, align 8
  %21 = load double, double* %2, align 8
  %22 = fdiv double %20, %21
  %23 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %22)
  %24 = load double, double* %2, align 8
  %25 = load double, double* %2, align 8
  %26 = load double, double* %3, align 8
  %27 = fdiv double %25, %26
  %28 = fadd double %24, %27
  %29 = load double, double* %3, align 8
  %30 = fadd double %28, %29
  %31 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %30)
  %32 = load double, double* %2, align 8
  %33 = load double, double* %2, align 8
  %34 = fadd double %32, %33
  %35 = load double, double* %3, align 8
  %36 = load double, double* %3, align 8
  %37 = fadd double %35, %36
  %38 = fdiv double %34, %37
  %39 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %38)
  ret i32 0
}

declare dso_local i32 @printf(i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
