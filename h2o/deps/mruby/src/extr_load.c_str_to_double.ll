; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_load.c_str_to_double.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_load.c_str_to_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFINITY = common dso_local global double 0.000000e+00, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*, i32)* @str_to_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @str_to_double(i32* %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i8* @RSTRING_PTR(i32 %8)
  store i8* %9, i8** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @RSTRING_LEN(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 105
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load double, double* @INFINITY, align 8
  store double %21, double* %3, align 8
  br label %51

22:                                               ; preds = %14, %2
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 73
  br i1 %27, label %43, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 45
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 105
  br i1 %42, label %43, label %46

43:                                               ; preds = %37, %22
  %44 = load double, double* @INFINITY, align 8
  %45 = fneg double %44
  store double %45, double* %3, align 8
  br label %51

46:                                               ; preds = %37, %31, %28
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @TRUE, align 4
  %50 = call double @mrb_str_to_dbl(i32* %47, i32 %48, i32 %49)
  store double %50, double* %3, align 8
  br label %51

51:                                               ; preds = %46, %43, %20
  %52 = load double, double* %3, align 8
  ret double %52
}

declare dso_local i8* @RSTRING_PTR(i32) #1

declare dso_local i32 @RSTRING_LEN(i32) #1

declare dso_local double @mrb_str_to_dbl(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
