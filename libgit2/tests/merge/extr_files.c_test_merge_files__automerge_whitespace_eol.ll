; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/extr_files.c_test_merge_files__automerge_whitespace_eol.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/extr_files.c_test_merge_files__automerge_whitespace_eol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i32, i8*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32 }

@GIT_MERGE_FILE_INPUT_INIT = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@GIT_MERGE_FILE_OPTIONS_INIT = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@.str = private unnamed_addr constant [28 x i8] c"Zero\0A1\0A2\0A3\0A4\0A5\0A6\0A7\0A8\0A9\0ATen\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 \0A1\0A2\0A3\0A4\0A5\0A6\0A7\0A8\0A9\0A10 \0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"testfile.txt\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Zero\0A1\0A2\0A3\0A4\0A5\0A6\0A7\0A8\0A9\0A10\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"0\0A1\0A2\0A3\0A4\0A5\0A6\0A7\0A8\0A9\0ATen\0A\00", align 1
@GIT_MERGE_FILE_IGNORE_WHITESPACE_EOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_merge_files__automerge_whitespace_eol() #0 {
  %1 = alloca %struct.TYPE_14__, align 8
  %2 = alloca %struct.TYPE_14__, align 8
  %3 = alloca %struct.TYPE_14__, align 8
  %4 = alloca %struct.TYPE_13__, align 4
  %5 = alloca %struct.TYPE_12__, align 4
  %6 = alloca i8*, align 8
  %7 = bitcast %struct.TYPE_14__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.TYPE_14__* @GIT_MERGE_FILE_INPUT_INIT to i8*), i64 32, i1 false)
  %8 = bitcast %struct.TYPE_14__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.TYPE_14__* @GIT_MERGE_FILE_INPUT_INIT to i8*), i64 32, i1 false)
  %9 = bitcast %struct.TYPE_14__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.TYPE_14__* @GIT_MERGE_FILE_INPUT_INIT to i8*), i64 32, i1 false)
  %10 = bitcast %struct.TYPE_13__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_13__* @GIT_MERGE_FILE_OPTIONS_INIT to i8*), i64 4, i1 false)
  %11 = bitcast %struct.TYPE_12__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 24, i1 false)
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1, i32 0, i32 1
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1, i32 0, i32 2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1, i32 0, i32 3
  store i32 33261, i32* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %2, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %2, i32 0, i32 1
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %2, i32 0, i32 2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %2, i32 0, i32 3
  store i32 33261, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 3
  store i32 33261, i32* %32, align 8
  %33 = load i32, i32* @GIT_MERGE_FILE_IGNORE_WHITESPACE_EOL, align 4
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %33
  store i32 %36, i32* %34, align 4
  %37 = call i32 @git_merge_file(%struct.TYPE_12__* %5, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2, %struct.TYPE_14__* %3, %struct.TYPE_13__* %4)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cl_assert_equal_i(i32 1, i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cl_assert_equal_i(i32 33261, i32 %46)
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @cl_assert_equal_i(i32 %49, i32 %51)
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @cl_assert_equal_strn(i8* %53, i32 %55, i32 %57)
  %59 = call i32 @git_merge_file_result_free(%struct.TYPE_12__* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_merge_file(%struct.TYPE_12__*, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_13__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @cl_assert_equal_strn(i8*, i32, i32) #2

declare dso_local i32 @git_merge_file_result_free(%struct.TYPE_12__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
