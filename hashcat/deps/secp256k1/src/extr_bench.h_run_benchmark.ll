; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_bench.h_run_benchmark.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_bench.h_run_benchmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HUGE_VAL = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s: min \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"us / avg \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"us / max \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"us\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_benchmark(i8* %0, void (i8*)* %1, void (i8*)* %2, void (i8*)* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca void (i8*)*, align 8
  %10 = alloca void (i8*)*, align 8
  %11 = alloca void (i8*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  store i8* %0, i8** %8, align 8
  store void (i8*)* %1, void (i8*)** %9, align 8
  store void (i8*)* %2, void (i8*)** %10, align 8
  store void (i8*)* %3, void (i8*)** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %21 = load double, double* @HUGE_VAL, align 8
  store double %21, double* %16, align 8
  store double 0.000000e+00, double* %17, align 8
  store double 0.000000e+00, double* %18, align 8
  store i32 0, i32* %15, align 4
  br label %22

22:                                               ; preds = %60, %7
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %63

26:                                               ; preds = %22
  %27 = load void (i8*)*, void (i8*)** %10, align 8
  %28 = icmp ne void (i8*)* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load void (i8*)*, void (i8*)** %10, align 8
  %31 = load i8*, i8** %12, align 8
  call void %30(i8* %31)
  br label %32

32:                                               ; preds = %29, %26
  %33 = call double (...) @gettimedouble()
  store double %33, double* %19, align 8
  %34 = load void (i8*)*, void (i8*)** %9, align 8
  %35 = load i8*, i8** %12, align 8
  call void %34(i8* %35)
  %36 = call double (...) @gettimedouble()
  %37 = load double, double* %19, align 8
  %38 = fsub double %36, %37
  store double %38, double* %20, align 8
  %39 = load void (i8*)*, void (i8*)** %11, align 8
  %40 = icmp ne void (i8*)* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load void (i8*)*, void (i8*)** %11, align 8
  %43 = load i8*, i8** %12, align 8
  call void %42(i8* %43)
  br label %44

44:                                               ; preds = %41, %32
  %45 = load double, double* %20, align 8
  %46 = load double, double* %16, align 8
  %47 = fcmp olt double %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load double, double* %20, align 8
  store double %49, double* %16, align 8
  br label %50

50:                                               ; preds = %48, %44
  %51 = load double, double* %20, align 8
  %52 = load double, double* %18, align 8
  %53 = fcmp ogt double %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load double, double* %20, align 8
  store double %55, double* %18, align 8
  br label %56

56:                                               ; preds = %54, %50
  %57 = load double, double* %20, align 8
  %58 = load double, double* %17, align 8
  %59 = fadd double %58, %57
  store double %59, double* %17, align 8
  br label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %15, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %15, align 4
  br label %22

63:                                               ; preds = %22
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %64)
  %66 = load double, double* %16, align 8
  %67 = fmul double %66, 1.000000e+06
  %68 = load i32, i32* %14, align 4
  %69 = sitofp i32 %68 to double
  %70 = fdiv double %67, %69
  %71 = call i32 @print_number(double %70)
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %73 = load double, double* %17, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sitofp i32 %74 to double
  %76 = fdiv double %73, %75
  %77 = fmul double %76, 1.000000e+06
  %78 = load i32, i32* %14, align 4
  %79 = sitofp i32 %78 to double
  %80 = fdiv double %77, %79
  %81 = call i32 @print_number(double %80)
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %83 = load double, double* %18, align 8
  %84 = fmul double %83, 1.000000e+06
  %85 = load i32, i32* %14, align 4
  %86 = sitofp i32 %85 to double
  %87 = fdiv double %84, %86
  %88 = call i32 @print_number(double %87)
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local double @gettimedouble(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_number(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
