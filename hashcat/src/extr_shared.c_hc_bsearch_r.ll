; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_shared.c_hc_bsearch_r.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_shared.c_hc_bsearch_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hc_bsearch_r(i8* %0, i8* %1, i64 %2, i64 %3, i32 (i8*, i8*, i8*)* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32 (i8*, i8*, i8*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 (i8*, i8*, i8*)* %4, i32 (i8*, i8*, i8*)** %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 0, i64* %14, align 8
  %20 = load i64, i64* %10, align 8
  store i64 %20, i64* %15, align 8
  br label %21

21:                                               ; preds = %55, %6
  %22 = load i64, i64* %15, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %58

24:                                               ; preds = %21
  %25 = load i64, i64* %15, align 8
  %26 = lshr i64 %25, 1
  store i64 %26, i64* %16, align 8
  %27 = load i64, i64* %14, align 8
  %28 = load i64, i64* %16, align 8
  %29 = add i64 %27, %28
  store i64 %29, i64* %17, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i64, i64* %17, align 8
  %32 = load i64, i64* %11, align 8
  %33 = mul i64 %31, %32
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  store i8* %34, i8** %18, align 8
  %35 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %12, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %18, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = call i32 %35(i8* %36, i8* %37, i8* %38)
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %19, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %24
  %43 = load i64, i64* %16, align 8
  %44 = add i64 %43, 1
  %45 = load i64, i64* %14, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %14, align 8
  %47 = load i64, i64* %15, align 8
  %48 = add i64 %47, -1
  store i64 %48, i64* %15, align 8
  br label %49

49:                                               ; preds = %42, %24
  %50 = load i32, i32* %19, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i8*, i8** %18, align 8
  store i8* %53, i8** %7, align 8
  br label %59

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %15, align 8
  %57 = lshr i64 %56, 1
  store i64 %57, i64* %15, align 8
  br label %21

58:                                               ; preds = %21
  store i8* null, i8** %7, align 8
  br label %59

59:                                               ; preds = %58, %52
  %60 = load i8*, i8** %7, align 8
  ret i8* %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
