; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_update.c_test_submodule_update__update_already_checked_out_submodule.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_update.c_test_submodule_update__update_already_checked_out_submodule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.update_submodule_cb_payload*, i32 }
%struct.update_submodule_cb_payload = type { i32, i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@GIT_SUBMODULE_UPDATE_OPTIONS_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@g_repo = common dso_local global i32 0, align 4
@checkout_progress_cb = common dso_local global i32 0, align 4
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_submodule_update__update_already_checked_out_submodule() #0 {
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
  %12 = load i32, i32* @checkout_progress_cb, align 4
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store %struct.update_submodule_cb_payload* %7, %struct.update_submodule_cb_payload** %16, align 8
  %17 = load i32, i32* @g_repo, align 4
  %18 = call i32 @git_submodule_lookup(i32** %1, i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32, i32* @g_repo, align 4
  %21 = load i32, i32* @GIT_SUBMODULE_IGNORE_UNSPECIFIED, align 4
  %22 = call i32 @git_submodule_status(i32* %4, i32 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_HEAD, align 4
  %26 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_INDEX, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_CONFIG, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @GIT_SUBMODULE_STATUS_WD_UNINITIALIZED, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @cl_assert_equal_i(i32 %24, i32 %31)
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @git_submodule_update(i32* %33, i32 1, %struct.TYPE_9__* %3)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @git_submodule_head_id(i32* %36)
  %38 = call i64 @git_oid_streq(i32 %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @cl_assert(i32 %40)
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 @git_submodule_wd_id(i32* %42)
  %44 = call i64 @git_oid_streq(i32 %43, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @cl_assert(i32 %46)
  %48 = load i32*, i32** %1, align 8
  %49 = call i32 @git_submodule_index_id(i32* %48)
  %50 = call i64 @git_oid_streq(i32 %49, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @cl_assert(i32 %52)
  %54 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @g_repo, align 4
  %57 = call i32 @git_reference_lookup(i32** %5, i32 %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %58 = call i32 @cl_git_pass(i32 %57)
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %61 = call i32 @git_reference_peel(i32** %6, i32* %59, i32 %60)
  %62 = call i32 @cl_git_pass(i32 %61)
  %63 = load i32, i32* @g_repo, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @git_checkout_tree(i32 %63, i32* %64, %struct.TYPE_10__* %2)
  %66 = call i32 @cl_git_pass(i32 %65)
  %67 = load i32, i32* @g_repo, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @git_reference_name(i32* %68)
  %70 = call i32 @git_repository_set_head(i32 %67, i32 %69)
  %71 = call i32 @cl_git_pass(i32 %70)
  %72 = load i32, i32* @g_repo, align 4
  %73 = load i32, i32* @GIT_SUBMODULE_IGNORE_UNSPECIFIED, align 4
  %74 = call i32 @git_submodule_status(i32* %4, i32 %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = call i32 @cl_git_pass(i32 %74)
  %76 = load i32*, i32** %1, align 8
  %77 = call i32 @git_submodule_free(i32* %76)
  %78 = load i32, i32* @g_repo, align 4
  %79 = call i32 @git_submodule_lookup(i32** %1, i32 %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %80 = call i32 @cl_git_pass(i32 %79)
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_HEAD, align 4
  %83 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_INDEX, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_CONFIG, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_WD, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @GIT_SUBMODULE_STATUS_WD_MODIFIED, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @cl_assert_equal_i(i32 %81, i32 %90)
  %92 = load i32*, i32** %1, align 8
  %93 = call i32 @git_submodule_head_id(i32* %92)
  %94 = call i64 @git_oid_streq(i32 %93, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %95 = icmp eq i64 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i32 @cl_assert(i32 %96)
  %98 = load i32*, i32** %1, align 8
  %99 = call i32 @git_submodule_wd_id(i32* %98)
  %100 = call i64 @git_oid_streq(i32 %99, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %101 = icmp eq i64 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i32 @cl_assert(i32 %102)
  %104 = load i32*, i32** %1, align 8
  %105 = call i32 @git_submodule_index_id(i32* %104)
  %106 = call i64 @git_oid_streq(i32 %105, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %107 = icmp eq i64 %106, 0
  %108 = zext i1 %107 to i32
  %109 = call i32 @cl_assert(i32 %108)
  %110 = load i32*, i32** %1, align 8
  %111 = call i32 @git_submodule_update(i32* %110, i32 0, %struct.TYPE_9__* %3)
  %112 = call i32 @cl_git_pass(i32 %111)
  %113 = load i32*, i32** %1, align 8
  %114 = call i32 @git_submodule_head_id(i32* %113)
  %115 = call i64 @git_oid_streq(i32 %114, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %116 = icmp eq i64 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i32 @cl_assert(i32 %117)
  %119 = load i32*, i32** %1, align 8
  %120 = call i32 @git_submodule_wd_id(i32* %119)
  %121 = call i64 @git_oid_streq(i32 %120, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %122 = icmp eq i64 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i32 @cl_assert(i32 %123)
  %125 = load i32*, i32** %1, align 8
  %126 = call i32 @git_submodule_index_id(i32* %125)
  %127 = call i64 @git_oid_streq(i32 %126, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %128 = icmp eq i64 %127, 0
  %129 = zext i1 %128 to i32
  %130 = call i32 @cl_assert(i32 %129)
  %131 = getelementptr inbounds %struct.update_submodule_cb_payload, %struct.update_submodule_cb_payload* %7, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @cl_assert_equal_i(i32 1, i32 %132)
  %134 = load i32*, i32** %1, align 8
  %135 = call i32 @git_submodule_free(i32* %134)
  %136 = load i32*, i32** %6, align 8
  %137 = call i32 @git_object_free(i32* %136)
  %138 = load i32*, i32** %5, align 8
  %139 = call i32 @git_reference_free(i32* %138)
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

declare dso_local i32 @git_object_free(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
