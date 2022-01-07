; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_datetimepicker.c_ampmSpinboxInput.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_datetimepicker.c_ampmSpinboxInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AM_STR = common dso_local global i32 0, align 4
@PM_STR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@GTK_INPUT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64)* @ampmSpinboxInput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ampmSpinboxInput(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca double*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = inttoptr i64 %12 to double*
  store double* %13, double** %8, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @GTK_ENTRY(i32* %14)
  %16 = call i8* @gtk_entry_get_text(i32 %15)
  store i8* %16, i8** %9, align 8
  %17 = load i32, i32* @AM_STR, align 4
  %18 = call i8* @nl_langinfo(i32 %17)
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = call signext i8 @g_ascii_tolower(i8 signext %20)
  store i8 %21, i8* %10, align 1
  %22 = load i32, i32* @PM_STR, align 4
  %23 = call i8* @nl_langinfo(i32 %22)
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = call signext i8 @g_ascii_tolower(i8 signext %25)
  store i8 %26, i8* %11, align 1
  br label %27

27:                                               ; preds = %56, %3
  %28 = load i8*, i8** %9, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %27
  %33 = load i8*, i8** %9, align 8
  %34 = load i8, i8* %33, align 1
  %35 = call signext i8 @g_ascii_tolower(i8 signext %34)
  %36 = sext i8 %35 to i32
  %37 = load i8, i8* %10, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load double*, double** %8, align 8
  store double 0.000000e+00, double* %41, align 8
  %42 = load i32, i32* @TRUE, align 4
  store i32 %42, i32* %4, align 4
  br label %61

43:                                               ; preds = %32
  %44 = load i8*, i8** %9, align 8
  %45 = load i8, i8* %44, align 1
  %46 = call signext i8 @g_ascii_tolower(i8 signext %45)
  %47 = sext i8 %46 to i32
  %48 = load i8, i8* %11, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load double*, double** %8, align 8
  store double 1.000000e+00, double* %52, align 8
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %4, align 4
  br label %61

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %9, align 8
  br label %27

59:                                               ; preds = %27
  %60 = load i32, i32* @GTK_INPUT_ERROR, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %51, %40
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i8* @gtk_entry_get_text(i32) #1

declare dso_local i32 @GTK_ENTRY(i32*) #1

declare dso_local signext i8 @g_ascii_tolower(i8 signext) #1

declare dso_local i8* @nl_langinfo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
