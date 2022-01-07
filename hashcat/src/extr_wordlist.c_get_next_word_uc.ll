; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_wordlist.c_get_next_word_uc.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_wordlist.c_get_next_word_uc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_next_word_uc(i8* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %59, %4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %64

16:                                               ; preds = %12
  %17 = load i8*, i8** %9, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp sge i32 %19, 97
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load i8*, i8** %9, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp sle i32 %24, 122
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i8*, i8** %9, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = sub nsw i32 %29, 32
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %27, align 1
  br label %32

32:                                               ; preds = %26, %21, %16
  %33 = load i8*, i8** %9, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 10
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %59

38:                                               ; preds = %32
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  %41 = load i32*, i32** %8, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 13
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %53, %44, %38
  %57 = load i32, i32* %10, align 4
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  br label %69

59:                                               ; preds = %37
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %9, align 8
  br label %12

64:                                               ; preds = %12
  %65 = load i32, i32* %6, align 4
  %66 = load i32*, i32** %8, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32*, i32** %7, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %64, %56
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
