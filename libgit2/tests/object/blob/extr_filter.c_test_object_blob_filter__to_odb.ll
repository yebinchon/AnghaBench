; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/blob/extr_filter.c_test_object_blob_filter__to_odb.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/blob/extr_filter.c_test_object_blob_filter__to_odb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"empty_standard_repo/.gitattributes\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"*.txt text\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"filename.txt\00", align 1
@GIT_FILTER_TO_ODB = common dso_local global i32 0, align 4
@CRLF_NUM_TEST_OBJECTS = common dso_local global i32 0, align 4
@g_crlf_oids = common dso_local global i32* null, align 8
@g_crlf_filtered = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_blob_filter__to_odb() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca %struct.TYPE_7__, align 4
  store i32* null, i32** %1, align 8
  %7 = bitcast %struct.TYPE_7__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %8 = load i32, i32* @g_repo, align 4
  %9 = call i32 @git_repository_config(i32** %2, i32 %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @cl_assert(i32* %11)
  %13 = load i32, i32* @g_repo, align 4
  %14 = call i32 @git_attr_cache_flush(i32 %13)
  %15 = call i32 @cl_git_append2file(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @g_repo, align 4
  %17 = load i32, i32* @GIT_FILTER_TO_ODB, align 4
  %18 = call i32 @git_filter_list_load(i32** %1, i32 %16, i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %17, i32 0)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i32*
  %25 = call i32 @cl_assert(i32* %24)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %92, %0
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @CRLF_NUM_TEST_OBJECTS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %95

30:                                               ; preds = %26
  %31 = load i32, i32* @g_repo, align 4
  %32 = load i32*, i32** @g_crlf_oids, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i32 @git_blob_lookup(i32** %4, i32 %31, i32* %35)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32*, i32** %1, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @git_filter_list_apply_to_blob(%struct.TYPE_7__* %5, i32* %38, i32* %39)
  %41 = call i32 @cl_git_pass(i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_crlf_filtered, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @cl_assert_equal_sz(i32 %47, i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_crlf_filtered, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @memcmp(i32 %52, i32 %58, i32 %60)
  %62 = call i32 @cl_assert_equal_i(i32 0, i32 %61)
  %63 = call i32 @memset(%struct.TYPE_7__* %6, i32 0, i32 8)
  %64 = load i32*, i32** %1, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @git_filter_list_apply_to_blob(%struct.TYPE_7__* %6, i32* %64, i32* %65)
  %67 = call i32 @cl_git_pass(i32 %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_crlf_filtered, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @cl_assert_equal_sz(i32 %73, i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_crlf_filtered, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @memcmp(i32 %78, i32 %84, i32 %86)
  %88 = call i32 @cl_assert_equal_i(i32 0, i32 %87)
  %89 = call i32 @git_buf_dispose(%struct.TYPE_7__* %6)
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @git_blob_free(i32* %90)
  br label %92

92:                                               ; preds = %30
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %3, align 4
  br label %26

95:                                               ; preds = %26
  %96 = load i32*, i32** %1, align 8
  %97 = call i32 @git_filter_list_free(i32* %96)
  %98 = call i32 @git_buf_dispose(%struct.TYPE_7__* %5)
  %99 = load i32*, i32** %2, align 8
  %100 = call i32 @git_config_free(i32* %99)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_config(i32**, i32) #2

declare dso_local i32 @cl_assert(i32*) #2

declare dso_local i32 @git_attr_cache_flush(i32) #2

declare dso_local i32 @cl_git_append2file(i8*, i8*) #2

declare dso_local i32 @git_filter_list_load(i32**, i32, i32*, i8*, i32, i32) #2

declare dso_local i32 @git_blob_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_filter_list_apply_to_blob(%struct.TYPE_7__*, i32*, i32*) #2

declare dso_local i32 @cl_assert_equal_sz(i32, i32) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @memcmp(i32, i32, i32) #2

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_7__*) #2

declare dso_local i32 @git_blob_free(i32*) #2

declare dso_local i32 @git_filter_list_free(i32*) #2

declare dso_local i32 @git_config_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
