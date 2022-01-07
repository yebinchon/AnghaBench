; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_patmatch.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_patmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_pat = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grep_pat*, i8*, i8*, i32*, i32)* @patmatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patmatch(%struct.grep_pat* %0, i8* %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.grep_pat*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.grep_pat* %0, %struct.grep_pat** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.grep_pat*, %struct.grep_pat** %6, align 8
  %13 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %5
  %17 = load %struct.grep_pat*, %struct.grep_pat** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @pcre1match(%struct.grep_pat* %17, i8* %18, i8* %19, i32* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %11, align 4
  br label %58

26:                                               ; preds = %5
  %27 = load %struct.grep_pat*, %struct.grep_pat** %6, align 8
  %28 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load %struct.grep_pat*, %struct.grep_pat** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @pcre2match(%struct.grep_pat* %32, i8* %33, i8* %34, i32* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %11, align 4
  br label %57

41:                                               ; preds = %26
  %42 = load %struct.grep_pat*, %struct.grep_pat** %6, align 8
  %43 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %42, i32 0, i32 0
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @regexec_buf(i32* %43, i8* %44, i32 %50, i32 1, i32* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %41, %31
  br label %58

58:                                               ; preds = %57, %16
  %59 = load i32, i32* %11, align 4
  ret i32 %59
}

declare dso_local i32 @pcre1match(%struct.grep_pat*, i8*, i8*, i32*, i32) #1

declare dso_local i32 @pcre2match(%struct.grep_pat*, i8*, i8*, i32*, i32) #1

declare dso_local i32 @regexec_buf(i32*, i8*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
