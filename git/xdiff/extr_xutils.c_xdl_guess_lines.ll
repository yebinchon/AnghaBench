; ModuleID = '/home/carl/AnghaBench/git/xdiff/extr_xutils.c_xdl_guess_lines.c'
source_filename = "/home/carl/AnghaBench/git/xdiff/extr_xutils.c_xdl_guess_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xdl_guess_lines(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %7, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i8* @xdl_mmfile_first(i32* %11, i64* %6)
  store i8* %12, i8** %8, align 8
  store i8* %12, i8** %9, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %54

14:                                               ; preds = %2
  %15 = load i8*, i8** %8, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8* %17, i8** %10, align 8
  br label %18

18:                                               ; preds = %45, %14
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i8*, i8** %9, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = icmp ult i8* %23, %24
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i1 [ false, %18 ], [ %25, %22 ]
  br i1 %27, label %28, label %46

28:                                               ; preds = %26
  %29 = load i64, i64* %5, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %5, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  %38 = call i8* @memchr(i8* %31, i8 signext 10, i32 %37)
  store i8* %38, i8** %9, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %28
  %41 = load i8*, i8** %10, align 8
  store i8* %41, i8** %9, align 8
  br label %45

42:                                               ; preds = %28
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %9, align 8
  br label %45

45:                                               ; preds = %42, %40
  br label %18

46:                                               ; preds = %26
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = load i64, i64* %7, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* %7, align 8
  br label %54

54:                                               ; preds = %46, %2
  %55 = load i64, i64* %5, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load i64, i64* %7, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i32*, i32** %3, align 8
  %62 = call i64 @xdl_mmfile_size(i32* %61)
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %5, align 8
  %65 = sdiv i64 %63, %64
  %66 = sdiv i64 %62, %65
  store i64 %66, i64* %5, align 8
  br label %67

67:                                               ; preds = %60, %57, %54
  %68 = load i64, i64* %5, align 8
  %69 = add nsw i64 %68, 1
  ret i64 %69
}

declare dso_local i8* @xdl_mmfile_first(i32*, i64*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i64 @xdl_mmfile_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
