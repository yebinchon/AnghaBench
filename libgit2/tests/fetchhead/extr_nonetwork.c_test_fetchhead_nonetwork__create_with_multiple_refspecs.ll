; ModuleID = '/home/carl/AnghaBench/libgit2/tests/fetchhead/extr_nonetwork.c_test_fetchhead_nonetwork__create_with_multiple_refspecs.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/fetchhead/extr_nonetwork.c_test_fetchhead_nonetwork__create_with_multiple_refspecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.prefix_count = type { i8*, i32, i32, i32, i64, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@cleanup_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"./test1\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"+refs/notes/*:refs/origin/notes/*\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"FETCH_HEAD\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"refs/notes/\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"refs/tags/\00", align 1
@count_refs = common dso_local global i32 0, align 4
@count_refs_called = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_fetchhead_nonetwork__create_with_multiple_refspecs() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = alloca i32, align 4
  %4 = alloca [4 x %struct.prefix_count], align 16
  %5 = bitcast %struct.TYPE_5__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %6 = call i32 @cl_set_cleanup(i32* @cleanup_repository, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @git_repository_init(i32* @g_repo, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @g_repo, align 4
  %10 = call i32 @cl_fixture(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %11 = call i32 @git_remote_create(i32** %1, i32 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @git_remote_free(i32* %13)
  %15 = load i32, i32* @g_repo, align 4
  %16 = call i32 @git_remote_add_fetch(i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @g_repo, align 4
  %19 = call i32 @git_remote_lookup(i32** %1, i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @g_repo, align 4
  %22 = call i32 @git_repository_path(i32 %21)
  %23 = call i32 @git_buf_joinpath(%struct.TYPE_5__* %2, i32 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @git_path_exists(i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @cl_assert(i32 %30)
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @git_remote_fetch(i32* %32, i32* null, i32* null, i32* null)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @git_path_exists(i32 %36)
  %38 = call i32 @cl_assert(i32 %37)
  %39 = bitcast [4 x %struct.prefix_count]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %39, i8 0, i64 160, i1 false)
  %40 = bitcast i8* %39 to [4 x %struct.prefix_count]*
  %41 = getelementptr inbounds [4 x %struct.prefix_count], [4 x %struct.prefix_count]* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.prefix_count, %struct.prefix_count* %41, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8** %42, align 16
  %43 = getelementptr inbounds %struct.prefix_count, %struct.prefix_count* %41, i32 0, i32 2
  store i32 1, i32* %43, align 4
  %44 = getelementptr inbounds [4 x %struct.prefix_count], [4 x %struct.prefix_count]* %40, i32 0, i32 1
  %45 = getelementptr inbounds %struct.prefix_count, %struct.prefix_count* %44, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8** %45, align 8
  %46 = getelementptr inbounds %struct.prefix_count, %struct.prefix_count* %44, i32 0, i32 2
  store i32 12, i32* %46, align 4
  %47 = getelementptr inbounds [4 x %struct.prefix_count], [4 x %struct.prefix_count]* %40, i32 0, i32 2
  %48 = getelementptr inbounds %struct.prefix_count, %struct.prefix_count* %47, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8** %48, align 16
  %49 = getelementptr inbounds %struct.prefix_count, %struct.prefix_count* %47, i32 0, i32 2
  store i32 7, i32* %49, align 4
  %50 = load i32, i32* @g_repo, align 4
  %51 = load i32, i32* @count_refs, align 4
  %52 = bitcast [4 x %struct.prefix_count]* %4 to %struct.prefix_count**
  %53 = call i32 @git_repository_fetchhead_foreach(i32 %50, i32 %51, %struct.prefix_count** %52)
  %54 = call i32 @cl_git_pass(i32 %53)
  %55 = load i32, i32* @count_refs_called, align 4
  %56 = call i32 @cl_assert(i32 %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %76, %0
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [4 x %struct.prefix_count], [4 x %struct.prefix_count]* %4, i64 0, i64 %59
  %61 = getelementptr inbounds %struct.prefix_count, %struct.prefix_count* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %57
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [4 x %struct.prefix_count], [4 x %struct.prefix_count]* %4, i64 0, i64 %66
  %68 = getelementptr inbounds %struct.prefix_count, %struct.prefix_count* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [4 x %struct.prefix_count], [4 x %struct.prefix_count]* %4, i64 0, i64 %71
  %73 = getelementptr inbounds %struct.prefix_count, %struct.prefix_count* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @cl_assert_equal_i(i32 %69, i32 %74)
  br label %76

76:                                               ; preds = %64
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %57

79:                                               ; preds = %57
  %80 = load i32*, i32** %1, align 8
  %81 = call i32 @git_remote_free(i32* %80)
  %82 = call i32 @git_buf_dispose(%struct.TYPE_5__* %2)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_set_cleanup(i32*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_init(i32*, i8*, i32) #2

declare dso_local i32 @git_remote_create(i32**, i32, i8*, i32) #2

declare dso_local i32 @cl_fixture(i8*) #2

declare dso_local i32 @git_remote_free(i32*) #2

declare dso_local i32 @git_remote_add_fetch(i32, i8*, i8*) #2

declare dso_local i32 @git_remote_lookup(i32**, i32, i8*) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_5__*, i32, i8*) #2

declare dso_local i32 @git_repository_path(i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_path_exists(i32) #2

declare dso_local i32 @git_remote_fetch(i32*, i32*, i32*, i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @git_repository_fetchhead_foreach(i32, i32, %struct.prefix_count**) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
