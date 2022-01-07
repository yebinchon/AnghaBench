; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/extr_files.c_test_merge_files__crlf_conflict_markers_for_crlf_files.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/extr_files.c_test_merge_files__crlf_conflict_markers_for_crlf_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i32, i8*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@GIT_MERGE_FILE_INPUT_INIT = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@GIT_MERGE_FILE_OPTIONS_INIT = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@.str = private unnamed_addr constant [93 x i8] c"<<<<<<< file.txt\0D\0AThis file\0D\0Adoes, too.\0D\0A=======\0D\0AAnd so does\0D\0Athis one.\0D\0A>>>>>>> file.txt\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [146 x i8] c"<<<<<<< file.txt\0D\0AThis file\0D\0Adoes, too.\0D\0A||||||| file.txt\0D\0AThis file has\0D\0ACRLF line endings.\0D\0A=======\0D\0AAnd so does\0D\0Athis one.\0D\0A>>>>>>> file.txt\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"This file has\0D\0ACRLF line endings.\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"file.txt\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"This file\0D\0Adoes, too.\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"And so does\0D\0Athis one.\0D\0A\00", align 1
@GIT_MERGE_FILE_STYLE_DIFF3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_merge_files__crlf_conflict_markers_for_crlf_files() #0 {
  %1 = alloca %struct.TYPE_14__, align 8
  %2 = alloca %struct.TYPE_14__, align 8
  %3 = alloca %struct.TYPE_14__, align 8
  %4 = alloca %struct.TYPE_13__, align 4
  %5 = alloca %struct.TYPE_12__, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = bitcast %struct.TYPE_14__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.TYPE_14__* @GIT_MERGE_FILE_INPUT_INIT to i8*), i64 32, i1 false)
  %11 = bitcast %struct.TYPE_14__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.TYPE_14__* @GIT_MERGE_FILE_INPUT_INIT to i8*), i64 32, i1 false)
  %12 = bitcast %struct.TYPE_14__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.TYPE_14__* @GIT_MERGE_FILE_INPUT_INIT to i8*), i64 32, i1 false)
  %13 = bitcast %struct.TYPE_13__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.TYPE_13__* @GIT_MERGE_FILE_OPTIONS_INIT to i8*), i64 4, i1 false)
  %14 = bitcast %struct.TYPE_12__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 16, i1 false)
  store i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %7, align 8
  store i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @strlen(i8* %17)
  store i64 %18, i64* %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1, i32 0, i32 1
  store i32 35, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1, i32 0, i32 3
  store i32 33188, i32* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %2, i32 0, i32 1
  store i32 23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %2, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %2, i32 0, i32 3
  store i32 33188, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 1
  store i32 24, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 3
  store i32 33188, i32* %30, align 8
  %31 = call i32 @git_merge_file(%struct.TYPE_12__* %5, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2, %struct.TYPE_14__* %3, %struct.TYPE_13__* %4)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cl_assert_equal_i(i64 0, i32 %34)
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cl_assert_equal_i(i64 %36, i32 %38)
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %7, align 8
  %44 = call i64 @memcmp(i8* %40, i32 %42, i64 %43)
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @cl_assert(i32 %46)
  %48 = call i32 @git_merge_file_result_free(%struct.TYPE_12__* %5)
  %49 = load i32, i32* @GIT_MERGE_FILE_STYLE_DIFF3, align 4
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 4
  %53 = call i32 @git_merge_file(%struct.TYPE_12__* %5, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2, %struct.TYPE_14__* %3, %struct.TYPE_13__* %4)
  %54 = call i32 @cl_git_pass(i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @cl_assert_equal_i(i64 0, i32 %56)
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @cl_assert_equal_i(i64 %58, i32 %60)
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %7, align 8
  %66 = call i64 @memcmp(i8* %62, i32 %64, i64 %65)
  %67 = icmp eq i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @cl_assert(i32 %68)
  %70 = call i32 @git_merge_file_result_free(%struct.TYPE_12__* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_merge_file(%struct.TYPE_12__*, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_13__*) #2

declare dso_local i32 @cl_assert_equal_i(i64, i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i64 @memcmp(i8*, i32, i64) #2

declare dso_local i32 @git_merge_file_result_free(%struct.TYPE_12__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
