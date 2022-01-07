; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/extr_files.c_test_merge_files__conflict_from_bufs.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/extr_files.c_test_merge_files__conflict_from_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i8*, i32, i8* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }

@GIT_MERGE_FILE_INPUT_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [74 x i8] c"<<<<<<< testfile.txt\0AAloha!\0AOurs.\0A=======\0AHi!\0ATheirs.\0A>>>>>>> theirs.txt\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Hello!\0AAncestor!\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"testfile.txt\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Aloha!\0AOurs.\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Hi!\0ATheirs.\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"theirs.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_merge_files__conflict_from_bufs() #0 {
  %1 = alloca %struct.TYPE_10__, align 8
  %2 = alloca %struct.TYPE_10__, align 8
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca %struct.TYPE_9__, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = bitcast %struct.TYPE_10__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.TYPE_10__* @GIT_MERGE_FILE_INPUT_INIT to i8*), i64 32, i1 false)
  %8 = bitcast %struct.TYPE_10__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.TYPE_10__* @GIT_MERGE_FILE_INPUT_INIT to i8*), i64 32, i1 false)
  %9 = bitcast %struct.TYPE_10__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.TYPE_10__* @GIT_MERGE_FILE_INPUT_INIT to i8*), i64 32, i1 false)
  %10 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 24, i1 false)
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @strlen(i8* %11)
  %13 = ptrtoint i8* %12 to i64
  store i64 %13, i64* %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i8* @strlen(i8* %16)
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 3
  store i8* %17, i8** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 2
  store i32 33261, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @strlen(i8* %23)
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 3
  store i8* %24, i8** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 2
  store i32 33188, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @strlen(i8* %30)
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 3
  store i8* %31, i8** %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 2
  store i32 33261, i32* %34, align 8
  %35 = call i32 @git_merge_file(%struct.TYPE_9__* %4, %struct.TYPE_10__* %1, %struct.TYPE_10__* %2, %struct.TYPE_10__* %3, i32* null)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cl_assert_equal_i(i64 0, i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @cl_assert_equal_i(i64 33188, i32 %44)
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cl_assert_equal_i(i64 %46, i32 %48)
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @cl_assert_equal_strn(i8* %50, i32 %52, i64 %53)
  %55 = call i32 @git_merge_file_result_free(%struct.TYPE_9__* %4)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @strlen(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_merge_file(%struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32*) #2

declare dso_local i32 @cl_assert_equal_i(i64, i32) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @cl_assert_equal_strn(i8*, i32, i64) #2

declare dso_local i32 @git_merge_file_result_free(%struct.TYPE_9__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
