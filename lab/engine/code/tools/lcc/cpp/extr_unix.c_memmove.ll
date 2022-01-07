; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/cpp/extr_unix.c_memmove.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/cpp/extr_unix.c_memmove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @memmove(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp ule i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %4, align 8
  br label %52

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ult i8* %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %27, %20
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %9, align 8
  %24 = load i8, i8* %22, align 1
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %8, align 8
  store i8 %24, i8* %25, align 1
  br label %27

27:                                               ; preds = %21
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %28, -1
  store i64 %29, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %21, label %31

31:                                               ; preds = %27
  br label %50

32:                                               ; preds = %14
  %33 = load i64, i64* %7, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 %33
  store i8* %35, i8** %8, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 %36
  store i8* %38, i8** %9, align 8
  br label %39

39:                                               ; preds = %45, %32
  %40 = load i8*, i8** %9, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 -1
  store i8* %41, i8** %9, align 8
  %42 = load i8, i8* %41, align 1
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 -1
  store i8* %44, i8** %8, align 8
  store i8 %42, i8* %44, align 1
  br label %45

45:                                               ; preds = %39
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, -1
  store i64 %47, i64* %7, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %39, label %49

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %49, %31
  %51 = load i8*, i8** %5, align 8
  store i8* %51, i8** %4, align 8
  br label %52

52:                                               ; preds = %50, %12
  %53 = load i8*, i8** %4, align 8
  ret i8* %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
