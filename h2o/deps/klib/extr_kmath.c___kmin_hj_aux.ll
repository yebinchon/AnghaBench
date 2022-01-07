; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_kmath.c___kmin_hj_aux.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_kmath.c___kmin_hj_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double (i32, double*, i8*)*, i32, double*, i8*, double, double*, i32*)* @__kmin_hj_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @__kmin_hj_aux(double (i32, double*, i8*)* %0, i32 %1, double* %2, i8* %3, double %4, double* %5, i32* %6) #0 {
  %8 = alloca double (i32, double*, i8*)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca double, align 8
  %13 = alloca double*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  store double (i32, double*, i8*)* %0, double (i32, double*, i8*)** %8, align 8
  store i32 %1, i32* %9, align 4
  store double* %2, double** %10, align 8
  store i8* %3, i8** %11, align 8
  store double %4, double* %12, align 8
  store double* %5, double** %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = load i32*, i32** %14, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %20

20:                                               ; preds = %102, %7
  %21 = load i32, i32* %15, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %105

24:                                               ; preds = %20
  %25 = load double*, double** %13, align 8
  %26 = load i32, i32* %15, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double, double* %25, i64 %27
  %29 = load double, double* %28, align 8
  %30 = load double*, double** %10, align 8
  %31 = load i32, i32* %15, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, double* %30, i64 %32
  %34 = load double, double* %33, align 8
  %35 = fadd double %34, %29
  store double %35, double* %33, align 8
  %36 = load double (i32, double*, i8*)*, double (i32, double*, i8*)** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load double*, double** %10, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = call double %36(i32 %37, double* %38, i8* %39)
  store double %40, double* %17, align 8
  %41 = load i32, i32* %16, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %16, align 4
  %43 = load double, double* %17, align 8
  %44 = load double, double* %12, align 8
  %45 = fcmp olt double %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %24
  %47 = load double, double* %17, align 8
  store double %47, double* %12, align 8
  br label %101

48:                                               ; preds = %24
  %49 = load double*, double** %13, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, double* %49, i64 %51
  %53 = load double, double* %52, align 8
  %54 = fsub double 0.000000e+00, %53
  %55 = load double*, double** %13, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %55, i64 %57
  store double %54, double* %58, align 8
  %59 = load double*, double** %13, align 8
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, double* %59, i64 %61
  %63 = load double, double* %62, align 8
  %64 = load double*, double** %13, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, double* %64, i64 %66
  %68 = load double, double* %67, align 8
  %69 = fadd double %63, %68
  %70 = load double*, double** %10, align 8
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds double, double* %70, i64 %72
  %74 = load double, double* %73, align 8
  %75 = fadd double %74, %69
  store double %75, double* %73, align 8
  %76 = load double (i32, double*, i8*)*, double (i32, double*, i8*)** %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load double*, double** %10, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = call double %76(i32 %77, double* %78, i8* %79)
  store double %80, double* %17, align 8
  %81 = load i32, i32* %16, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %16, align 4
  %83 = load double, double* %17, align 8
  %84 = load double, double* %12, align 8
  %85 = fcmp olt double %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %48
  %87 = load double, double* %17, align 8
  store double %87, double* %12, align 8
  br label %100

88:                                               ; preds = %48
  %89 = load double*, double** %13, align 8
  %90 = load i32, i32* %15, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %89, i64 %91
  %93 = load double, double* %92, align 8
  %94 = load double*, double** %10, align 8
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, double* %94, i64 %96
  %98 = load double, double* %97, align 8
  %99 = fsub double %98, %93
  store double %99, double* %97, align 8
  br label %100

100:                                              ; preds = %88, %86
  br label %101

101:                                              ; preds = %100, %46
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %15, align 4
  br label %20

105:                                              ; preds = %20
  %106 = load i32, i32* %16, align 4
  %107 = load i32*, i32** %14, align 8
  store i32 %106, i32* %107, align 4
  %108 = load double, double* %12, align 8
  ret double %108
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
