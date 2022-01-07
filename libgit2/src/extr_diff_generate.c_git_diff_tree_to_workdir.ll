; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_git_diff_tree_to_workdir.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_git_diff_tree_to_workdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global i32 0, align 4
@GIT_ITERATOR_DONT_AUTOEXPAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_diff_tree_to_workdir(i32** %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %17 = load i32, i32* @GIT_ITERATOR_OPTIONS_INIT, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @GIT_ITERATOR_OPTIONS_INIT, align 4
  store i32 %18, i32* %10, align 4
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i8* null, i8** %14, align 8
  %19 = load i32**, i32*** %5, align 8
  %20 = icmp ne i32** %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br label %24

24:                                               ; preds = %21, %4
  %25 = phi i1 [ false, %4 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32**, i32*** %5, align 8
  store i32* null, i32** %28, align 8
  %29 = load i32, i32* @GIT_ITERATOR_DONT_AUTOEXPAND, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = call i64 @diff_prepare_iterator_opts(i8** %14, i32* %9, i32 0, i32* %10, i32 %29, i32* %30)
  %32 = icmp slt i64 %31, 0
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %16, align 4
  br i1 %32, label %55, label %34

34:                                               ; preds = %24
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @git_repository_index__weakptr(i32** %15, i32* %35)
  store i32 %36, i32* %16, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %55, label %38

38:                                               ; preds = %34
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @git_iterator_for_tree(i32** %11, i32* %39, i32* %9)
  store i32 %40, i32* %16, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %38
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** %15, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @git_iterator_for_workdir(i32** %12, i32* %43, i32* %44, i32* %45, i32* %10)
  store i32 %46, i32* %16, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %42
  %49 = load i32*, i32** %6, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @git_diff__from_iterators(i32** %13, i32* %49, i32* %50, i32* %51, i32* %52)
  store i32 %53, i32* %16, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48, %42, %38, %34, %24
  br label %59

56:                                               ; preds = %48
  %57 = load i32*, i32** %13, align 8
  %58 = load i32**, i32*** %5, align 8
  store i32* %57, i32** %58, align 8
  store i32* null, i32** %13, align 8
  br label %59

59:                                               ; preds = %56, %55
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @git_iterator_free(i32* %60)
  %62 = load i32*, i32** %12, align 8
  %63 = call i32 @git_iterator_free(i32* %62)
  %64 = load i32*, i32** %13, align 8
  %65 = call i32 @git_diff_free(i32* %64)
  %66 = load i8*, i8** %14, align 8
  %67 = call i32 @git__free(i8* %66)
  %68 = load i32, i32* %16, align 4
  ret i32 %68
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @diff_prepare_iterator_opts(i8**, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @git_repository_index__weakptr(i32**, i32*) #1

declare dso_local i32 @git_iterator_for_tree(i32**, i32*, i32*) #1

declare dso_local i32 @git_iterator_for_workdir(i32**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @git_diff__from_iterators(i32**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @git_iterator_free(i32*) #1

declare dso_local i32 @git_diff_free(i32*) #1

declare dso_local i32 @git__free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
