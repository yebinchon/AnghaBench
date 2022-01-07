; ModuleID = '/home/carl/AnghaBench/libgit2/deps/pcre/extr_pcre_compile.c_is_counted_repeat.c'
source_filename = "/home/carl/AnghaBench/libgit2/deps/pcre/extr_pcre_compile.c_is_counted_repeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@CHAR_RIGHT_CURLY_BRACKET = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@CHAR_COMMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*)* @is_counted_repeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_counted_repeat(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call i64 @IS_DIGIT(i64 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %2, align 4
  br label %67

10:                                               ; preds = %1
  %11 = load i64*, i64** %3, align 8
  %12 = getelementptr inbounds i64, i64* %11, i32 1
  store i64* %12, i64** %3, align 8
  br label %13

13:                                               ; preds = %18, %10
  %14 = load i64*, i64** %3, align 8
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @IS_DIGIT(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i64*, i64** %3, align 8
  %20 = getelementptr inbounds i64, i64* %19, i32 1
  store i64* %20, i64** %3, align 8
  br label %13

21:                                               ; preds = %13
  %22 = load i64*, i64** %3, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CHAR_RIGHT_CURLY_BRACKET, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* %2, align 4
  br label %67

28:                                               ; preds = %21
  %29 = load i64*, i64** %3, align 8
  %30 = getelementptr inbounds i64, i64* %29, i32 1
  store i64* %30, i64** %3, align 8
  %31 = load i64, i64* %29, align 8
  %32 = load i64, i64* @CHAR_COMMA, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %2, align 4
  br label %67

36:                                               ; preds = %28
  %37 = load i64*, i64** %3, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CHAR_RIGHT_CURLY_BRACKET, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @TRUE, align 4
  store i32 %42, i32* %2, align 4
  br label %67

43:                                               ; preds = %36
  %44 = load i64*, i64** %3, align 8
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @IS_DIGIT(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %2, align 4
  br label %67

50:                                               ; preds = %43
  %51 = load i64*, i64** %3, align 8
  %52 = getelementptr inbounds i64, i64* %51, i32 1
  store i64* %52, i64** %3, align 8
  br label %53

53:                                               ; preds = %58, %50
  %54 = load i64*, i64** %3, align 8
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @IS_DIGIT(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i64*, i64** %3, align 8
  %60 = getelementptr inbounds i64, i64* %59, i32 1
  store i64* %60, i64** %3, align 8
  br label %53

61:                                               ; preds = %53
  %62 = load i64*, i64** %3, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CHAR_RIGHT_CURLY_BRACKET, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %61, %48, %41, %34, %26, %8
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i64 @IS_DIGIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
