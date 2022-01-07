; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge.c_merge_annotated_commits.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge.c_merge_annotated_commits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32**, i32*, i32*, i32*, i64, i32*)* @merge_annotated_commits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_annotated_commits(i32** %0, i32** %1, i32* %2, i32* %3, i32* %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i32** %0, i32*** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32* %6, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = load i32*, i32** %14, align 8
  %24 = load i64, i64* %13, align 8
  %25 = call i32 @compute_base(i32** %15, i32* %20, i32* %21, i32* %22, i32* %23, i64 %24)
  store i32 %25, i32* %19, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %7
  %28 = load i32, i32* %19, align 4
  %29 = load i32, i32* @GIT_ENOTFOUND, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %63

32:                                               ; preds = %27
  %33 = call i32 (...) @git_error_clear()
  br label %34

34:                                               ; preds = %32, %7
  %35 = load i32*, i32** %15, align 8
  %36 = call i32 @iterator_for_annotated_commit(i32** %16, i32* %35)
  store i32 %36, i32* %19, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %55, label %38

38:                                               ; preds = %34
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @iterator_for_annotated_commit(i32** %17, i32* %39)
  store i32 %40, i32* %19, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %38
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @iterator_for_annotated_commit(i32** %18, i32* %43)
  store i32 %44, i32* %19, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %42
  %47 = load i32**, i32*** %8, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32*, i32** %16, align 8
  %50 = load i32*, i32** %17, align 8
  %51 = load i32*, i32** %18, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = call i32 @git_merge__iterators(i32** %47, i32* %48, i32* %49, i32* %50, i32* %51, i32* %52)
  store i32 %53, i32* %19, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46, %42, %38, %34
  br label %63

56:                                               ; preds = %46
  %57 = load i32**, i32*** %9, align 8
  %58 = icmp ne i32** %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32*, i32** %15, align 8
  %61 = load i32**, i32*** %9, align 8
  store i32* %60, i32** %61, align 8
  store i32* null, i32** %15, align 8
  br label %62

62:                                               ; preds = %59, %56
  br label %63

63:                                               ; preds = %62, %55, %31
  %64 = load i32*, i32** %15, align 8
  %65 = call i32 @git_annotated_commit_free(i32* %64)
  %66 = load i32*, i32** %16, align 8
  %67 = call i32 @git_iterator_free(i32* %66)
  %68 = load i32*, i32** %17, align 8
  %69 = call i32 @git_iterator_free(i32* %68)
  %70 = load i32*, i32** %18, align 8
  %71 = call i32 @git_iterator_free(i32* %70)
  %72 = load i32, i32* %19, align 4
  ret i32 %72
}

declare dso_local i32 @compute_base(i32**, i32*, i32*, i32*, i32*, i64) #1

declare dso_local i32 @git_error_clear(...) #1

declare dso_local i32 @iterator_for_annotated_commit(i32**, i32*) #1

declare dso_local i32 @git_merge__iterators(i32**, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @git_annotated_commit_free(i32*) #1

declare dso_local i32 @git_iterator_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
