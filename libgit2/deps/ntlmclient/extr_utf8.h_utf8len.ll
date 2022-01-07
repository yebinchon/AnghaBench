; ModuleID = '/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_utf8.h_utf8len.c'
source_filename = "/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_utf8.h_utf8len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @utf8len(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  store i8* %5, i8** %3, align 8
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %43, %1
  %7 = load i8*, i8** %3, align 8
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp ne i32 0, %9
  br i1 %10, label %11, label %46

11:                                               ; preds = %6
  %12 = load i8*, i8** %3, align 8
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 248, %14
  %16 = icmp eq i32 240, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 4
  store i8* %19, i8** %3, align 8
  br label %43

20:                                               ; preds = %11
  %21 = load i8*, i8** %3, align 8
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 240, %23
  %25 = icmp eq i32 224, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 3
  store i8* %28, i8** %3, align 8
  br label %42

29:                                               ; preds = %20
  %30 = load i8*, i8** %3, align 8
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 224, %32
  %34 = icmp eq i32 192, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i8*, i8** %3, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  store i8* %37, i8** %3, align 8
  br label %41

38:                                               ; preds = %29
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  store i8* %40, i8** %3, align 8
  br label %41

41:                                               ; preds = %38, %35
  br label %42

42:                                               ; preds = %41, %26
  br label %43

43:                                               ; preds = %42, %17
  %44 = load i64, i64* %4, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %4, align 8
  br label %6

46:                                               ; preds = %6
  %47 = load i64, i64* %4, align 8
  ret i64 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
