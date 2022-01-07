; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_git_diff_tree_to_tree.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_git_diff_tree_to_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_ITERATOR_DONT_IGNORE_CASE = common dso_local global i32 0, align 4
@GIT_ITERATOR_OPTIONS_INIT = common dso_local global i32 0, align 4
@GIT_DIFF_IGNORE_CASE = common dso_local global i32 0, align 4
@GIT_ITERATOR_IGNORE_CASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_diff_tree_to_tree(i32** %0, i32* %1, i32* %2, i32* %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %10, align 8
  %19 = load i32, i32* @GIT_ITERATOR_DONT_IGNORE_CASE, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* @GIT_ITERATOR_OPTIONS_INIT, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* @GIT_ITERATOR_OPTIONS_INIT, align 4
  store i32 %21, i32* %13, align 4
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i8* null, i8** %17, align 8
  store i32 0, i32* %18, align 4
  %22 = load i32**, i32*** %6, align 8
  %23 = icmp ne i32** %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32*, i32** %7, align 8
  %26 = icmp ne i32* %25, null
  br label %27

27:                                               ; preds = %24, %5
  %28 = phi i1 [ false, %5 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32**, i32*** %6, align 8
  store i32* null, i32** %31, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %33 = icmp ne %struct.TYPE_5__* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @GIT_DIFF_IGNORE_CASE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @GIT_ITERATOR_IGNORE_CASE, align 4
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %41, %34, %27
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %47 = call i32 @diff_prepare_iterator_opts(i8** %17, i32* %12, i32 %44, i32* %13, i32 %45, %struct.TYPE_5__* %46)
  store i32 %47, i32* %18, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %64, label %49

49:                                               ; preds = %43
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @git_iterator_for_tree(i32** %14, i32* %50, i32* %12)
  store i32 %51, i32* %18, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %49
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @git_iterator_for_tree(i32** %15, i32* %54, i32* %13)
  store i32 %55, i32* %18, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %53
  %58 = load i32*, i32** %7, align 8
  %59 = load i32*, i32** %14, align 8
  %60 = load i32*, i32** %15, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %62 = call i32 @git_diff__from_iterators(i32** %16, i32* %58, i32* %59, i32* %60, %struct.TYPE_5__* %61)
  store i32 %62, i32* %18, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57, %53, %49, %43
  br label %68

65:                                               ; preds = %57
  %66 = load i32*, i32** %16, align 8
  %67 = load i32**, i32*** %6, align 8
  store i32* %66, i32** %67, align 8
  store i32* null, i32** %16, align 8
  br label %68

68:                                               ; preds = %65, %64
  %69 = load i32*, i32** %14, align 8
  %70 = call i32 @git_iterator_free(i32* %69)
  %71 = load i32*, i32** %15, align 8
  %72 = call i32 @git_iterator_free(i32* %71)
  %73 = load i32*, i32** %16, align 8
  %74 = call i32 @git_diff_free(i32* %73)
  %75 = load i8*, i8** %17, align 8
  %76 = call i32 @git__free(i8* %75)
  %77 = load i32, i32* %18, align 4
  ret i32 %77
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @diff_prepare_iterator_opts(i8**, i32*, i32, i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @git_iterator_for_tree(i32**, i32*, i32*) #1

declare dso_local i32 @git_diff__from_iterators(i32**, i32*, i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @git_iterator_free(i32*) #1

declare dso_local i32 @git_diff_free(i32*) #1

declare dso_local i32 @git__free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
