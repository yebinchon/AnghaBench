; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_checkout_tree_with_blob_ignored_in_workdir.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_checkout_tree_with_blob_ignored_in_workdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"master\00", align 1
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"refs/heads/dir\00", align 1
@GIT_OBJECT_ANY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"testrepo/README\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"testrepo/branch_file.txt\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"testrepo/new.txt\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"testrepo/a/b.txt\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"testrepo/ab\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"testrepo/ab/4.txt\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"testrepo/ab/4.txt/file1.txt\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"as you wish\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"testrepo/ab/4.txt/file2.txt\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"foo bar foo\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"testrepo/ab/4.txt/file3.txt\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"inky blinky pinky clyde\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"ab/4.txt\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"ab/4.txt\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"refs/heads/subtrees\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @checkout_tree_with_blob_ignored_in_workdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkout_tree_with_blob_ignored_in_workdir(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %6, align 8
  %10 = bitcast %struct.TYPE_4__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @g_repo, align 4
  %12 = call i32 @assert_on_branch(i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @g_repo, align 4
  %16 = call i32 @git_reference_name_to_id(i32* %5, i32 %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @g_repo, align 4
  %19 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %20 = call i32 @git_object_lookup(i32** %6, i32 %18, i32* %5, i32 %19)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32, i32* @g_repo, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @git_checkout_tree(i32 %22, i32* %23, %struct.TYPE_4__* %7)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32, i32* @g_repo, align 4
  %27 = call i32 @git_repository_set_head(i32 %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = call i32 @git_path_isfile(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %30 = call i32 @cl_assert(i32 %29)
  %31 = call i32 @git_path_isfile(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %32 = call i32 @cl_assert(i32 %31)
  %33 = call i32 @git_path_isfile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %34 = call i32 @cl_assert(i32 %33)
  %35 = call i32 @git_path_isfile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %36 = call i32 @cl_assert(i32 %35)
  %37 = call i32 @git_path_isdir(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @cl_assert(i32 %40)
  %42 = load i32, i32* @g_repo, align 4
  %43 = call i32 @assert_on_branch(i32 %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @git_object_free(i32* %44)
  %46 = load i32, i32* %3, align 4
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %2
  %51 = call i32 @p_mkdir(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 511)
  %52 = call i32 @cl_must_pass(i32 %51)
  %53 = call i32 @p_mkdir(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 511)
  %54 = call i32 @cl_must_pass(i32 %53)
  %55 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %56 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %57 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  %58 = call i32 @git_path_isdir(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %59 = call i32 @cl_assert(i32 %58)
  br label %66

60:                                               ; preds = %2
  %61 = call i32 @p_mkdir(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 511)
  %62 = call i32 @cl_must_pass(i32 %61)
  %63 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %64 = call i32 @git_path_isfile(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %65 = call i32 @cl_assert(i32 %64)
  br label %66

66:                                               ; preds = %60, %50
  %67 = load i32, i32* @g_repo, align 4
  %68 = call i32 @git_ignore_add_rule(i32 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %69 = call i32 @cl_git_pass(i32 %68)
  %70 = load i32, i32* @g_repo, align 4
  %71 = call i32 @git_ignore_path_is_ignored(i32* %8, i32 %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %72 = call i32 @cl_git_pass(i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @cl_assert_equal_i(i32 1, i32 %73)
  %75 = load i32, i32* @g_repo, align 4
  %76 = call i32 @git_reference_name_to_id(i32* %5, i32 %75, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  %77 = call i32 @cl_git_pass(i32 %76)
  %78 = load i32, i32* @g_repo, align 4
  %79 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %80 = call i32 @git_object_lookup(i32** %6, i32 %78, i32* %5, i32 %79)
  %81 = call i32 @cl_git_pass(i32 %80)
  %82 = load i32, i32* @g_repo, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @git_checkout_tree(i32 %82, i32* %83, %struct.TYPE_4__* %7)
  store i32 %84, i32* %9, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @git_object_free(i32* %85)
  %87 = load i32, i32* %9, align 4
  ret i32 %87
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert_on_branch(i32, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_name_to_id(i32*, i32, i8*) #2

declare dso_local i32 @git_object_lookup(i32**, i32, i32*, i32) #2

declare dso_local i32 @git_checkout_tree(i32, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @git_repository_set_head(i32, i8*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_path_isfile(i8*) #2

declare dso_local i32 @git_path_isdir(i8*) #2

declare dso_local i32 @git_object_free(i32*) #2

declare dso_local i32 @cl_must_pass(i32) #2

declare dso_local i32 @p_mkdir(i8*, i32) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @git_ignore_add_rule(i32, i8*) #2

declare dso_local i32 @git_ignore_path_is_ignored(i32*, i32, i8*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
