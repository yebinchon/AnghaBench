; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_git_diff_tree_to_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_git_diff_tree_to_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_ITERATOR_DONT_IGNORE_CASE = common dso_local global i32 0, align 4
@GIT_ITERATOR_INCLUDE_CONFLICTS = common dso_local global i32 0, align 4
@GIT_ITERATOR_OPTIONS_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_diff_tree_to_index(i32** %0, i32* %1, i32* %2, %struct.TYPE_5__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load i32, i32* @GIT_ITERATOR_DONT_IGNORE_CASE, align 4
  %22 = load i32, i32* @GIT_ITERATOR_INCLUDE_CONFLICTS, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* @GIT_ITERATOR_OPTIONS_INIT, align 4
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* @GIT_ITERATOR_OPTIONS_INIT, align 4
  store i32 %25, i32* %14, align 4
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i8* null, i8** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %26 = load i32**, i32*** %7, align 8
  %27 = icmp ne i32** %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i32*, i32** %8, align 8
  %30 = icmp ne i32* %29, null
  br label %31

31:                                               ; preds = %28, %5
  %32 = phi i1 [ false, %5 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32**, i32*** %7, align 8
  store i32* null, i32** %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %37 = icmp ne %struct.TYPE_5__* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %31
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @diff_load_index(%struct.TYPE_5__** %10, i32* %39)
  store i32 %40, i32* %20, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* %20, align 4
  store i32 %43, i32* %6, align 4
  br label %89

44:                                               ; preds = %38, %31
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %19, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @diff_prepare_iterator_opts(i8** %18, i32* %13, i32 %48, i32* %14, i32 %49, i32* %50)
  store i32 %51, i32* %20, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %69, label %53

53:                                               ; preds = %44
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @git_iterator_for_tree(i32** %15, i32* %54, i32* %13)
  store i32 %55, i32* %20, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %53
  %58 = load i32*, i32** %8, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %60 = call i32 @git_iterator_for_index(i32** %16, i32* %58, %struct.TYPE_5__* %59, i32* %14)
  store i32 %60, i32* %20, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %57
  %63 = load i32*, i32** %8, align 8
  %64 = load i32*, i32** %15, align 8
  %65 = load i32*, i32** %16, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @git_diff__from_iterators(i32** %17, i32* %63, i32* %64, i32* %65, i32* %66)
  store i32 %67, i32* %20, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62, %57, %53, %44
  br label %79

70:                                               ; preds = %62
  %71 = load i32, i32* %19, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32*, i32** %17, align 8
  %75 = call i32 @git_diff__set_ignore_case(i32* %74, i32 1)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32*, i32** %17, align 8
  %78 = load i32**, i32*** %7, align 8
  store i32* %77, i32** %78, align 8
  store i32* null, i32** %17, align 8
  br label %79

79:                                               ; preds = %76, %69
  %80 = load i32*, i32** %15, align 8
  %81 = call i32 @git_iterator_free(i32* %80)
  %82 = load i32*, i32** %16, align 8
  %83 = call i32 @git_iterator_free(i32* %82)
  %84 = load i32*, i32** %17, align 8
  %85 = call i32 @git_diff_free(i32* %84)
  %86 = load i8*, i8** %18, align 8
  %87 = call i32 @git__free(i8* %86)
  %88 = load i32, i32* %20, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %79, %42
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @diff_load_index(%struct.TYPE_5__**, i32*) #1

declare dso_local i32 @diff_prepare_iterator_opts(i8**, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @git_iterator_for_tree(i32**, i32*, i32*) #1

declare dso_local i32 @git_iterator_for_index(i32**, i32*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @git_diff__from_iterators(i32**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @git_diff__set_ignore_case(i32*, i32) #1

declare dso_local i32 @git_iterator_free(i32*) #1

declare dso_local i32 @git_diff_free(i32*) #1

declare dso_local i32 @git__free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
