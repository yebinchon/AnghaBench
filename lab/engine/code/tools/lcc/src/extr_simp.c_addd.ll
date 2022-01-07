; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_simp.c_addd.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_simp.c_addd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"overflow in constant expression\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double, double, double, double, i32)* @addd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addd(double %0, double %1, double %2, double %3, i32 %4) #0 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store double %0, double* %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load double, double* %6, align 8
  %13 = fcmp oeq double %12, 0.000000e+00
  br i1 %13, label %55, label %14

14:                                               ; preds = %5
  %15 = load double, double* %7, align 8
  %16 = fcmp oeq double %15, 0.000000e+00
  br i1 %16, label %55, label %17

17:                                               ; preds = %14
  %18 = load double, double* %6, align 8
  %19 = fcmp olt double %18, 0.000000e+00
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load double, double* %7, align 8
  %22 = fcmp olt double %21, 0.000000e+00
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load double, double* %6, align 8
  %25 = load double, double* %8, align 8
  %26 = load double, double* %7, align 8
  %27 = fsub double %25, %26
  %28 = fcmp oge double %24, %27
  br i1 %28, label %55, label %29

29:                                               ; preds = %23, %20, %17
  %30 = load double, double* %6, align 8
  %31 = fcmp olt double %30, 0.000000e+00
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load double, double* %7, align 8
  %34 = fcmp ogt double %33, 0.000000e+00
  br i1 %34, label %55, label %35

35:                                               ; preds = %32, %29
  %36 = load double, double* %6, align 8
  %37 = fcmp ogt double %36, 0.000000e+00
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load double, double* %7, align 8
  %40 = fcmp olt double %39, 0.000000e+00
  br i1 %40, label %55, label %41

41:                                               ; preds = %38, %35
  %42 = load double, double* %6, align 8
  %43 = fcmp ogt double %42, 0.000000e+00
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load double, double* %7, align 8
  %46 = fcmp ogt double %45, 0.000000e+00
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load double, double* %6, align 8
  %49 = load double, double* %9, align 8
  %50 = load double, double* %7, align 8
  %51 = fsub double %49, %50
  %52 = fcmp ole double %48, %51
  br label %53

53:                                               ; preds = %47, %44, %41
  %54 = phi i1 [ false, %44 ], [ false, %41 ], [ %52, %47 ]
  br label %55

55:                                               ; preds = %53, %38, %32, %23, %14, %5
  %56 = phi i1 [ true, %38 ], [ true, %32 ], [ true, %23 ], [ true, %14 ], [ true, %5 ], [ %54, %53 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 @warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %65

65:                                               ; preds = %63, %60, %55
  %66 = load i32, i32* %11, align 4
  ret i32 %66
}

declare dso_local i32 @warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
