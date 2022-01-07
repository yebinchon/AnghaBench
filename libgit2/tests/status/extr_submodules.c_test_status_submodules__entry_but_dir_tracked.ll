; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_submodules.c_test_status_submodules__entry_but_dir_tracked.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_submodules.c_test_status_submodules__entry_but_dir_tracked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"mixed-submodule\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"mixed-submodule/.gitmodules\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"[submodule \22sub\22]\0A path = sub\0A url = ../foo\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"mixed-submodule/sub\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"mixed-submodule/sub/file\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [12 x i8] c".gitmodules\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"sub/file\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Sloppy Submoduler\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"sloppy@example.com\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"commit: foo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_status_submodules__entry_but_dir_tracked() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = call i32 @git_repository_init(i32** %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 0)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %13 = call i32 @p_mkdir(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 511)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @git_repository_index(i32** %4, i32* %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @git_index_add_bypath(i32* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @git_index_add_bypath(i32* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @git_index_write(i32* %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @git_index_write_tree(i32* %6, i32* %28)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = call i32 @git_signature_now(i32** %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @git_tree_lookup(i32** %5, i32* %33, i32* %6)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @git_commit_create(i32* %7, i32* %36, i32* null, i32* %37, i32* %38, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32* %39, i32 0, i32* null)
  %41 = call i32 @cl_git_pass(i32 %40)
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 @git_reference_create(i32** %9, i32* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32* %7, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @git_reference_free(i32* %45)
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @git_signature_free(i32* %47)
  %49 = load i32*, i32** %1, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @git_diff_tree_to_index(i32** %3, i32* %49, i32* %50, i32* %51, i32* null)
  %53 = call i32 @cl_git_pass(i32 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @git_diff_num_deltas(i32* %54)
  %56 = call i32 @cl_assert_equal_i(i32 0, i32 %55)
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @git_diff_free(i32* %57)
  %59 = load i32*, i32** %1, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @git_diff_index_to_workdir(i32** %3, i32* %59, i32* %60, i32* null)
  %62 = call i32 @cl_git_pass(i32 %61)
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @git_diff_num_deltas(i32* %63)
  %65 = call i32 @cl_assert_equal_i(i32 0, i32 %64)
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @git_diff_free(i32* %66)
  %68 = load i32*, i32** %1, align 8
  %69 = call i32 @git_status_list_new(i32** %2, i32* %68, i32* null)
  %70 = call i32 @cl_git_pass(i32 %69)
  %71 = load i32*, i32** %2, align 8
  %72 = call i32 @git_status_list_entrycount(i32* %71)
  %73 = call i32 @cl_assert_equal_i(i32 0, i32 %72)
  %74 = load i32*, i32** %2, align 8
  %75 = call i32 @git_status_list_free(i32* %74)
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @git_index_free(i32* %76)
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @git_tree_free(i32* %78)
  %80 = load i32*, i32** %1, align 8
  %81 = call i32 @git_repository_free(i32* %80)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_init(i32**, i8*, i32) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @p_mkdir(i8*, i32) #1

declare dso_local i32 @git_repository_index(i32**, i32*) #1

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #1

declare dso_local i32 @git_index_write(i32*) #1

declare dso_local i32 @git_index_write_tree(i32*, i32*) #1

declare dso_local i32 @git_signature_now(i32**, i8*, i8*) #1

declare dso_local i32 @git_tree_lookup(i32**, i32*, i32*) #1

declare dso_local i32 @git_commit_create(i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32, i32*) #1

declare dso_local i32 @git_reference_create(i32**, i32*, i8*, i32*, i32, i8*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_signature_free(i32*) #1

declare dso_local i32 @git_diff_tree_to_index(i32**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_diff_num_deltas(i32*) #1

declare dso_local i32 @git_diff_free(i32*) #1

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @git_status_list_new(i32**, i32*, i32*) #1

declare dso_local i32 @git_status_list_entrycount(i32*) #1

declare dso_local i32 @git_status_list_free(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @git_repository_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
