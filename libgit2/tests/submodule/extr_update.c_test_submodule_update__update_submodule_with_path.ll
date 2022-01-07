; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_update.c_test_submodule_update__update_submodule_with_path.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_update.c_test_submodule_update__update_submodule_with_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.update_submodule_cb_payload*, i32 }
%struct.update_submodule_cb_payload = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.update_submodule_cb_payload*, i32 }

@GIT_SUBMODULE_UPDATE_OPTIONS_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@g_repo = common dso_local global i32 0, align 4
@checkout_progress_cb = common dso_local global i32 0, align 4
@update_tips = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"testrepo\00", align 1
@GIT_SUBMODULE_IGNORE_UNSPECIFIED = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_IN_HEAD = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_IN_INDEX = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_IN_CONFIG = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_WD_UNINITIALIZED = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_IN_WD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"a65fedf39aefe402d3bb6e24df4d4f5fe4547750\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_submodule_update__update_submodule_with_path() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_10__, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.update_submodule_cb_payload, align 4
  %5 = bitcast %struct.TYPE_10__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.TYPE_10__* @GIT_SUBMODULE_UPDATE_OPTIONS_INIT to i8*), i64 32, i1 false)
  store i32 0, i32* %3, align 4
  %6 = bitcast %struct.update_submodule_cb_payload* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 12, i1 false)
  %7 = call i32 (...) @setup_fixture_submodule_with_path()
  store i32 %7, i32* @g_repo, align 4
  %8 = load i32, i32* @checkout_progress_cb, align 4
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store %struct.update_submodule_cb_payload* %4, %struct.update_submodule_cb_payload** %12, align 8
  %13 = load i32, i32* @update_tips, align 4
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store %struct.update_submodule_cb_payload* %4, %struct.update_submodule_cb_payload** %19, align 8
  %20 = load i32, i32* @g_repo, align 4
  %21 = call i32 @git_submodule_lookup(i32** %1, i32 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32, i32* @g_repo, align 4
  %24 = load i32, i32* @GIT_SUBMODULE_IGNORE_UNSPECIFIED, align 4
  %25 = call i32 @git_submodule_status(i32* %3, i32 %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_HEAD, align 4
  %29 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_INDEX, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_CONFIG, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @GIT_SUBMODULE_STATUS_WD_UNINITIALIZED, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @cl_assert_equal_i(i32 %27, i32 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @git_submodule_init(i32* %36, i32 0)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i32*, i32** %1, align 8
  %40 = call i32 @git_submodule_update(i32* %39, i32 0, %struct.TYPE_10__* %2)
  %41 = call i32 @cl_git_pass(i32 %40)
  %42 = load i32, i32* @g_repo, align 4
  %43 = load i32, i32* @GIT_SUBMODULE_IGNORE_UNSPECIFIED, align 4
  %44 = call i32 @git_submodule_status(i32* %3, i32 %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_HEAD, align 4
  %48 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_INDEX, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_CONFIG, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_WD, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @cl_assert_equal_i(i32 %46, i32 %53)
  %55 = load i32*, i32** %1, align 8
  %56 = call i32 @git_submodule_head_id(i32* %55)
  %57 = call i64 @git_oid_streq(i32 %56, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @cl_assert(i32 %59)
  %61 = load i32*, i32** %1, align 8
  %62 = call i32 @git_submodule_wd_id(i32* %61)
  %63 = call i64 @git_oid_streq(i32 %62, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @cl_assert(i32 %65)
  %67 = load i32*, i32** %1, align 8
  %68 = call i32 @git_submodule_index_id(i32* %67)
  %69 = call i64 @git_oid_streq(i32 %68, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @cl_assert(i32 %71)
  %73 = getelementptr inbounds %struct.update_submodule_cb_payload, %struct.update_submodule_cb_payload* %4, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @cl_assert_equal_i(i32 1, i32 %74)
  %76 = getelementptr inbounds %struct.update_submodule_cb_payload, %struct.update_submodule_cb_payload* %4, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @cl_assert_equal_i(i32 1, i32 %77)
  %79 = load i32*, i32** %1, align 8
  %80 = call i32 @git_submodule_free(i32* %79)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @setup_fixture_submodule_with_path(...) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_submodule_lookup(i32**, i32, i8*) #2

declare dso_local i32 @git_submodule_status(i32*, i32, i8*, i32) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_submodule_init(i32*, i32) #2

declare dso_local i32 @git_submodule_update(i32*, i32, %struct.TYPE_10__*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i64 @git_oid_streq(i32, i8*) #2

declare dso_local i32 @git_submodule_head_id(i32*) #2

declare dso_local i32 @git_submodule_wd_id(i32*) #2

declare dso_local i32 @git_submodule_index_id(i32*) #2

declare dso_local i32 @git_submodule_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
