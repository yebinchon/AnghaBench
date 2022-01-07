; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_pathspec.c_test_diff_pathspec__0.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_pathspec.c_test_diff_pathspec__0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8**, i32* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [9 x i8] c"26a125ee\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"0017bd4a\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_DIFF_OPTIONS_INIT = common dso_local global i32 0, align 4
@__const.test_diff_pathspec__0.paths = private unnamed_addr constant %struct.TYPE_6__ { i32 0, i8** inttoptr (i64 1 to i8**), i32* null }, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"*_file\00", align 1
@GIT_PATHSPEC_DEFAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"current_file\00", align 1
@GIT_DELTA_ADDED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"subdir/current_file\00", align 1
@GIT_DELTA_DELETED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"modified_file\00", align 1
@GIT_DELTA_MODIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_pathspec__0() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %11 = load i32, i32* @g_repo, align 4
  %12 = load i8*, i8** %1, align 8
  %13 = call i32* @resolve_commit_oid_to_tree(i32 %11, i8* %12)
  store i32* %13, i32** %3, align 8
  %14 = load i32, i32* @g_repo, align 4
  %15 = load i8*, i8** %2, align 8
  %16 = call i32* @resolve_commit_oid_to_tree(i32 %14, i8* %15)
  store i32* %16, i32** %4, align 8
  %17 = load i32, i32* @GIT_DIFF_OPTIONS_INIT, align 4
  store i32 %17, i32* %5, align 4
  store i32* null, i32** %6, align 8
  %18 = bitcast %struct.TYPE_6__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.TYPE_6__* @__const.test_diff_pathspec__0.paths to i8*), i64 24, i1 false)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @cl_assert(i32* %19)
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @cl_assert(i32* %21)
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i8** %8, i8*** %23, align 8
  %24 = call i32 @git_pathspec_new(i32** %9, %struct.TYPE_6__* %7)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* @GIT_PATHSPEC_DEFAULT, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @git_pathspec_match_tree(i32** %10, i32* %26, i32 %27, i32* %28)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32*, i32** %10, align 8
  %32 = call i64 @git_pathspec_match_list_entrycount(i32* %31)
  %33 = trunc i64 %32 to i32
  %34 = call i32 @cl_assert_equal_i(i32 7, i32 %33)
  %35 = load i32*, i32** %10, align 8
  %36 = call i32* @git_pathspec_match_list_entry(i32* %35, i32 0)
  %37 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %36)
  %38 = load i32*, i32** %10, align 8
  %39 = call %struct.TYPE_7__* @git_pathspec_match_list_diff_entry(i32* %38, i32 0)
  %40 = icmp eq %struct.TYPE_7__* %39, null
  %41 = zext i1 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i32*
  %44 = call i32 @cl_assert(i32* %43)
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @git_pathspec_match_list_free(i32* %45)
  %47 = load i32, i32* @g_repo, align 4
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @git_diff_tree_to_tree(i32** %6, i32 %47, i32* null, i32* %48, i32* %5)
  %50 = call i32 @cl_git_pass(i32 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* @GIT_PATHSPEC_DEFAULT, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @git_pathspec_match_diff(i32** %10, i32* %51, i32 %52, i32* %53)
  %55 = call i32 @cl_git_pass(i32 %54)
  %56 = load i32*, i32** %10, align 8
  %57 = call i64 @git_pathspec_match_list_entrycount(i32* %56)
  %58 = trunc i64 %57 to i32
  %59 = call i32 @cl_assert_equal_i(i32 7, i32 %58)
  %60 = load i32*, i32** %10, align 8
  %61 = call %struct.TYPE_7__* @git_pathspec_match_list_diff_entry(i32* %60, i32 0)
  %62 = icmp ne %struct.TYPE_7__* %61, null
  %63 = zext i1 %62 to i32
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i32*
  %66 = call i32 @cl_assert(i32* %65)
  %67 = load i32*, i32** %10, align 8
  %68 = call i32* @git_pathspec_match_list_entry(i32* %67, i32 0)
  %69 = icmp eq i32* %68, null
  %70 = zext i1 %69 to i32
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i32*
  %73 = call i32 @cl_assert(i32* %72)
  %74 = load i32*, i32** %10, align 8
  %75 = call %struct.TYPE_7__* @git_pathspec_match_list_diff_entry(i32* %74, i32 0)
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %78)
  %80 = load i32, i32* @GIT_DELTA_ADDED, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = call %struct.TYPE_7__* @git_pathspec_match_list_diff_entry(i32* %81, i32 0)
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 @cl_assert_equal_i(i32 %80, i32 %85)
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @git_pathspec_match_list_free(i32* %87)
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @git_diff_free(i32* %89)
  store i32* null, i32** %6, align 8
  %91 = load i32, i32* @g_repo, align 4
  %92 = load i32*, i32** %3, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @git_diff_tree_to_tree(i32** %6, i32 %91, i32* %92, i32* %93, i32* %5)
  %95 = call i32 @cl_git_pass(i32 %94)
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* @GIT_PATHSPEC_DEFAULT, align 4
  %98 = load i32*, i32** %9, align 8
  %99 = call i32 @git_pathspec_match_diff(i32** %10, i32* %96, i32 %97, i32* %98)
  %100 = call i32 @cl_git_pass(i32 %99)
  %101 = load i32*, i32** %10, align 8
  %102 = call i64 @git_pathspec_match_list_entrycount(i32* %101)
  %103 = trunc i64 %102 to i32
  %104 = call i32 @cl_assert_equal_i(i32 3, i32 %103)
  %105 = load i32*, i32** %10, align 8
  %106 = call %struct.TYPE_7__* @git_pathspec_match_list_diff_entry(i32* %105, i32 0)
  %107 = icmp ne %struct.TYPE_7__* %106, null
  %108 = zext i1 %107 to i32
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i32*
  %111 = call i32 @cl_assert(i32* %110)
  %112 = load i32*, i32** %10, align 8
  %113 = call i32* @git_pathspec_match_list_entry(i32* %112, i32 0)
  %114 = icmp eq i32* %113, null
  %115 = zext i1 %114 to i32
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to i32*
  %118 = call i32 @cl_assert(i32* %117)
  %119 = load i32*, i32** %10, align 8
  %120 = call %struct.TYPE_7__* @git_pathspec_match_list_diff_entry(i32* %119, i32 0)
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32* %123)
  %125 = load i32, i32* @GIT_DELTA_DELETED, align 4
  %126 = load i32*, i32** %10, align 8
  %127 = call %struct.TYPE_7__* @git_pathspec_match_list_diff_entry(i32* %126, i32 0)
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = call i32 @cl_assert_equal_i(i32 %125, i32 %130)
  %132 = load i32*, i32** %10, align 8
  %133 = call i32 @git_pathspec_match_list_free(i32* %132)
  %134 = load i32*, i32** %6, align 8
  %135 = call i32 @git_diff_free(i32* %134)
  store i32* null, i32** %6, align 8
  %136 = load i32, i32* @g_repo, align 4
  %137 = load i32*, i32** %3, align 8
  %138 = call i32 @git_diff_tree_to_workdir(i32** %6, i32 %136, i32* %137, i32* %5)
  %139 = call i32 @cl_git_pass(i32 %138)
  %140 = load i32*, i32** %6, align 8
  %141 = load i32, i32* @GIT_PATHSPEC_DEFAULT, align 4
  %142 = load i32*, i32** %9, align 8
  %143 = call i32 @git_pathspec_match_diff(i32** %10, i32* %140, i32 %141, i32* %142)
  %144 = call i32 @cl_git_pass(i32 %143)
  %145 = load i32*, i32** %10, align 8
  %146 = call i64 @git_pathspec_match_list_entrycount(i32* %145)
  %147 = trunc i64 %146 to i32
  %148 = call i32 @cl_assert_equal_i(i32 4, i32 %147)
  %149 = load i32*, i32** %10, align 8
  %150 = call %struct.TYPE_7__* @git_pathspec_match_list_diff_entry(i32* %149, i32 0)
  %151 = icmp ne %struct.TYPE_7__* %150, null
  %152 = zext i1 %151 to i32
  %153 = sext i32 %152 to i64
  %154 = inttoptr i64 %153 to i32*
  %155 = call i32 @cl_assert(i32* %154)
  %156 = load i32*, i32** %10, align 8
  %157 = call i32* @git_pathspec_match_list_entry(i32* %156, i32 0)
  %158 = icmp eq i32* %157, null
  %159 = zext i1 %158 to i32
  %160 = sext i32 %159 to i64
  %161 = inttoptr i64 %160 to i32*
  %162 = call i32 @cl_assert(i32* %161)
  %163 = load i32*, i32** %10, align 8
  %164 = call %struct.TYPE_7__* @git_pathspec_match_list_diff_entry(i32* %163, i32 0)
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32* %167)
  %169 = load i32, i32* @GIT_DELTA_MODIFIED, align 4
  %170 = load i32*, i32** %10, align 8
  %171 = call %struct.TYPE_7__* @git_pathspec_match_list_diff_entry(i32* %170, i32 0)
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = trunc i64 %173 to i32
  %175 = call i32 @cl_assert_equal_i(i32 %169, i32 %174)
  %176 = load i32*, i32** %10, align 8
  %177 = call i32 @git_pathspec_match_list_free(i32* %176)
  %178 = load i32*, i32** %6, align 8
  %179 = call i32 @git_diff_free(i32* %178)
  store i32* null, i32** %6, align 8
  %180 = load i32*, i32** %3, align 8
  %181 = call i32 @git_tree_free(i32* %180)
  %182 = load i32*, i32** %4, align 8
  %183 = call i32 @git_tree_free(i32* %182)
  %184 = load i32*, i32** %9, align 8
  %185 = call i32 @git_pathspec_free(i32* %184)
  ret void
}

declare dso_local i32* @resolve_commit_oid_to_tree(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cl_assert(i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_pathspec_new(i32**, %struct.TYPE_6__*) #1

declare dso_local i32 @git_pathspec_match_tree(i32**, i32*, i32, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i64 @git_pathspec_match_list_entrycount(i32*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32*) #1

declare dso_local i32* @git_pathspec_match_list_entry(i32*, i32) #1

declare dso_local %struct.TYPE_7__* @git_pathspec_match_list_diff_entry(i32*, i32) #1

declare dso_local i32 @git_pathspec_match_list_free(i32*) #1

declare dso_local i32 @git_diff_tree_to_tree(i32**, i32, i32*, i32*, i32*) #1

declare dso_local i32 @git_pathspec_match_diff(i32**, i32*, i32, i32*) #1

declare dso_local i32 @git_diff_free(i32*) #1

declare dso_local i32 @git_diff_tree_to_workdir(i32**, i32, i32*, i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @git_pathspec_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
