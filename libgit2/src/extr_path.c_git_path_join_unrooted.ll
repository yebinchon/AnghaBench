; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_path.c_git_path_join_unrooted.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_path.c_git_path_join_unrooted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_path_join_unrooted(i32* %0, i8* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br label %16

16:                                               ; preds = %13, %4
  %17 = phi i1 [ false, %4 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @git_path_root(i8* %20)
  store i64 %21, i64* %10, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %16
  %25 = load i64, i64* %10, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i32*, i32** %6, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i64 @git_buf_joinpath(i32* %28, i8* %29, i8* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 -1, i32* %5, align 4
  br label %63

34:                                               ; preds = %27
  %35 = load i8*, i8** %8, align 8
  %36 = call i64 @strlen(i8* %35)
  store i64 %36, i64* %10, align 8
  br label %56

37:                                               ; preds = %24, %16
  %38 = load i32*, i32** %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i64 @git_buf_sets(i32* %38, i8* %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 -1, i32* %5, align 4
  br label %63

43:                                               ; preds = %37
  %44 = load i64, i64* %10, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i64 0, i64* %10, align 8
  br label %55

47:                                               ; preds = %43
  %48 = load i8*, i8** %8, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @git_path_equal_or_prefixed(i8* %51, i8* %52, i64* %10)
  br label %54

54:                                               ; preds = %50, %47
  br label %55

55:                                               ; preds = %54, %46
  br label %56

56:                                               ; preds = %55, %34
  %57 = load i64*, i64** %9, align 8
  %58 = icmp ne i64* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i64, i64* %10, align 8
  %61 = load i64*, i64** %9, align 8
  store i64 %60, i64* %61, align 8
  br label %62

62:                                               ; preds = %59, %56
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %42, %33
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @git_path_root(i8*) #1

declare dso_local i64 @git_buf_joinpath(i32*, i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @git_buf_sets(i32*, i8*) #1

declare dso_local i32 @git_path_equal_or_prefixed(i8*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
