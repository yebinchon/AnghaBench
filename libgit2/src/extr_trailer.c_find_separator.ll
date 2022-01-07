; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_trailer.c_find_separator.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_trailer.c_find_separator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i8*, i8*)* @find_separator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_separator(i64* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i64* %0, i64** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i8*, i8** %6, align 8
  store i8* %10, i8** %9, align 8
  br label %11

11:                                               ; preds = %58, %3
  %12 = load i8*, i8** %9, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %61

15:                                               ; preds = %11
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i8, i8* %17, align 1
  %19 = call i64 @strchr(i8* %16, i8 signext %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = ptrtoint i8* %22 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = load i64*, i64** %5, align 8
  store i64 %26, i64* %27, align 8
  store i32 1, i32* %4, align 4
  br label %62

28:                                               ; preds = %15
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %28
  %32 = load i8*, i8** %9, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call i64 @isalnum(i8 signext %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %9, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 45
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %31
  br label %58

42:                                               ; preds = %36, %28
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = icmp ne i8* %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load i8*, i8** %9, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 32
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %9, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 9
  br i1 %55, label %56, label %57

56:                                               ; preds = %51, %46
  store i32 1, i32* %8, align 4
  br label %58

57:                                               ; preds = %51, %42
  br label %61

58:                                               ; preds = %56, %41
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %9, align 8
  br label %11

61:                                               ; preds = %57, %11
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %21
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i64 @isalnum(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
