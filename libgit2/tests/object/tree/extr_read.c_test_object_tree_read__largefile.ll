; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tree/extr_read.c_test_object_tree_read__largefile.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tree/extr_read.c_test_object_tree_read__largefile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"GITTEST_INVASIVE_FS_SIZE\00", align 1
@BIGFILE_SIZE = common dso_local global i32 0, align 4
@GIT_FILEMODE_BLOB = common dso_local global i32 0, align 4
@BIGFILE = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_tree_read__largefile() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = call i32 @cl_is_env_set(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %0
  %12 = call i32 (...) @cl_skip()
  br label %13

13:                                               ; preds = %11, %0
  %14 = load i32, i32* @BIGFILE_SIZE, align 4
  %15 = call i8* @git__calloc(i32 1, i32 %14)
  store i8* %15, i8** %8, align 8
  %16 = call i32 @cl_assert(i8* %15)
  %17 = call i32 @memset(%struct.TYPE_4__* %2, i32 0, i32 8)
  %18 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @BIGFILE, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @g_repo, align 4
  %23 = call i32 @git_repository_index(i32** %5, i32 %22)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* @BIGFILE_SIZE, align 4
  %28 = call i32 @git_index_add_from_buffer(i32* %25, %struct.TYPE_4__* %2, i8* %26, i32 %27)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32, i32* @g_repo, align 4
  %31 = load i32, i32* @BIGFILE, align 4
  %32 = call i32 @cl_repo_commit_from_index(i32* %7, i32 %30, i32* null, i32 0, i32 %31)
  %33 = load i32, i32* @g_repo, align 4
  %34 = call i32 @git_commit_lookup(i32** %3, i32 %33, i32* %7)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @git_commit_tree(i32** %6, i32* %36)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @BIGFILE, align 4
  %41 = call i8* @git_tree_entry_byname(i32* %39, i32 %40)
  store i8* %41, i8** %1, align 8
  %42 = call i32 @cl_assert(i8* %41)
  %43 = load i32, i32* @g_repo, align 4
  %44 = load i8*, i8** %1, align 8
  %45 = call i32 @git_tree_entry_to_object(i32** %4, i32 %43, i8* %44)
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @git_object_free(i32* %47)
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @git_tree_free(i32* %49)
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @git_index_free(i32* %51)
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @git_commit_free(i32* %53)
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @git__free(i8* %55)
  ret void
}

declare dso_local i32 @cl_is_env_set(i8*) #1

declare dso_local i32 @cl_skip(...) #1

declare dso_local i32 @cl_assert(i8*) #1

declare dso_local i8* @git__calloc(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_index(i32**, i32) #1

declare dso_local i32 @git_index_add_from_buffer(i32*, %struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @cl_repo_commit_from_index(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_commit_tree(i32**, i32*) #1

declare dso_local i8* @git_tree_entry_byname(i32*, i32) #1

declare dso_local i32 @git_tree_entry_to_object(i32**, i32, i8*) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local i32 @git_commit_free(i32*) #1

declare dso_local i32 @git__free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
