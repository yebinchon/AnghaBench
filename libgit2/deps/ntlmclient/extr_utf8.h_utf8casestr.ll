; ModuleID = '/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_utf8.h_utf8casestr.c'
source_filename = "/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_utf8.h_utf8casestr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@utf8_null = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @utf8casestr(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 0, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %3, align 8
  br label %59

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %58, %18
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %5, align 8
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @utf8codepoint(i8* %22, i64* %9)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i8* @utf8codepoint(i8* %24, i64* %10)
  store i8* %25, i8** %8, align 8
  br label %26

26:                                               ; preds = %43, %19
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 0, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i64, i64* %10, align 8
  %31 = icmp ne i64 0, %30
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi i1 [ false, %26 ], [ %31, %29 ]
  br i1 %33, label %34, label %48

34:                                               ; preds = %32
  %35 = load i64, i64* %9, align 8
  %36 = call i64 @utf8lwrcodepoint(i64 %35)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i64 @utf8lwrcodepoint(i64 %37)
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %48

43:                                               ; preds = %34
  %44 = load i8*, i8** %6, align 8
  %45 = call i8* @utf8codepoint(i8* %44, i64* %9)
  store i8* %45, i8** %6, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i8* @utf8codepoint(i8* %46, i64* %10)
  store i8* %47, i8** %8, align 8
  br label %26

48:                                               ; preds = %42, %32
  %49 = load i64, i64* %10, align 8
  %50 = icmp eq i64 0, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i8*, i8** %7, align 8
  store i8* %52, i8** %3, align 8
  br label %59

53:                                               ; preds = %48
  %54 = load i64, i64* %9, align 8
  %55 = icmp eq i64 0, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i8*, i8** @utf8_null, align 8
  store i8* %57, i8** %3, align 8
  br label %59

58:                                               ; preds = %53
  br label %19

59:                                               ; preds = %56, %51, %16
  %60 = load i8*, i8** %3, align 8
  ret i8* %60
}

declare dso_local i8* @utf8codepoint(i8*, i64*) #1

declare dso_local i64 @utf8lwrcodepoint(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
