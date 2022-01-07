; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_patch.c_test_diff_patch__to_string.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_patch.c_test_diff_patch__to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"26a125e\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"735b6a2\00", align 1
@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [164 x i8] c"diff --git a/subdir.txt b/subdir.txt\0Adeleted file mode 100644\0Aindex e8ee89e..0000000\0A--- a/subdir.txt\0A+++ /dev/null\0A@@ -1,2 +0,0 @@\0A-Is it a bird?\0A-Is it a plane?\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@g_repo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_patch__to_string() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca i8*, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %9 = bitcast %struct.TYPE_5__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i8* getelementptr inbounds ([164 x i8], [164 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  %10 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %10, i32* @g_repo, align 4
  %11 = load i32, i32* @g_repo, align 4
  %12 = load i8*, i8** %1, align 8
  %13 = call i32* @resolve_commit_oid_to_tree(i32 %11, i8* %12)
  store i32* %13, i32** %3, align 8
  %14 = load i32, i32* @g_repo, align 4
  %15 = load i8*, i8** %2, align 8
  %16 = call i32* @resolve_commit_oid_to_tree(i32 %14, i8* %15)
  store i32* %16, i32** %4, align 8
  %17 = load i32, i32* @g_repo, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @git_diff_tree_to_tree(i32** %5, i32 %17, i32* %18, i32* %19, i32* null)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @git_diff_num_deltas(i32* %22)
  %24 = trunc i64 %23 to i32
  %25 = call i32 @cl_assert_equal_i(i32 1, i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @git_patch_from_diff(i32** %6, i32* %26, i32 0)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @git_patch_to_buf(%struct.TYPE_5__* %7, i32* %29)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cl_assert_equal_s(i8* %32, i32 %34)
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @git_patch_size(i32* %36, i32 0, i32 0, i32 0)
  %38 = call i32 @cl_assert_equal_sz(i32 31, i32 %37)
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @git_patch_size(i32* %39, i32 1, i32 0, i32 0)
  %41 = call i32 @cl_assert_equal_sz(i32 31, i32 %40)
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @git_patch_size(i32* %42, i32 1, i32 1, i32 0)
  %44 = call i32 @cl_assert_equal_sz(i32 47, i32 %43)
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @git_patch_size(i32* %47, i32 1, i32 1, i32 1)
  %49 = call i32 @cl_assert_equal_sz(i32 %46, i32 %48)
  %50 = call i32 @git_buf_dispose(%struct.TYPE_5__* %7)
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @git_patch_free(i32* %51)
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @git_diff_free(i32* %53)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @git_tree_free(i32* %55)
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @git_tree_free(i32* %57)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32* @resolve_commit_oid_to_tree(i32, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_diff_tree_to_tree(i32**, i32, i32*, i32*, i32*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i64 @git_diff_num_deltas(i32*) #2

declare dso_local i32 @git_patch_from_diff(i32**, i32*, i32) #2

declare dso_local i32 @git_patch_to_buf(%struct.TYPE_5__*, i32*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @cl_assert_equal_sz(i32, i32) #2

declare dso_local i32 @git_patch_size(i32*, i32, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

declare dso_local i32 @git_patch_free(i32*) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
