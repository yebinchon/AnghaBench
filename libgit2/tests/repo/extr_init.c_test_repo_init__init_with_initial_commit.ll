; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_init.c_test_repo_init__init_with_initial_commit.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_init.c_test_repo_init__init_with_initial_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cleanup_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"committed\00", align 1
@_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"committed/file.txt\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"some stuff\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"file.txt\00", align 1
@GIT_CONFIG_LEVEL_LOCAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"user.name\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Test User\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"user.email\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"t@example.com\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"First\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_init__init_with_initial_commit() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = call i32 @cl_set_cleanup(i32* @cleanup_repository, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @git_repository_init(i32* @_repo, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32, i32* @_repo, align 4
  %12 = call i32 @git_repository_index(i32** %1, i32 %11)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @git_index_add_bypath(i32* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @git_index_write(i32* %18)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @_repo, align 4
  %22 = call i32 @git_repository_config(i32** %2, i32 %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @GIT_CONFIG_LEVEL_LOCAL, align 4
  %26 = call i32 @git_config_open_level(i32** %3, i32* %24, i32 %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @git_config_set_string(i32* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @git_config_set_string(i32* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @git_config_free(i32* %34)
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @git_config_free(i32* %36)
  %38 = load i32, i32* @_repo, align 4
  %39 = call i32 @git_signature_default(i32** %4, i32 %38)
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = call i32 @git_index_write_tree(i32* %5, i32* %41)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = load i32, i32* @_repo, align 4
  %45 = call i32 @git_tree_lookup(i32** %7, i32 %44, i32* %5)
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = load i32, i32* @_repo, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @git_commit_create_v(i32* %6, i32 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32* %48, i32* %49, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32* %50, i32 0)
  %52 = call i32 @cl_git_pass(i32 %51)
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @git_tree_free(i32* %53)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @git_signature_free(i32* %55)
  %57 = load i32*, i32** %1, align 8
  %58 = call i32 @git_index_free(i32* %57)
  ret void
}

declare dso_local i32 @cl_set_cleanup(i32*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_init(i32*, i8*, i32) #1

declare dso_local i32 @git_repository_index(i32**, i32) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #1

declare dso_local i32 @git_index_write(i32*) #1

declare dso_local i32 @git_repository_config(i32**, i32) #1

declare dso_local i32 @git_config_open_level(i32**, i32*, i32) #1

declare dso_local i32 @git_config_set_string(i32*, i8*, i8*) #1

declare dso_local i32 @git_config_free(i32*) #1

declare dso_local i32 @git_signature_default(i32**, i32) #1

declare dso_local i32 @git_index_write_tree(i32*, i32*) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_commit_create_v(i32*, i32, i8*, i32*, i32*, i32*, i8*, i32*, i32) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @git_signature_free(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
