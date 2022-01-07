; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_git_diff_index_to_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_git_diff_index_to_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global i32 0, align 4
@GIT_ITERATOR_DONT_IGNORE_CASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_diff_index_to_index(i32** %0, i32* %1, %struct.TYPE_5__* %2, %struct.TYPE_5__* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  store i32* %4, i32** %10, align 8
  %18 = load i32, i32* @GIT_ITERATOR_OPTIONS_INIT, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* @GIT_ITERATOR_OPTIONS_INIT, align 4
  store i32 %19, i32* %12, align 4
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i8* null, i8** %16, align 8
  %20 = load i32**, i32*** %6, align 8
  %21 = icmp ne i32** %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %5
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %27 = icmp ne %struct.TYPE_5__* %26, null
  br label %28

28:                                               ; preds = %25, %22, %5
  %29 = phi i1 [ false, %22 ], [ false, %5 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32**, i32*** %6, align 8
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* @GIT_ITERATOR_DONT_IGNORE_CASE, align 4
  %34 = load i32, i32* @GIT_ITERATOR_DONT_IGNORE_CASE, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = call i64 @diff_prepare_iterator_opts(i8** %16, i32* %11, i32 %33, i32* %12, i32 %34, i32* %35)
  %37 = icmp slt i64 %36, 0
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %17, align 4
  br i1 %37, label %56, label %39

39:                                               ; preds = %28
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %42 = call i32 @git_iterator_for_index(i32** %13, i32* %40, %struct.TYPE_5__* %41, i32* %11)
  store i32 %42, i32* %17, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %39
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %47 = call i32 @git_iterator_for_index(i32** %14, i32* %45, %struct.TYPE_5__* %46, i32* %12)
  store i32 %47, i32* %17, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %44
  %50 = load i32*, i32** %7, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @git_diff__from_iterators(i32** %15, i32* %50, i32* %51, i32* %52, i32* %53)
  store i32 %54, i32* %17, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49, %44, %39, %28
  br label %73

57:                                               ; preds = %49
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62, %57
  %68 = load i32*, i32** %15, align 8
  %69 = call i32 @git_diff__set_ignore_case(i32* %68, i32 1)
  br label %70

70:                                               ; preds = %67, %62
  %71 = load i32*, i32** %15, align 8
  %72 = load i32**, i32*** %6, align 8
  store i32* %71, i32** %72, align 8
  store i32* null, i32** %15, align 8
  br label %73

73:                                               ; preds = %70, %56
  %74 = load i32*, i32** %13, align 8
  %75 = call i32 @git_iterator_free(i32* %74)
  %76 = load i32*, i32** %14, align 8
  %77 = call i32 @git_iterator_free(i32* %76)
  %78 = load i32*, i32** %15, align 8
  %79 = call i32 @git_diff_free(i32* %78)
  %80 = load i8*, i8** %16, align 8
  %81 = call i32 @git__free(i8* %80)
  %82 = load i32, i32* %17, align 4
  ret i32 %82
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @diff_prepare_iterator_opts(i8**, i32*, i32, i32*, i32, i32*) #1

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
