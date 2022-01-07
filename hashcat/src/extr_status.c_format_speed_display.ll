; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_status.c_format_speed_display.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_status.c_format_speed_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%.0f \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%.1f %c\00", align 1
@UNITS = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @format_speed_display(double %0, i8* %1, i64 %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store double %0, double* %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load double, double* %4, align 8
  %9 = fcmp ole double %8, 0.000000e+00
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 48, i8* %12, align 1
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 32, i8* %14, align 1
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 2
  store i8 0, i8* %16, align 1
  br label %43

17:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %21, %17
  %19 = load double, double* %4, align 8
  %20 = fcmp ogt double %19, 9.999900e+04
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load double, double* %4, align 8
  %23 = fdiv double %22, 1.000000e+03
  store double %23, double* %4, align 8
  %24 = load i64, i64* %7, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %7, align 8
  br label %18

26:                                               ; preds = %18
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load double, double* %4, align 8
  %33 = call i32 (i8*, i64, i8*, double, ...) @snprintf(i8* %30, i64 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %32)
  br label %43

34:                                               ; preds = %26
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load double, double* %4, align 8
  %38 = load i32*, i32** @UNITS, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, i64, i8*, double, ...) @snprintf(i8* %35, i64 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), double %37, i32 %41)
  br label %43

43:                                               ; preds = %10, %34, %29
  ret void
}

declare dso_local i32 @snprintf(i8*, i64, i8*, double, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
