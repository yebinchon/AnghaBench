; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_test_diff_rename__matches_config_behavior.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_test_diff_rename__matches_config_behavior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32*, i32 }

@INITIAL_COMMIT = common dso_local global i8* null, align 8
@COPY_RENAME_COMMIT = common dso_local global i8* null, align 8
@REWRITE_COPY_COMMIT = common dso_local global i8* null, align 8
@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@GIT_DIFF_FIND_OPTIONS_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@GIT_DIFF_FIND_BY_CONFIG = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_UNMODIFIED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"diff.renames\00", align 1
@diff_file_cb = common dso_local global i32 0, align 4
@diff_binary_cb = common dso_local global i32 0, align 4
@diff_hunk_cb = common dso_local global i32 0, align 4
@diff_line_cb = common dso_local global i32 0, align 4
@GIT_DELTA_UNMODIFIED = common dso_local global i64 0, align 8
@GIT_DELTA_ADDED = common dso_local global i64 0, align 8
@GIT_DELTA_DELETED = common dso_local global i64 0, align 8
@GIT_DELTA_RENAMED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"copies\00", align 1
@GIT_DELTA_MODIFIED = common dso_local global i64 0, align 8
@GIT_DELTA_COPIED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_rename__matches_config_behavior() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__, align 4
  %10 = alloca %struct.TYPE_11__, align 4
  %11 = alloca %struct.TYPE_12__, align 8
  %12 = load i8*, i8** @INITIAL_COMMIT, align 8
  store i8* %12, i8** %1, align 8
  %13 = load i8*, i8** @COPY_RENAME_COMMIT, align 8
  store i8* %13, i8** %2, align 8
  %14 = load i8*, i8** @REWRITE_COPY_COMMIT, align 8
  store i8* %14, i8** %3, align 8
  %15 = bitcast %struct.TYPE_10__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 4, i1 false)
  %16 = bitcast %struct.TYPE_11__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.TYPE_11__* @GIT_DIFF_FIND_OPTIONS_INIT to i8*), i64 4, i1 false)
  %17 = load i32, i32* @GIT_DIFF_FIND_BY_CONFIG, align 4
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @g_repo, align 4
  %20 = load i8*, i8** %1, align 8
  %21 = call i32* @resolve_commit_oid_to_tree(i32 %19, i8* %20)
  store i32* %21, i32** %4, align 8
  %22 = load i32, i32* @g_repo, align 4
  %23 = load i8*, i8** %2, align 8
  %24 = call i32* @resolve_commit_oid_to_tree(i32 %22, i8* %23)
  store i32* %24, i32** %5, align 8
  %25 = load i32, i32* @g_repo, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = call i32* @resolve_commit_oid_to_tree(i32 %25, i8* %26)
  store i32* %27, i32** %6, align 8
  %28 = load i32, i32* @GIT_DIFF_INCLUDE_UNMODIFIED, align 4
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @g_repo, align 4
  %33 = call i32 @git_repository_config(i32** %7, i32 %32)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @git_config_set_bool(i32* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32, i32* @g_repo, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @git_diff_tree_to_tree(i32** %8, i32 %38, i32* %39, i32* %40, %struct.TYPE_10__* %9)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = call i32 @memset(%struct.TYPE_12__* %11, i32 0, i32 16)
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @git_diff_find_similar(i32* %44, %struct.TYPE_11__* %10)
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* @diff_file_cb, align 4
  %49 = load i32, i32* @diff_binary_cb, align 4
  %50 = load i32, i32* @diff_hunk_cb, align 4
  %51 = load i32, i32* @diff_line_cb, align 4
  %52 = call i32 @git_diff_foreach(i32* %47, i32 %48, i32 %49, i32 %50, i32 %51, %struct.TYPE_12__* %11)
  %53 = call i32 @cl_git_pass(i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @cl_assert_equal_i(i32 4, i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @GIT_DELTA_UNMODIFIED, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @cl_assert_equal_i(i32 1, i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @cl_assert_equal_i(i32 2, i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @cl_assert_equal_i(i32 1, i32 %73)
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @git_diff_free(i32* %75)
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @git_config_set_bool(i32* %77, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 1)
  %79 = call i32 @cl_git_pass(i32 %78)
  %80 = load i32, i32* @g_repo, align 4
  %81 = load i32*, i32** %4, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @git_diff_tree_to_tree(i32** %8, i32 %80, i32* %81, i32* %82, %struct.TYPE_10__* %9)
  %84 = call i32 @cl_git_pass(i32 %83)
  %85 = call i32 @memset(%struct.TYPE_12__* %11, i32 0, i32 16)
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @git_diff_find_similar(i32* %86, %struct.TYPE_11__* %10)
  %88 = call i32 @cl_git_pass(i32 %87)
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* @diff_file_cb, align 4
  %91 = load i32, i32* @diff_binary_cb, align 4
  %92 = load i32, i32* @diff_hunk_cb, align 4
  %93 = load i32, i32* @diff_line_cb, align 4
  %94 = call i32 @git_diff_foreach(i32* %89, i32 %90, i32 %91, i32 %92, i32 %93, %struct.TYPE_12__* %11)
  %95 = call i32 @cl_git_pass(i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @cl_assert_equal_i(i32 3, i32 %97)
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @GIT_DELTA_UNMODIFIED, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @cl_assert_equal_i(i32 1, i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @cl_assert_equal_i(i32 1, i32 %109)
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* @GIT_DELTA_RENAMED, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @cl_assert_equal_i(i32 1, i32 %115)
  %117 = load i32*, i32** %8, align 8
  %118 = call i32 @git_diff_free(i32* %117)
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @git_config_set_string(i32* %119, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %121 = call i32 @cl_git_pass(i32 %120)
  %122 = load i32, i32* @g_repo, align 4
  %123 = load i32*, i32** %5, align 8
  %124 = load i32*, i32** %6, align 8
  %125 = call i32 @git_diff_tree_to_tree(i32** %8, i32 %122, i32* %123, i32* %124, %struct.TYPE_10__* %9)
  %126 = call i32 @cl_git_pass(i32 %125)
  %127 = call i32 @memset(%struct.TYPE_12__* %11, i32 0, i32 16)
  %128 = load i32*, i32** %8, align 8
  %129 = call i32 @git_diff_find_similar(i32* %128, %struct.TYPE_11__* %10)
  %130 = call i32 @cl_git_pass(i32 %129)
  %131 = load i32*, i32** %8, align 8
  %132 = load i32, i32* @diff_file_cb, align 4
  %133 = load i32, i32* @diff_binary_cb, align 4
  %134 = load i32, i32* @diff_hunk_cb, align 4
  %135 = load i32, i32* @diff_line_cb, align 4
  %136 = call i32 @git_diff_foreach(i32* %131, i32 %132, i32 %133, i32 %134, i32 %135, %struct.TYPE_12__* %11)
  %137 = call i32 @cl_git_pass(i32 %136)
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @cl_assert_equal_i(i32 4, i32 %139)
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* @GIT_DELTA_UNMODIFIED, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @cl_assert_equal_i(i32 1, i32 %145)
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @cl_assert_equal_i(i32 2, i32 %151)
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i64, i64* @GIT_DELTA_COPIED, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @cl_assert_equal_i(i32 1, i32 %157)
  %159 = load i32*, i32** %8, align 8
  %160 = call i32 @git_diff_free(i32* %159)
  %161 = load i32, i32* @g_repo, align 4
  %162 = load i32*, i32** %5, align 8
  %163 = load i32*, i32** %6, align 8
  %164 = call i32 @git_diff_tree_to_tree(i32** %8, i32 %161, i32* %162, i32* %163, %struct.TYPE_10__* %9)
  %165 = call i32 @cl_git_pass(i32 %164)
  %166 = call i32 @memset(%struct.TYPE_12__* %11, i32 0, i32 16)
  %167 = load i32*, i32** %8, align 8
  %168 = call i32 @git_diff_find_similar(i32* %167, %struct.TYPE_11__* null)
  %169 = call i32 @cl_git_pass(i32 %168)
  %170 = load i32*, i32** %8, align 8
  %171 = load i32, i32* @diff_file_cb, align 4
  %172 = load i32, i32* @diff_binary_cb, align 4
  %173 = load i32, i32* @diff_hunk_cb, align 4
  %174 = load i32, i32* @diff_line_cb, align 4
  %175 = call i32 @git_diff_foreach(i32* %170, i32 %171, i32 %172, i32 %173, i32 %174, %struct.TYPE_12__* %11)
  %176 = call i32 @cl_git_pass(i32 %175)
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @cl_assert_equal_i(i32 4, i32 %178)
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i64, i64* @GIT_DELTA_UNMODIFIED, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @cl_assert_equal_i(i32 1, i32 %184)
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @cl_assert_equal_i(i32 2, i32 %190)
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = load i64, i64* @GIT_DELTA_COPIED, align 8
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @cl_assert_equal_i(i32 1, i32 %196)
  %198 = load i32*, i32** %8, align 8
  %199 = call i32 @git_diff_free(i32* %198)
  %200 = load i32*, i32** %4, align 8
  %201 = call i32 @git_tree_free(i32* %200)
  %202 = load i32*, i32** %5, align 8
  %203 = call i32 @git_tree_free(i32* %202)
  %204 = load i32*, i32** %6, align 8
  %205 = call i32 @git_tree_free(i32* %204)
  %206 = load i32*, i32** %7, align 8
  %207 = call i32 @git_config_free(i32* %206)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @resolve_commit_oid_to_tree(i32, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_config(i32**, i32) #2

declare dso_local i32 @git_config_set_bool(i32*, i8*, i32) #2

declare dso_local i32 @git_diff_tree_to_tree(i32**, i32, i32*, i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #2

declare dso_local i32 @git_diff_find_similar(i32*, %struct.TYPE_11__*) #2

declare dso_local i32 @git_diff_foreach(i32*, i32, i32, i32, i32, %struct.TYPE_12__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_config_set_string(i32*, i8*, i8*) #2

declare dso_local i32 @git_tree_free(i32*) #2

declare dso_local i32 @git_config_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
