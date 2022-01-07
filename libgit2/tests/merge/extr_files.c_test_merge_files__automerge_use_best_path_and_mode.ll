; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/extr_files.c_test_merge_files__automerge_use_best_path_and_mode.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/extr_files.c_test_merge_files__automerge_use_best_path_and_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i32, i8*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }

@GIT_MERGE_FILE_INPUT_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [28 x i8] c"Zero\0A1\0A2\0A3\0A4\0A5\0A6\0A7\0A8\0A9\0ATen\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"0\0A1\0A2\0A3\0A4\0A5\0A6\0A7\0A8\0A9\0A10\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"testfile.txt\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Zero\0A1\0A2\0A3\0A4\0A5\0A6\0A7\0A8\0A9\0A10\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"0\0A1\0A2\0A3\0A4\0A5\0A6\0A7\0A8\0A9\0ATen\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"theirs.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_merge_files__automerge_use_best_path_and_mode() #0 {
  %1 = alloca %struct.TYPE_10__, align 8
  %2 = alloca %struct.TYPE_10__, align 8
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca %struct.TYPE_9__, align 4
  %5 = alloca i8*, align 8
  %6 = bitcast %struct.TYPE_10__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.TYPE_10__* @GIT_MERGE_FILE_INPUT_INIT to i8*), i64 32, i1 false)
  %7 = bitcast %struct.TYPE_10__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.TYPE_10__* @GIT_MERGE_FILE_INPUT_INIT to i8*), i64 32, i1 false)
  %8 = bitcast %struct.TYPE_10__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.TYPE_10__* @GIT_MERGE_FILE_INPUT_INIT to i8*), i64 32, i1 false)
  %9 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 24, i1 false)
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 3
  store i32 33261, i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8** %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 3
  store i32 33188, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 2
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 3
  store i32 33261, i32* %30, align 8
  %31 = call i32 @git_merge_file(%struct.TYPE_9__* %4, %struct.TYPE_10__* %1, %struct.TYPE_10__* %2, %struct.TYPE_10__* %3, i32 0)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cl_assert_equal_i(i32 1, i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cl_assert_equal_i(i32 33188, i32 %40)
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cl_assert_equal_i(i32 %43, i32 %45)
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @cl_assert_equal_strn(i8* %47, i32 %49, i32 %51)
  %53 = call i32 @git_merge_file_result_free(%struct.TYPE_9__* %4)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_merge_file(%struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @cl_assert_equal_strn(i8*, i32, i32) #2

declare dso_local i32 @git_merge_file_result_free(%struct.TYPE_9__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
