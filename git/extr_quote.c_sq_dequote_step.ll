; ModuleID = '/home/carl/AnghaBench/git/extr_quote.c_sq_dequote_step.c'
source_filename = "/home/carl/AnghaBench/git/extr_quote.c_sq_dequote_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8**)* @sq_dequote_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sq_dequote_step(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 39
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %89

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %57, %28, %16
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %7, align 8
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %8, align 1
  %21 = load i8, i8* %8, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i8* null, i8** %3, align 8
  br label %89

24:                                               ; preds = %17
  %25 = load i8, i8* %8, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 39
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i8, i8* %8, align 1
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %6, align 8
  store i8 %29, i8* %30, align 1
  br label %17

32:                                               ; preds = %24
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %7, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  switch i32 %36, label %66 [
    i32 0, label %37
    i32 92, label %45
  ]

37:                                               ; preds = %32
  %38 = load i8*, i8** %6, align 8
  store i8 0, i8* %38, align 1
  %39 = load i8**, i8*** %5, align 8
  %40 = icmp ne i8** %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i8**, i8*** %5, align 8
  store i8* null, i8** %42, align 8
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i8*, i8** %4, align 8
  store i8* %44, i8** %3, align 8
  br label %89

45:                                               ; preds = %32
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = call i32 @need_bs_quote(i8 signext %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %45
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 39
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %6, align 8
  store i8 %60, i8* %61, align 1
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  store i8* %64, i8** %7, align 8
  br label %17

65:                                               ; preds = %51, %45
  br label %66

66:                                               ; preds = %32, %65
  %67 = load i8**, i8*** %5, align 8
  %68 = icmp ne i8** %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i8*, i8** %7, align 8
  %71 = load i8, i8* %70, align 1
  %72 = call i32 @isspace(i8 signext %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69, %66
  store i8* null, i8** %3, align 8
  br label %89

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %80, %75
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %7, align 8
  %79 = load i8, i8* %78, align 1
  store i8 %79, i8* %8, align 1
  br label %80

80:                                               ; preds = %76
  %81 = load i8, i8* %8, align 1
  %82 = call i32 @isspace(i8 signext %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %76, label %84

84:                                               ; preds = %80
  %85 = load i8*, i8** %6, align 8
  store i8 0, i8* %85, align 1
  %86 = load i8*, i8** %7, align 8
  %87 = load i8**, i8*** %5, align 8
  store i8* %86, i8** %87, align 8
  %88 = load i8*, i8** %4, align 8
  store i8* %88, i8** %3, align 8
  br label %89

89:                                               ; preds = %84, %74, %43, %23, %15
  %90 = load i8*, i8** %3, align 8
  ret i8* %90
}

declare dso_local i32 @need_bs_quote(i8 signext) #1

declare dso_local i32 @isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
