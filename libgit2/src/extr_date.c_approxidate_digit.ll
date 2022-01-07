; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_date.c_approxidate_digit.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_date.c_approxidate_digit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.tm*, i32*)* @approxidate_digit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @approxidate_digit(i8* %0, %struct.tm* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tm*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.tm* %1, %struct.tm** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @strtoul(i8* %11, i8** %8, i32 10)
  store i64 %12, i64* %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  switch i32 %15, label %38 [
    i32 58, label %16
    i32 46, label %16
    i32 47, label %16
    i32 45, label %16
  ]

16:                                               ; preds = %3, %3, %3, %3
  %17 = load i8*, i8** %8, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = call i32 @isdigit(i8 signext %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %16
  %23 = load i64, i64* %9, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i8, i8* %24, align 1
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load %struct.tm*, %struct.tm** %6, align 8
  %29 = call i64 @match_multi_number(i64 %23, i8 signext %25, i8* %26, i8* %27, %struct.tm* %28)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load i8*, i8** %5, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %4, align 8
  br label %57

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %36, %16
  br label %38

38:                                               ; preds = %37, %3
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 48
  br i1 %43, label %51, label %44

44:                                               ; preds = %38
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = icmp sle i64 %49, 2
  br i1 %50, label %51, label %55

51:                                               ; preds = %44, %38
  %52 = load i64, i64* %9, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i32*, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %44
  %56 = load i8*, i8** %8, align 8
  store i8* %56, i8** %4, align 8
  br label %57

57:                                               ; preds = %55, %32
  %58 = load i8*, i8** %4, align 8
  ret i8* %58
}

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i64 @match_multi_number(i64, i8 signext, i8*, i8*, %struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
