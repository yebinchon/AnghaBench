; ModuleID = '/home/carl/AnghaBench/libgit2/tests/clone/extr_nonetwork.c_test_clone_nonetwork__clone_tag_to_tree.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/clone/extr_nonetwork.c_test_clone_nonetwork__clone_tag_to_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"some/deep/path.txt\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"some content\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"refs/tags/tree-tag\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@GIT_FILEMODE_BLOB = common dso_local global i32 0, align 4
@GIT_OBJECT_BLOB = common dso_local global i32 0, align 4
@GIT_CLONE_NO_LOCAL = common dso_local global i32 0, align 4
@g_options = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"./foo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_clone_nonetwork__clone_tag_to_tree() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_6__, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  %12 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32* %12, i32** %1, align 8
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @git_repository_odb(i32** %4, i32* %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = call i32 @git_index_new(i32** %3)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = call i32 @memset(%struct.TYPE_6__* %2, i32 0, i32 16)
  %19 = load i8*, i8** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %24 = load i32*, i32** %4, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %29 = call i32 @git_odb_write(i32* %23, i32* %24, i8* %25, i32 %27, i32 %28)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @git_index_add(i32* %31, %struct.TYPE_6__* %2)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @git_index_write_tree_to(i32* %5, i32* %34, i32* %35)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32*, i32** %1, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 @git_reference_create(i32** %7, i32* %38, i8* %39, i32* %5, i32 0, i32* null)
  %41 = call i32 @cl_git_pass(i32 %40)
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @git_reference_free(i32* %42)
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @git_odb_free(i32* %44)
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @git_index_free(i32* %46)
  %48 = load i32, i32* @GIT_CLONE_NO_LOCAL, align 4
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_options, i32 0, i32 0), align 4
  %49 = load i32*, i32** %1, align 8
  %50 = call i32 @git_repository_path(i32* %49)
  %51 = call i32 @cl_git_path_url(i32 %50)
  %52 = call i32 @git_clone(i32* @g_repo, i32 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_7__* @g_options)
  %53 = call i32 @cl_git_pass(i32 %52)
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @git_repository_free(i32* %54)
  %56 = load i32, i32* @g_repo, align 4
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @git_reference_lookup(i32** %7, i32 %56, i8* %57)
  %59 = call i32 @cl_git_pass(i32 %58)
  %60 = load i32, i32* @g_repo, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @git_reference_target(i32* %61)
  %63 = call i32 @git_tree_lookup(i32** %6, i32 %60, i32 %62)
  %64 = call i32 @cl_git_pass(i32 %63)
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @git_reference_free(i32* %65)
  %67 = load i32*, i32** %6, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @git_tree_entry_bypath(i32** %8, i32* %67, i8* %68)
  %70 = call i32 @cl_git_pass(i32 %69)
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @git_tree_entry_free(i32* %71)
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @git_tree_free(i32* %73)
  %75 = call i32 @cl_fixture_cleanup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_odb(i32**, i32*) #1

declare dso_local i32 @git_index_new(i32**) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @git_odb_write(i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @git_index_add(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @git_index_write_tree_to(i32*, i32*, i32*) #1

declare dso_local i32 @git_reference_create(i32**, i32*, i8*, i32*, i32, i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_odb_free(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local i32 @git_clone(i32*, i32, i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @cl_git_path_url(i32) #1

declare dso_local i32 @git_repository_path(i32*) #1

declare dso_local i32 @git_repository_free(i32*) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32) #1

declare dso_local i32 @git_reference_target(i32*) #1

declare dso_local i32 @git_tree_entry_bypath(i32**, i32*, i8*) #1

declare dso_local i32 @git_tree_entry_free(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @cl_fixture_cleanup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
