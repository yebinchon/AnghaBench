; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_strmap.c_insert_strings.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_strmap.c_insert_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @insert_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_strings(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %56, %2
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %59

13:                                               ; preds = %9
  %14 = call i8* @malloc(i32 10)
  store i8* %14, i8** %8, align 8
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %26, %13
  %16 = load i64, i64* %6, align 8
  %17 = icmp ult i64 %16, 10
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load i64, i64* %5, align 8
  %20 = urem i64 %19, 26
  %21 = add i64 97, %20
  %22 = trunc i64 %21 to i8
  %23 = load i8*, i8** %8, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8 %22, i8* %25, align 1
  br label %26

26:                                               ; preds = %18
  %27 = load i64, i64* %6, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %6, align 8
  br label %15

29:                                               ; preds = %15
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 9
  store i8 0, i8* %31, align 1
  store i64 0, i64* %6, align 8
  %32 = load i64, i64* %5, align 8
  %33 = udiv i64 %32, 26
  store i64 %33, i64* %7, align 8
  br label %34

34:                                               ; preds = %45, %29
  %35 = load i64, i64* %7, align 8
  %36 = icmp ugt i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load i64, i64* %7, align 8
  %39 = urem i64 %38, 26
  %40 = add i64 65, %39
  %41 = trunc i64 %40 to i8
  %42 = load i8*, i8** %8, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8 %41, i8* %44, align 1
  br label %45

45:                                               ; preds = %37
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = udiv i64 %48, 26
  store i64 %49, i64* %7, align 8
  br label %34

50:                                               ; preds = %34
  %51 = load i32*, i32** %3, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @git_strmap_set(i32* %51, i8* %52, i8* %53)
  %55 = call i32 @cl_git_pass(i32 %54)
  br label %56

56:                                               ; preds = %50
  %57 = load i64, i64* %5, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %5, align 8
  br label %9

59:                                               ; preds = %9
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @git_strmap_size(i32* %60)
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @cl_assert_equal_i(i32 %61, i64 %62)
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_strmap_set(i32*, i8*, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i64) #1

declare dso_local i32 @git_strmap_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
