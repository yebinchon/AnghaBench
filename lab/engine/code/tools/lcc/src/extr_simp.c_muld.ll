; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_simp.c_muld.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_simp.c_muld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"overflow in constant expression\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double, double, double, double, i32)* @muld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @muld(double %0, double %1, double %2, double %3, i32 %4) #0 {
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
  %13 = fcmp oge double %12, -1.000000e+00
  br i1 %13, label %14, label %17

14:                                               ; preds = %5
  %15 = load double, double* %6, align 8
  %16 = fcmp ole double %15, 1.000000e+00
  br i1 %16, label %75, label %17

17:                                               ; preds = %14, %5
  %18 = load double, double* %7, align 8
  %19 = fcmp oge double %18, -1.000000e+00
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load double, double* %7, align 8
  %22 = fcmp ole double %21, 1.000000e+00
  br i1 %22, label %75, label %23

23:                                               ; preds = %20, %17
  %24 = load double, double* %6, align 8
  %25 = fcmp olt double %24, 0.000000e+00
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load double, double* %7, align 8
  %28 = fcmp olt double %27, 0.000000e+00
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load double, double* %6, align 8
  %31 = fneg double %30
  %32 = load double, double* %9, align 8
  %33 = load double, double* %7, align 8
  %34 = fneg double %33
  %35 = fdiv double %32, %34
  %36 = fcmp ole double %31, %35
  br i1 %36, label %75, label %37

37:                                               ; preds = %29, %26, %23
  %38 = load double, double* %6, align 8
  %39 = fcmp olt double %38, 0.000000e+00
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load double, double* %7, align 8
  %42 = fcmp ogt double %41, 0.000000e+00
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load double, double* %6, align 8
  %45 = load double, double* %8, align 8
  %46 = load double, double* %7, align 8
  %47 = fdiv double %45, %46
  %48 = fcmp oge double %44, %47
  br i1 %48, label %75, label %49

49:                                               ; preds = %43, %40, %37
  %50 = load double, double* %6, align 8
  %51 = fcmp ogt double %50, 0.000000e+00
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load double, double* %7, align 8
  %54 = fcmp olt double %53, 0.000000e+00
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load double, double* %7, align 8
  %57 = load double, double* %8, align 8
  %58 = load double, double* %6, align 8
  %59 = fdiv double %57, %58
  %60 = fcmp oge double %56, %59
  br i1 %60, label %75, label %61

61:                                               ; preds = %55, %52, %49
  %62 = load double, double* %6, align 8
  %63 = fcmp ogt double %62, 0.000000e+00
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load double, double* %7, align 8
  %66 = fcmp ogt double %65, 0.000000e+00
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load double, double* %6, align 8
  %69 = load double, double* %9, align 8
  %70 = load double, double* %7, align 8
  %71 = fdiv double %69, %70
  %72 = fcmp ole double %68, %71
  br label %73

73:                                               ; preds = %67, %64, %61
  %74 = phi i1 [ false, %64 ], [ false, %61 ], [ %72, %67 ]
  br label %75

75:                                               ; preds = %73, %55, %43, %29, %20, %14
  %76 = phi i1 [ true, %55 ], [ true, %43 ], [ true, %29 ], [ true, %20 ], [ true, %14 ], [ %74, %73 ]
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = call i32 @warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %85

85:                                               ; preds = %83, %80, %75
  %86 = load i32, i32* %11, align 4
  ret i32 %86
}

declare dso_local i32 @warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
