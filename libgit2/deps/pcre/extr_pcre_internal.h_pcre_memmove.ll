; ModuleID = '/home/carl/AnghaBench/libgit2/deps/pcre/extr_pcre_internal.h_pcre_memmove.c'
source_filename = "/home/carl/AnghaBench/libgit2/deps/pcre/extr_pcre_internal.h_pcre_memmove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i64)* @pcre_memmove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pcre_memmove(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %10, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = icmp ugt i8* %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 %17
  store i8* %19, i8** %9, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 %20
  store i8* %22, i8** %10, align 8
  store i64 0, i64* %8, align 8
  br label %23

23:                                               ; preds = %33, %16
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load i8*, i8** %10, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 -1
  store i8* %29, i8** %10, align 8
  %30 = load i8, i8* %29, align 1
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 -1
  store i8* %32, i8** %9, align 8
  store i8 %30, i8* %32, align 1
  br label %33

33:                                               ; preds = %27
  %34 = load i64, i64* %8, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %8, align 8
  br label %23

36:                                               ; preds = %23
  %37 = load i8*, i8** %9, align 8
  store i8* %37, i8** %4, align 8
  br label %57

38:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %39

39:                                               ; preds = %49, %38
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %10, align 8
  %46 = load i8, i8* %44, align 1
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %9, align 8
  store i8 %46, i8* %47, align 1
  br label %49

49:                                               ; preds = %43
  %50 = load i64, i64* %8, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %8, align 8
  br label %39

52:                                               ; preds = %39
  %53 = load i8*, i8** %9, align 8
  %54 = load i64, i64* %7, align 8
  %55 = sub i64 0, %54
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  store i8* %56, i8** %4, align 8
  br label %57

57:                                               ; preds = %52, %36
  %58 = load i8*, i8** %4, align 8
  ret i8* %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
