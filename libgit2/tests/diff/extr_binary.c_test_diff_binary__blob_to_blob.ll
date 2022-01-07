; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_binary.c_test_diff_binary__blob_to_blob.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_binary.c_test_diff_binary__blob_to_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.diff_data = type { %struct.TYPE_6__, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@GIT_DIFF_SHOW_BINARY = common dso_local global i32 0, align 4
@GIT_DIFF_FORCE_BINARY = common dso_local global i32 0, align 4
@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"renames\00", align 1
@repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"renames/untimely.txt\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Oh that crazy Kipling!\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"untimely.txt\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"9a69d960ae94b060f56c2a8702545e2bb1abb935\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"1111d4f11f4b35bf6759e0fb714fe09731ef0840\00", align 1
@file_cb = common dso_local global i32 0, align 4
@binary_cb = common dso_local global i32 0, align 4
@hunk_cb = common dso_local global i32 0, align 4
@line_cb = common dso_local global i32 0, align 4
@GIT_DIFF_BINARY_DELTA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"c%18D`@*{63ljhg(E~C7\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"c%1vf+QYWt3zLL@hC)e3Vu?a>QDRl4f_G*?PG(-ZA}<#J$+QbW\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_binary__blob_to_blob() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.diff_data, align 4
  %8 = bitcast %struct.TYPE_5__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 8, i1 false)
  %9 = bitcast %struct.diff_data* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 44, i1 false)
  %10 = load i32, i32* @GIT_DIFF_SHOW_BINARY, align 4
  %11 = load i32, i32* @GIT_DIFF_FORCE_BINARY, align 4
  %12 = or i32 %10, %11
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* @repo, align 4
  %17 = load i32, i32* @repo, align 4
  %18 = call i32 @git_repository_index__weakptr(i32** %1, i32 %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = call i32 @cl_git_append2file(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @git_index_add_bypath(i32* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @git_index_write(i32* %24)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = call i32 @git_oid_fromstr(i32* %5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %28 = call i32 @git_oid_fromstr(i32* %6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %29 = load i32, i32* @repo, align 4
  %30 = call i32 @git_blob_lookup(i32** %3, i32 %29, i32* %5)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i32, i32* @repo, align 4
  %33 = call i32 @git_blob_lookup(i32** %4, i32 %32, i32* %6)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @file_cb, align 4
  %38 = load i32, i32* @binary_cb, align 4
  %39 = load i32, i32* @hunk_cb, align 4
  %40 = load i32, i32* @line_cb, align 4
  %41 = call i32 @git_diff_blobs(i32* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_5__* %2, i32 %37, i32 %38, i32 %39, i32 %40, %struct.diff_data* %7)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = getelementptr inbounds %struct.diff_data, %struct.diff_data* %7, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = getelementptr inbounds %struct.diff_data, %struct.diff_data* %7, i32 0, i32 9
  %47 = call i32 @cl_assert_equal_oid(i32* %5, i32* %46)
  %48 = load i32, i32* @GIT_DIFF_BINARY_DELTA, align 4
  %49 = getelementptr inbounds %struct.diff_data, %struct.diff_data* %7, i32 0, i32 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @cl_assert_equal_i(i32 %48, i32 %50)
  %52 = getelementptr inbounds %struct.diff_data, %struct.diff_data* %7, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @cl_assert_equal_i(i32 7, i32 %53)
  %55 = getelementptr inbounds %struct.diff_data, %struct.diff_data* %7, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %57)
  %59 = getelementptr inbounds %struct.diff_data, %struct.diff_data* %7, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = getelementptr inbounds %struct.diff_data, %struct.diff_data* %7, i32 0, i32 6
  %63 = call i32 @cl_assert_equal_oid(i32* %6, i32* %62)
  %64 = load i32, i32* @GIT_DIFF_BINARY_DELTA, align 4
  %65 = getelementptr inbounds %struct.diff_data, %struct.diff_data* %7, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @cl_assert_equal_i(i32 %64, i32 %66)
  %68 = getelementptr inbounds %struct.diff_data, %struct.diff_data* %7, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @cl_assert_equal_i(i32 32, i32 %69)
  %71 = getelementptr inbounds %struct.diff_data, %struct.diff_data* %7, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32 %73)
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @git_blob_free(i32* %75)
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @git_blob_free(i32* %77)
  %79 = getelementptr inbounds %struct.diff_data, %struct.diff_data* %7, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @git__free(i32 %80)
  %82 = getelementptr inbounds %struct.diff_data, %struct.diff_data* %7, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @git__free(i32 %83)
  %85 = getelementptr inbounds %struct.diff_data, %struct.diff_data* %7, i32 0, i32 1
  %86 = call i32 @git_buf_dispose(%struct.TYPE_6__* %85)
  %87 = getelementptr inbounds %struct.diff_data, %struct.diff_data* %7, i32 0, i32 0
  %88 = call i32 @git_buf_dispose(%struct.TYPE_6__* %87)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index__weakptr(i32**, i32) #2

declare dso_local i32 @cl_git_append2file(i8*, i8*) #2

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #2

declare dso_local i32 @git_index_write(i32*) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @git_blob_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_diff_blobs(i32*, i8*, i32*, i8*, %struct.TYPE_5__*, i32, i32, i32, i32, %struct.diff_data*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_blob_free(i32*) #2

declare dso_local i32 @git__free(i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
