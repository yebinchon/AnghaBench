; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_drivers.c_test_diff_drivers__patterns.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_drivers.c_test_diff_drivers__patterns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32* }

@.str = private unnamed_addr constant [41 x i8] c"19dd32dfb1520a64e5bbaae8dce6ef423dfa2f13\00", align 1
@GIT_BUF_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [272 x i8] c"diff --git a/untimely.txt b/untimely.txt\0Aindex 9a69d96..57fd0cf 100644\0A--- a/untimely.txt\0A+++ b/untimely.txt\0A@@ -22,3 +22,5 @@ Comes through the blood of the vanguards who\0A   dreamed--too soon--it had sounded.\0D\0A \0D\0A                 -- Rudyard Kipling\0D\0A+\0D\0A+Some new stuff\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [126 x i8] c"diff --git a/untimely.txt b/untimely.txt\0Aindex 9a69d96..57fd0cf 100644\0ABinary files a/untimely.txt and b/untimely.txt differ\0A\00", align 1
@.str.3 = private unnamed_addr constant [276 x i8] c"diff --git a/untimely.txt b/untimely.txt\0Aindex 9a69d96..57fd0cf 100644\0A--- a/untimely.txt\0A+++ b/untimely.txt\0A@@ -22,3 +22,5 @@ Heaven delivers on earth the Hour that cannot be\0A   dreamed--too soon--it had sounded.\0D\0A \0D\0A                 -- Rudyard Kipling\0D\0A+\0D\0A+Some new stuff\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"renames\00", align 1
@g_repo = common dso_local global %struct.TYPE_11__* null, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"renames/untimely.txt\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"\0D\0ASome new stuff\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"renames/.gitattributes\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"untimely.txt -diff\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"untimely.txt diff=kipling0\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"diff.kipling0.binary\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"diff.kipling0.xfuncname\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"^H.*$\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_drivers__patterns() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %10 = bitcast %struct.TYPE_10__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i8* getelementptr inbounds ([272 x i8], [272 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([276 x i8], [276 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  %11 = call %struct.TYPE_11__* @cl_git_sandbox_init(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** @g_repo, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_repo, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = call i32* @resolve_commit_oid_to_tree(%struct.TYPE_11__* %12, i8* %13)
  store i32* %14, i32** %3, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_repo, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @git_diff_tree_to_workdir(i32** %4, %struct.TYPE_11__* %15, i32* %16, i32* null)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @git_diff_num_deltas(i32* %19)
  %21 = trunc i64 %20 to i32
  %22 = call i32 @cl_assert_equal_i(i32 0, i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @git_diff_free(i32* %23)
  %25 = call i32 @cl_git_append2file(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_repo, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @git_diff_tree_to_workdir(i32** %4, %struct.TYPE_11__* %26, i32* %27, i32* null)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = call i64 @git_diff_num_deltas(i32* %30)
  %32 = trunc i64 %31 to i32
  %33 = call i32 @cl_assert_equal_i(i32 1, i32 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @git_patch_from_diff(i32** %5, i32* %34, i32 0)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @git_patch_to_buf(%struct.TYPE_10__* %6, i32* %37)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cl_assert_equal_s(i8* %40, i32 %42)
  %44 = call i32 @git_buf_dispose(%struct.TYPE_10__* %6)
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @git_patch_free(i32* %45)
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @git_diff_free(i32* %47)
  %49 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_repo, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @git_diff_tree_to_workdir(i32** %4, %struct.TYPE_11__* %50, i32* %51, i32* null)
  %53 = call i32 @cl_git_pass(i32 %52)
  %54 = load i32*, i32** %4, align 8
  %55 = call i64 @git_diff_num_deltas(i32* %54)
  %56 = trunc i64 %55 to i32
  %57 = call i32 @cl_assert_equal_i(i32 1, i32 %56)
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @git_patch_from_diff(i32** %5, i32* %58, i32 0)
  %60 = call i32 @cl_git_pass(i32 %59)
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @git_patch_to_buf(%struct.TYPE_10__* %6, i32* %61)
  %63 = call i32 @cl_git_pass(i32 %62)
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @cl_assert_equal_s(i8* %64, i32 %66)
  %68 = call i32 @git_buf_dispose(%struct.TYPE_10__* %6)
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @git_patch_free(i32* %69)
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @git_diff_free(i32* %71)
  %73 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_repo, align 8
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @git_diff_tree_to_workdir(i32** %4, %struct.TYPE_11__* %74, i32* %75, i32* null)
  %77 = call i32 @cl_git_pass(i32 %76)
  %78 = load i32*, i32** %4, align 8
  %79 = call i64 @git_diff_num_deltas(i32* %78)
  %80 = trunc i64 %79 to i32
  %81 = call i32 @cl_assert_equal_i(i32 1, i32 %80)
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @git_patch_from_diff(i32** %5, i32* %82, i32 0)
  %84 = call i32 @cl_git_pass(i32 %83)
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @git_patch_to_buf(%struct.TYPE_10__* %6, i32* %85)
  %87 = call i32 @cl_git_pass(i32 %86)
  %88 = load i8*, i8** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @cl_assert_equal_s(i8* %88, i32 %90)
  %92 = call i32 @git_buf_dispose(%struct.TYPE_10__* %6)
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @git_patch_free(i32* %93)
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @git_diff_free(i32* %95)
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_repo, align 8
  %98 = call i32 @git_repository_config(i32** %1, %struct.TYPE_11__* %97)
  %99 = call i32 @cl_git_pass(i32 %98)
  %100 = load i32*, i32** %1, align 8
  %101 = call i32 @git_config_set_bool(i32* %100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 1)
  %102 = call i32 @cl_git_pass(i32 %101)
  %103 = load i32*, i32** %1, align 8
  %104 = call i32 @git_config_free(i32* %103)
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_repo, align 8
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 @git_diff_tree_to_workdir(i32** %4, %struct.TYPE_11__* %105, i32* %106, i32* null)
  %108 = call i32 @cl_git_pass(i32 %107)
  %109 = load i32*, i32** %4, align 8
  %110 = call i64 @git_diff_num_deltas(i32* %109)
  %111 = trunc i64 %110 to i32
  %112 = call i32 @cl_assert_equal_i(i32 1, i32 %111)
  %113 = load i32*, i32** %4, align 8
  %114 = call i32 @git_patch_from_diff(i32** %5, i32* %113, i32 0)
  %115 = call i32 @cl_git_pass(i32 %114)
  %116 = load i32*, i32** %5, align 8
  %117 = call i32 @git_patch_to_buf(%struct.TYPE_10__* %6, i32* %116)
  %118 = call i32 @cl_git_pass(i32 %117)
  %119 = load i8*, i8** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @cl_assert_equal_s(i8* %119, i32 %121)
  %123 = call i32 @git_buf_dispose(%struct.TYPE_10__* %6)
  %124 = load i32*, i32** %5, align 8
  %125 = call i32 @git_patch_free(i32* %124)
  %126 = load i32*, i32** %4, align 8
  %127 = call i32 @git_diff_free(i32* %126)
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_repo, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @git_diff_driver_registry_free(i32* %130)
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_repo, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  store i32* null, i32** %133, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_repo, align 8
  %135 = call i32 @git_repository_config(i32** %1, %struct.TYPE_11__* %134)
  %136 = call i32 @cl_git_pass(i32 %135)
  %137 = load i32*, i32** %1, align 8
  %138 = call i32 @git_config_set_bool(i32* %137, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 0)
  %139 = call i32 @cl_git_pass(i32 %138)
  %140 = load i32*, i32** %1, align 8
  %141 = call i32 @git_config_set_string(i32* %140, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %142 = call i32 @cl_git_pass(i32 %141)
  %143 = load i32*, i32** %1, align 8
  %144 = call i32 @git_config_free(i32* %143)
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_repo, align 8
  %146 = load i32*, i32** %3, align 8
  %147 = call i32 @git_diff_tree_to_workdir(i32** %4, %struct.TYPE_11__* %145, i32* %146, i32* null)
  %148 = call i32 @cl_git_pass(i32 %147)
  %149 = load i32*, i32** %4, align 8
  %150 = call i64 @git_diff_num_deltas(i32* %149)
  %151 = trunc i64 %150 to i32
  %152 = call i32 @cl_assert_equal_i(i32 1, i32 %151)
  %153 = load i32*, i32** %4, align 8
  %154 = call i32 @git_patch_from_diff(i32** %5, i32* %153, i32 0)
  %155 = call i32 @cl_git_pass(i32 %154)
  %156 = load i32*, i32** %5, align 8
  %157 = call i32 @git_patch_to_buf(%struct.TYPE_10__* %6, i32* %156)
  %158 = call i32 @cl_git_pass(i32 %157)
  %159 = load i8*, i8** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @cl_assert_equal_s(i8* %159, i32 %161)
  %163 = call i32 @git_buf_dispose(%struct.TYPE_10__* %6)
  %164 = load i32*, i32** %5, align 8
  %165 = call i32 @git_patch_free(i32* %164)
  %166 = load i32*, i32** %4, align 8
  %167 = call i32 @git_diff_free(i32* %166)
  %168 = load i32*, i32** %3, align 8
  %169 = call i32 @git_tree_free(i32* %168)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_11__* @cl_git_sandbox_init(i8*) #2

declare dso_local i32* @resolve_commit_oid_to_tree(%struct.TYPE_11__*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_diff_tree_to_workdir(i32**, %struct.TYPE_11__*, i32*, i32*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i64 @git_diff_num_deltas(i32*) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @cl_git_append2file(i8*, i8*) #2

declare dso_local i32 @git_patch_from_diff(i32**, i32*, i32) #2

declare dso_local i32 @git_patch_to_buf(%struct.TYPE_10__*, i32*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_10__*) #2

declare dso_local i32 @git_patch_free(i32*) #2

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #2

declare dso_local i32 @git_repository_config(i32**, %struct.TYPE_11__*) #2

declare dso_local i32 @git_config_set_bool(i32*, i8*, i32) #2

declare dso_local i32 @git_config_free(i32*) #2

declare dso_local i32 @git_diff_driver_registry_free(i32*) #2

declare dso_local i32 @git_config_set_string(i32*, i8*, i8*) #2

declare dso_local i32 @git_tree_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
