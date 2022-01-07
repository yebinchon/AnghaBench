; ModuleID = '/home/carl/AnghaBench/libgit2/tests/apply/extr_apply_helpers.c_validate_index_unchanged.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/apply/extr_apply_helpers.c_validate_index_unchanged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iterator_eq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @validate_index_unchanged(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [2 x i32*], align 16
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @git_repository_head_tree(i32** %3, i32* %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @git_repository_index(i32** %4, i32* %11)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @git_iterator_for_tree(i32** %5, i32* %14, i32* null)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @git_iterator_for_index(i32** %6, i32* %17, i32* %18, i32* null)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  store i32* %21, i32** %22, align 16
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 1
  store i32* %23, i32** %24, align 8
  %25 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  %26 = load i32, i32* @iterator_eq, align 4
  %27 = call i32 @git_iterator_walk(i32** %25, i32 2, i32 %26, i32* null)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @git_iterator_free(i32* %29)
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @git_iterator_free(i32* %31)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @git_tree_free(i32* %33)
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @git_index_free(i32* %35)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_head_tree(i32**, i32*) #1

declare dso_local i32 @git_repository_index(i32**, i32*) #1

declare dso_local i32 @git_iterator_for_tree(i32**, i32*, i32*) #1

declare dso_local i32 @git_iterator_for_index(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @git_iterator_walk(i32**, i32, i32, i32*) #1

declare dso_local i32 @git_iterator_free(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
