; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_bench.h_print_number.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_bench.h_print_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%.*f\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_number(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  store double %0, double* %2, align 8
  %5 = load double, double* %2, align 8
  store double %5, double* %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load double, double* %3, align 8
  %7 = fcmp olt double %6, 0.000000e+00
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load double, double* %3, align 8
  %10 = fneg double %9
  store double %10, double* %3, align 8
  br label %11

11:                                               ; preds = %8, %1
  br label %12

12:                                               ; preds = %20, %11
  %13 = load double, double* %3, align 8
  %14 = fcmp ogt double %13, 0.000000e+00
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load double, double* %3, align 8
  %17 = fcmp olt double %16, 1.000000e+02
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i1 [ false, %12 ], [ %17, %15 ]
  br i1 %19, label %20, label %25

20:                                               ; preds = %18
  %21 = load double, double* %3, align 8
  %22 = fmul double %21, 1.000000e+01
  store double %22, double* %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %12

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = load double, double* %2, align 8
  %28 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %26, double %27)
  ret void
}

declare dso_local i32 @printf(i8*, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
