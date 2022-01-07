; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_estimate-split.c_estimate_split.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_estimate-split.c_estimate_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @estimate_split(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %108

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %3, align 4
  br label %108

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = icmp sge i32 %23, 100
  br i1 %24, label %25, label %44

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = mul nsw i32 100, %27
  %29 = icmp sge i32 %26, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = sitofp i32 %31 to double
  %33 = load i32, i32* %5, align 4
  %34 = sitofp i32 %33 to double
  %35 = fdiv double %32, %34
  store double %35, double* %6, align 8
  %36 = load double, double* %6, align 8
  %37 = load double, double* %6, align 8
  %38 = call i32 @sqrt(double %37)
  %39 = mul nsw i32 7, %38
  %40 = sitofp i32 %39 to double
  %41 = fadd double %36, %40
  %42 = fadd double %41, 1.000000e+00
  %43 = fptosi double %42 to i32
  store i32 %43, i32* %3, align 4
  br label %108

44:                                               ; preds = %25, %22
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = sitofp i32 %46 to double
  %48 = fdiv double 1.000000e+00, %47
  %49 = fsub double 1.000000e+00, %48
  %50 = fptosi double %49 to i32
  %51 = call i32 @log(i32 %50)
  %52 = mul nsw i32 %45, %51
  %53 = call double @exp(i32 %52)
  store double %53, double* %7, align 8
  %54 = load double, double* %7, align 8
  store double %54, double* %6, align 8
  store i32 0, i32* %10, align 4
  %55 = load i32, i32* %5, align 4
  %56 = sitofp i32 %55 to double
  %57 = fdiv double 1.000000e-09, %56
  %58 = fsub double 1.000000e+00, %57
  store double %58, double* %8, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sitofp i32 %59 to double
  %61 = fdiv double 1.000000e-09, %60
  %62 = load i32, i32* %4, align 4
  %63 = sitofp i32 %62 to double
  %64 = fdiv double %61, %63
  store double %64, double* %9, align 8
  br label %65

65:                                               ; preds = %88, %44
  %66 = load double, double* %6, align 8
  %67 = load double, double* %8, align 8
  %68 = fcmp olt double %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = load double, double* %7, align 8
  %75 = load double, double* %9, align 8
  %76 = fcmp olt double %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %5, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32, i32* %4, align 4
  %82 = icmp sgt i32 %80, %81
  br label %83

83:                                               ; preds = %77, %73
  %84 = phi i1 [ false, %73 ], [ %82, %77 ]
  %85 = xor i1 %84, true
  br label %86

86:                                               ; preds = %83, %69, %65
  %87 = phi i1 [ false, %69 ], [ false, %65 ], [ %85, %83 ]
  br i1 %87, label %88, label %106

88:                                               ; preds = %86
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* %10, align 4
  %91 = sub nsw i32 %89, %90
  %92 = sitofp i32 %91 to double
  %93 = load double, double* %7, align 8
  %94 = fmul double %93, %92
  store double %94, double* %7, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sub nsw i32 %95, 1
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  %99 = mul nsw i32 %96, %98
  %100 = sitofp i32 %99 to double
  %101 = load double, double* %7, align 8
  %102 = fdiv double %101, %100
  store double %102, double* %7, align 8
  %103 = load double, double* %7, align 8
  %104 = load double, double* %6, align 8
  %105 = fadd double %104, %103
  store double %105, double* %6, align 8
  br label %65

106:                                              ; preds = %86
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %30, %20, %16
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @sqrt(double) #1

declare dso_local double @exp(i32) #1

declare dso_local i32 @log(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
