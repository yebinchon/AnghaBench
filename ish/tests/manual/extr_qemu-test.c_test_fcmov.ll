; ModuleID = '/home/carl/AnghaBench/ish/tests/manual/extr_qemu-test.c_test_fcmov.c'
source_filename = "/home/carl/AnghaBench/ish/tests/manual/extr_qemu-test.c_test_fcmov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CC_C = common dso_local global i64 0, align 8
@CC_Z = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"be\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"nb\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"nbe\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@CC_P = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"nu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_fcmov() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store double 1.000000e+00, double* %1, align 8
  store double 2.000000e+00, double* %2, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %49, %0
  %6 = load i64, i64* %4, align 8
  %7 = icmp slt i64 %6, 4
  br i1 %7, label %8, label %52

8:                                                ; preds = %5
  store i64 0, i64* %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = and i64 %9, 1
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load i64, i64* @CC_C, align 8
  %14 = load i64, i64* %3, align 8
  %15 = or i64 %14, %13
  store i64 %15, i64* %3, align 8
  br label %16

16:                                               ; preds = %12, %8
  %17 = load i64, i64* %4, align 8
  %18 = and i64 %17, 2
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i64, i64* @CC_Z, align 8
  %22 = load i64, i64* %3, align 8
  %23 = or i64 %22, %21
  store i64 %23, i64* %3, align 8
  br label %24

24:                                               ; preds = %20, %16
  %25 = load double, double* %1, align 8
  %26 = load double, double* %2, align 8
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @TEST_FCMOV(double %25, double %26, i64 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %29 = load double, double* %1, align 8
  %30 = load double, double* %2, align 8
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @TEST_FCMOV(double %29, double %30, i64 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %33 = load double, double* %1, align 8
  %34 = load double, double* %2, align 8
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @TEST_FCMOV(double %33, double %34, i64 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %37 = load double, double* %1, align 8
  %38 = load double, double* %2, align 8
  %39 = load i64, i64* %3, align 8
  %40 = call i32 @TEST_FCMOV(double %37, double %38, i64 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %41 = load double, double* %1, align 8
  %42 = load double, double* %2, align 8
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @TEST_FCMOV(double %41, double %42, i64 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %45 = load double, double* %1, align 8
  %46 = load double, double* %2, align 8
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @TEST_FCMOV(double %45, double %46, i64 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %49

49:                                               ; preds = %24
  %50 = load i64, i64* %4, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %4, align 8
  br label %5

52:                                               ; preds = %5
  %53 = load double, double* %1, align 8
  %54 = load double, double* %2, align 8
  %55 = call i32 @TEST_FCMOV(double %53, double %54, i64 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %56 = load double, double* %1, align 8
  %57 = load double, double* %2, align 8
  %58 = load i64, i64* @CC_P, align 8
  %59 = call i32 @TEST_FCMOV(double %56, double %57, i64 %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %60 = load double, double* %1, align 8
  %61 = load double, double* %2, align 8
  %62 = call i32 @TEST_FCMOV(double %60, double %61, i64 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %63 = load double, double* %1, align 8
  %64 = load double, double* %2, align 8
  %65 = load i64, i64* @CC_P, align 8
  %66 = call i32 @TEST_FCMOV(double %63, double %64, i64 %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @TEST_FCMOV(double, double, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
