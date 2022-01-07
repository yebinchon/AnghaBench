; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_git_diff_tree_to_workdir_with_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_git_diff_tree_to_workdir_with_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_diff_tree_to_workdir_with_index(i32** %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32**, i32*** %6, align 8
  %15 = icmp ne i32** %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br label %19

19:                                               ; preds = %16, %4
  %20 = phi i1 [ false, %4 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32**, i32*** %6, align 8
  store i32* null, i32** %23, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @diff_load_index(i32** %12, i32* %24)
  store i32 %25, i32* %13, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %5, align 4
  br label %58

29:                                               ; preds = %19
  %30 = load i32*, i32** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @git_diff_tree_to_index(i32** %10, i32* %30, i32* %31, i32* %32, i32* %33)
  store i32 %34, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %29
  %37 = load i32*, i32** %7, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @git_diff_index_to_workdir(i32** %11, i32* %37, i32* %38, i32* %39)
  store i32 %40, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = load i32*, i32** %10, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @git_diff_merge(i32* %43, i32* %44)
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %42, %36, %29
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @git_diff_free(i32* %47)
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @git_diff_free(i32* %52)
  store i32* null, i32** %10, align 8
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32*, i32** %10, align 8
  %56 = load i32**, i32*** %6, align 8
  store i32* %55, i32** %56, align 8
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %27
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @diff_load_index(i32**, i32*) #1

declare dso_local i32 @git_diff_tree_to_index(i32**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @git_diff_merge(i32*, i32*) #1

declare dso_local i32 @git_diff_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
