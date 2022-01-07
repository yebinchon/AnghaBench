; ModuleID = '/home/carl/AnghaBench/libgit2/tests/threads/extr_diff.c_run_index_diffs_with_modifier.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/threads/extr_diff.c_run_index_diffs_with_modifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"new_file\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"modified_file\00", align 1
@_a = common dso_local global i32 0, align 4
@_b = common dso_local global i32 0, align 4
@GIT_DIFF_REVERSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @run_index_diffs_with_modifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @run_index_diffs_with_modifier(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = bitcast %struct.TYPE_5__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 4, i1 false)
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %13 = load i32, i32* @_repo, align 4
  %14 = call i32 @git_repository_path(i32 %13)
  %15 = call i32 @git_repository_open(i32** %7, i32 %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @git_repository_index(i32** %6, i32* %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %43, %22
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 300
  br i1 %25, label %26, label %46

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, 3
  switch i32 %28, label %41 [
    i32 0, label %29
    i32 1, label %32
    i32 2, label %35
    i32 3, label %38
  ]

29:                                               ; preds = %26
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @git_index_add_bypath(i32* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %41

32:                                               ; preds = %26
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @git_index_remove_bypath(i32* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %41

35:                                               ; preds = %26
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @git_index_remove_bypath(i32* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %41

38:                                               ; preds = %26
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @git_index_add_bypath(i32* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %26, %38, %35, %32, %29
  %42 = call i32 (...) @git_thread_yield()
  br label %43

43:                                               ; preds = %41
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %23

46:                                               ; preds = %23
  br label %79

47:                                               ; preds = %1
  %48 = load i32, i32* %3, align 4
  %49 = and i32 %48, 3
  switch i32 %49, label %76 [
    i32 0, label %50
    i32 1, label %55
    i32 2, label %61
    i32 3, label %67
  ]

50:                                               ; preds = %47
  %51 = load i32*, i32** %7, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @git_diff_index_to_workdir(i32** %5, i32* %51, i32* %52, %struct.TYPE_5__* %4)
  %54 = call i32 @cl_git_pass(i32 %53)
  br label %76

55:                                               ; preds = %47
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* @_a, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @git_diff_tree_to_index(i32** %5, i32* %56, i32 %57, i32* %58, %struct.TYPE_5__* %4)
  %60 = call i32 @cl_git_pass(i32 %59)
  br label %76

61:                                               ; preds = %47
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* @_b, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @git_diff_tree_to_index(i32** %5, i32* %62, i32 %63, i32* %64, %struct.TYPE_5__* %4)
  %66 = call i32 @cl_git_pass(i32 %65)
  br label %76

67:                                               ; preds = %47
  %68 = load i32, i32* @GIT_DIFF_REVERSE, align 4
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %68
  store i32 %71, i32* %69, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @git_diff_index_to_workdir(i32** %5, i32* %72, i32* %73, %struct.TYPE_5__* %4)
  %75 = call i32 @cl_git_pass(i32 %74)
  br label %76

76:                                               ; preds = %47, %67, %61, %55, %50
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @git_diff_free(i32* %77)
  br label %79

79:                                               ; preds = %76, %46
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @git_index_free(i32* %80)
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @git_repository_free(i32* %82)
  %84 = call i32 (...) @git_error_clear()
  %85 = load i8*, i8** %2, align 8
  ret i8* %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_open(i32**, i32) #2

declare dso_local i32 @git_repository_path(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32*) #2

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #2

declare dso_local i32 @git_index_remove_bypath(i32*, i8*) #2

declare dso_local i32 @git_thread_yield(...) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32*, i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @git_diff_tree_to_index(i32**, i32*, i32, i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_repository_free(i32*) #2

declare dso_local i32 @git_error_clear(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
