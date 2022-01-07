; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_update.c_test_submodule_update__update_blocks_on_dirty_wd.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_update.c_test_submodule_update__update_blocks_on_dirty_wd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.update_submodule_cb_payload*, i32, i32 }
%struct.update_submodule_cb_payload = type { i32, i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@GIT_SUBMODULE_UPDATE_OPTIONS_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@g_repo = common dso_local global i32 0, align 4
@GIT_CHECKOUT_NOTIFY_CONFLICT = common dso_local global i32 0, align 4
@checkout_notify_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"testrepo\00", align 1
@GIT_SUBMODULE_IGNORE_UNSPECIFIED = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_IN_HEAD = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_IN_INDEX = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_IN_CONFIG = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_WD_UNINITIALIZED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"be3563ae3f795b2b4353bcce3a527ad0a4f7f644\00", align 1
@GIT_CHECKOUT_SAFE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"refs/heads/alternate_1\00", align 1
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_IN_WD = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_WD_MODIFIED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"a65fedf39aefe402d3bb6e24df4d4f5fe4547750\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"submodule_simple/testrepo/branch_file.txt\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"a conflicting edit\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_submodule_update__update_blocks_on_dirty_wd() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_10__, align 4
  %3 = alloca %struct.TYPE_9__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.update_submodule_cb_payload, align 4
  store i32* null, i32** %1, align 8
  %8 = bitcast %struct.TYPE_10__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %9 = bitcast %struct.TYPE_9__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.TYPE_9__* @GIT_SUBMODULE_UPDATE_OPTIONS_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %10 = bitcast %struct.update_submodule_cb_payload* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = call i32 (...) @setup_fixture_submodule_simple()
  store i32 %11, i32* @g_repo, align 4
  %12 = load i32, i32* @GIT_CHECKOUT_NOTIFY_CONFLICT, align 4
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @checkout_notify_cb, align 4
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store %struct.update_submodule_cb_payload* %7, %struct.update_submodule_cb_payload** %19, align 8
  %20 = load i32, i32* @g_repo, align 4
  %21 = call i32 @git_submodule_lookup(i32** %1, i32 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32, i32* @g_repo, align 4
  %24 = load i32, i32* @GIT_SUBMODULE_IGNORE_UNSPECIFIED, align 4
  %25 = call i32 @git_submodule_status(i32* %4, i32 %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_HEAD, align 4
  %29 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_INDEX, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_CONFIG, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @GIT_SUBMODULE_STATUS_WD_UNINITIALIZED, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @cl_assert_equal_i(i32 %27, i32 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @git_submodule_update(i32* %36, i32 1, %struct.TYPE_9__* %3)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i32*, i32** %1, align 8
  %40 = call i32 @git_submodule_head_id(i32* %39)
  %41 = call i64 @git_oid_streq(i32 %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @cl_assert(i32 %43)
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @git_submodule_wd_id(i32* %45)
  %47 = call i64 @git_oid_streq(i32 %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @cl_assert(i32 %49)
  %51 = load i32*, i32** %1, align 8
  %52 = call i32 @git_submodule_index_id(i32* %51)
  %53 = call i64 @git_oid_streq(i32 %52, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @cl_assert(i32 %55)
  %57 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @g_repo, align 4
  %60 = call i32 @git_reference_lookup(i32** %5, i32 %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %61 = call i32 @cl_git_pass(i32 %60)
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %64 = call i32 @git_reference_peel(i32** %6, i32* %62, i32 %63)
  %65 = call i32 @cl_git_pass(i32 %64)
  %66 = load i32, i32* @g_repo, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @git_checkout_tree(i32 %66, i32* %67, %struct.TYPE_10__* %2)
  %69 = call i32 @cl_git_pass(i32 %68)
  %70 = load i32, i32* @g_repo, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @git_reference_name(i32* %71)
  %73 = call i32 @git_repository_set_head(i32 %70, i32 %72)
  %74 = call i32 @cl_git_pass(i32 %73)
  %75 = load i32, i32* @g_repo, align 4
  %76 = load i32, i32* @GIT_SUBMODULE_IGNORE_UNSPECIFIED, align 4
  %77 = call i32 @git_submodule_status(i32* %4, i32 %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = call i32 @cl_git_pass(i32 %77)
  %79 = load i32*, i32** %1, align 8
  %80 = call i32 @git_submodule_free(i32* %79)
  %81 = load i32, i32* @g_repo, align 4
  %82 = call i32 @git_submodule_lookup(i32** %1, i32 %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %83 = call i32 @cl_git_pass(i32 %82)
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_HEAD, align 4
  %86 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_INDEX, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_CONFIG, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_WD, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @GIT_SUBMODULE_STATUS_WD_MODIFIED, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @cl_assert_equal_i(i32 %84, i32 %93)
  %95 = load i32*, i32** %1, align 8
  %96 = call i32 @git_submodule_head_id(i32* %95)
  %97 = call i64 @git_oid_streq(i32 %96, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %98 = icmp eq i64 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i32 @cl_assert(i32 %99)
  %101 = load i32*, i32** %1, align 8
  %102 = call i32 @git_submodule_wd_id(i32* %101)
  %103 = call i64 @git_oid_streq(i32 %102, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %104 = icmp eq i64 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @cl_assert(i32 %105)
  %107 = load i32*, i32** %1, align 8
  %108 = call i32 @git_submodule_index_id(i32* %107)
  %109 = call i64 @git_oid_streq(i32 %108, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %110 = icmp eq i64 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @cl_assert(i32 %111)
  %113 = load i32, i32* @O_WRONLY, align 4
  %114 = load i32, i32* @O_CREAT, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @O_TRUNC, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @cl_git_write2file(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 %117, i32 493)
  %119 = load i32*, i32** %1, align 8
  %120 = call i32 @git_submodule_update(i32* %119, i32 0, %struct.TYPE_9__* %3)
  %121 = call i32 @cl_git_fail(i32 %120)
  %122 = getelementptr inbounds %struct.update_submodule_cb_payload, %struct.update_submodule_cb_payload* %7, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @cl_assert_equal_i(i32 1, i32 %123)
  %125 = load i32*, i32** %1, align 8
  %126 = call i32 @git_submodule_head_id(i32* %125)
  %127 = call i64 @git_oid_streq(i32 %126, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %128 = icmp eq i64 %127, 0
  %129 = zext i1 %128 to i32
  %130 = call i32 @cl_assert(i32 %129)
  %131 = load i32*, i32** %1, align 8
  %132 = call i32 @git_submodule_wd_id(i32* %131)
  %133 = call i64 @git_oid_streq(i32 %132, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %134 = icmp eq i64 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i32 @cl_assert(i32 %135)
  %137 = load i32*, i32** %1, align 8
  %138 = call i32 @git_submodule_index_id(i32* %137)
  %139 = call i64 @git_oid_streq(i32 %138, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %140 = icmp eq i64 %139, 0
  %141 = zext i1 %140 to i32
  %142 = call i32 @cl_assert(i32 %141)
  %143 = load i32*, i32** %1, align 8
  %144 = call i32 @git_submodule_free(i32* %143)
  %145 = load i32*, i32** %6, align 8
  %146 = call i32 @git_object_free(i32* %145)
  %147 = load i32*, i32** %5, align 8
  %148 = call i32 @git_reference_free(i32* %147)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @setup_fixture_submodule_simple(...) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_submodule_lookup(i32**, i32, i8*) #2

declare dso_local i32 @git_submodule_status(i32*, i32, i8*, i32) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_submodule_update(i32*, i32, %struct.TYPE_9__*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i64 @git_oid_streq(i32, i8*) #2

declare dso_local i32 @git_submodule_head_id(i32*) #2

declare dso_local i32 @git_submodule_wd_id(i32*) #2

declare dso_local i32 @git_submodule_index_id(i32*) #2

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #2

declare dso_local i32 @git_reference_peel(i32**, i32*, i32) #2

declare dso_local i32 @git_checkout_tree(i32, i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @git_repository_set_head(i32, i32) #2

declare dso_local i32 @git_reference_name(i32*) #2

declare dso_local i32 @git_submodule_free(i32*) #2

declare dso_local i32 @cl_git_write2file(i8*, i8*, i32, i32, i32) #2

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @git_object_free(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
