; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_readint_float.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_readint_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mrb_digitmap = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"malformed readint input\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*, i8*, i32)* @readint_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @readint_float(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %11, i64 %14
  store i8* %15, i8** %7, align 8
  store double 0.000000e+00, double* %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 43
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %5, align 8
  br label %23

23:                                               ; preds = %20, %3
  br label %24

24:                                               ; preds = %67, %23
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ult i8* %25, %26
  br i1 %27, label %28, label %70

28:                                               ; preds = %24
  %29 = load i8*, i8** %5, align 8
  %30 = load i8, i8* %29, align 1
  store i8 %30, i8* %10, align 1
  %31 = load i8, i8* %10, align 1
  %32 = call signext i8 @tolower(i8 zeroext %31)
  store i8 %32, i8* %10, align 1
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %57, %28
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %33
  %38 = load i8*, i8** @mrb_digitmap, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* %10, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %37
  %48 = load i32, i32* %6, align 4
  %49 = sitofp i32 %48 to double
  %50 = load double, double* %8, align 8
  %51 = fmul double %50, %49
  store double %51, double* %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sitofp i32 %52 to double
  %54 = load double, double* %8, align 8
  %55 = fadd double %54, %53
  store double %55, double* %8, align 8
  br label %60

56:                                               ; preds = %37
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %33

60:                                               ; preds = %47, %33
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @codegen_error(i32* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %5, align 8
  br label %24

70:                                               ; preds = %24
  %71 = load double, double* %8, align 8
  ret double %71
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local signext i8 @tolower(i8 zeroext) #1

declare dso_local i32 @codegen_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
