; ModuleID = '/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_utf8.h_utf8casecmp.c'
source_filename = "/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_utf8.h_utf8casecmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utf8casecmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %10

10:                                               ; preds = %44, %31, %2
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @utf8codepoint(i8* %11, i64* %6)
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @utf8codepoint(i8* %13, i64* %7)
  store i8* %14, i8** %5, align 8
  %15 = load i64, i64* %6, align 8
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %7, align 8
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @utf8lwrcodepoint(i64 %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @utf8lwrcodepoint(i64 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp eq i64 0, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %10
  %24 = load i64, i64* %9, align 8
  %25 = icmp eq i64 0, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %45

27:                                               ; preds = %23, %10
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %10

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 -1, i32* %3, align 4
  br label %45

38:                                               ; preds = %33
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %45

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43
  br label %10

45:                                               ; preds = %42, %37, %26
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i8* @utf8codepoint(i8*, i64*) #1

declare dso_local i64 @utf8lwrcodepoint(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
