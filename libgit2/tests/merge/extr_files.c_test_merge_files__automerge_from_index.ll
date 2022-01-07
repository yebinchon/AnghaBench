; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/extr_files.c_test_merge_files__automerge_from_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/extr_files.c_test_merge_files__automerge_from_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"6212c31dab5e482247d7977e4f0dd3601decf13b\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"automergeable.txt\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"ee3fa1b8c00aff7fe02065fdb50864bb0d932ccf\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"058541fc37114bfc1dddf6bd6bffc7fae5c2e6fe\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"newname.txt\00", align 1
@repo = common dso_local global i32 0, align 4
@AUTOMERGEABLE_MERGED_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_merge_files__automerge_from_index() #0 {
  %1 = alloca %struct.TYPE_8__, align 4
  %2 = alloca %struct.TYPE_9__, align 8
  %3 = alloca %struct.TYPE_9__, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = bitcast %struct.TYPE_8__* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 24, i1 false)
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %7 = call i32 @git_oid_fromstr(i32* %6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  store i32 33188, i32* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  %11 = call i32 @git_oid_fromstr(i32* %10, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  store i32 33261, i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  %15 = call i32 @git_oid_fromstr(i32* %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  store i32 33188, i32* %17, align 8
  %18 = load i32, i32* @repo, align 4
  %19 = call i32 @git_merge_file_from_index(%struct.TYPE_8__* %1, i32 %18, %struct.TYPE_9__* %2, %struct.TYPE_9__* %3, %struct.TYPE_9__* %4, i32 0)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @cl_assert_equal_i(i32 1, i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cl_assert_equal_i(i32 33261, i32 %28)
  %30 = load i32, i32* @AUTOMERGEABLE_MERGED_FILE, align 4
  %31 = call i32 @strlen(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cl_assert_equal_i(i32 %31, i32 %33)
  %35 = load i32, i32* @AUTOMERGEABLE_MERGED_FILE, align 4
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @cl_assert_equal_strn(i32 %35, i32 %37, i32 %39)
  %41 = call i32 @git_merge_file_result_free(%struct.TYPE_8__* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_merge_file_from_index(%struct.TYPE_8__*, i32, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @cl_assert_equal_strn(i32, i32, i32) #2

declare dso_local i32 @git_merge_file_result_free(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
