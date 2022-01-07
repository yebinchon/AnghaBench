; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_update.c_test_submodule_update__can_force_update.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_update.c_test_submodule_update__can_force_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@GIT_SUBMODULE_UPDATE_OPTIONS_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
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
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_submodule_update__can_force_update() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_10__, align 4
  %3 = alloca %struct.TYPE_9__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* null, i32** %1, align 8
  %7 = bitcast %struct.TYPE_10__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %8 = bitcast %struct.TYPE_9__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_9__* @GIT_SUBMODULE_UPDATE_OPTIONS_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %9 = call i32 (...) @setup_fixture_submodule_simple()
  store i32 %9, i32* @g_repo, align 4
  %10 = load i32, i32* @g_repo, align 4
  %11 = call i32 @git_submodule_lookup(i32** %1, i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* @g_repo, align 4
  %14 = load i32, i32* @GIT_SUBMODULE_IGNORE_UNSPECIFIED, align 4
  %15 = call i32 @git_submodule_status(i32* %4, i32 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_HEAD, align 4
  %19 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_INDEX, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_CONFIG, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @GIT_SUBMODULE_STATUS_WD_UNINITIALIZED, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @cl_assert_equal_i(i32 %17, i32 %24)
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @git_submodule_update(i32* %26, i32 1, %struct.TYPE_9__* %3)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @git_submodule_head_id(i32* %29)
  %31 = call i64 @git_oid_streq(i32 %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @cl_assert(i32 %33)
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @git_submodule_wd_id(i32* %35)
  %37 = call i64 @git_oid_streq(i32 %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @cl_assert(i32 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = call i32 @git_submodule_index_id(i32* %41)
  %43 = call i64 @git_oid_streq(i32 %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @cl_assert(i32 %45)
  %47 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @g_repo, align 4
  %50 = call i32 @git_reference_lookup(i32** %5, i32 %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %51 = call i32 @cl_git_pass(i32 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %54 = call i32 @git_reference_peel(i32** %6, i32* %52, i32 %53)
  %55 = call i32 @cl_git_pass(i32 %54)
  %56 = load i32, i32* @g_repo, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @git_checkout_tree(i32 %56, i32* %57, %struct.TYPE_10__* %2)
  %59 = call i32 @cl_git_pass(i32 %58)
  %60 = load i32, i32* @g_repo, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @git_reference_name(i32* %61)
  %63 = call i32 @git_repository_set_head(i32 %60, i32 %62)
  %64 = call i32 @cl_git_pass(i32 %63)
  %65 = load i32, i32* @g_repo, align 4
  %66 = load i32, i32* @GIT_SUBMODULE_IGNORE_UNSPECIFIED, align 4
  %67 = call i32 @git_submodule_status(i32* %4, i32 %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = call i32 @cl_git_pass(i32 %67)
  %69 = load i32*, i32** %1, align 8
  %70 = call i32 @git_submodule_free(i32* %69)
  %71 = load i32, i32* @g_repo, align 4
  %72 = call i32 @git_submodule_lookup(i32** %1, i32 %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %73 = call i32 @cl_git_pass(i32 %72)
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_HEAD, align 4
  %76 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_INDEX, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_CONFIG, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_WD, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @GIT_SUBMODULE_STATUS_WD_MODIFIED, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @cl_assert_equal_i(i32 %74, i32 %83)
  %85 = load i32*, i32** %1, align 8
  %86 = call i32 @git_submodule_head_id(i32* %85)
  %87 = call i64 @git_oid_streq(i32 %86, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @cl_assert(i32 %89)
  %91 = load i32*, i32** %1, align 8
  %92 = call i32 @git_submodule_wd_id(i32* %91)
  %93 = call i64 @git_oid_streq(i32 %92, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %94 = icmp eq i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @cl_assert(i32 %95)
  %97 = load i32*, i32** %1, align 8
  %98 = call i32 @git_submodule_index_id(i32* %97)
  %99 = call i64 @git_oid_streq(i32 %98, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %100 = icmp eq i64 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @cl_assert(i32 %101)
  %103 = load i32, i32* @O_WRONLY, align 4
  %104 = load i32, i32* @O_CREAT, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @O_TRUNC, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @cl_git_write2file(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 %107, i32 511)
  %109 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = load i32*, i32** %1, align 8
  %113 = call i32 @git_submodule_update(i32* %112, i32 0, %struct.TYPE_9__* %3)
  %114 = call i32 @cl_git_pass(i32 %113)
  %115 = load i32*, i32** %1, align 8
  %116 = call i32 @git_submodule_head_id(i32* %115)
  %117 = call i64 @git_oid_streq(i32 %116, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %118 = icmp eq i64 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i32 @cl_assert(i32 %119)
  %121 = load i32*, i32** %1, align 8
  %122 = call i32 @git_submodule_wd_id(i32* %121)
  %123 = call i64 @git_oid_streq(i32 %122, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %124 = icmp eq i64 %123, 0
  %125 = zext i1 %124 to i32
  %126 = call i32 @cl_assert(i32 %125)
  %127 = load i32*, i32** %1, align 8
  %128 = call i32 @git_submodule_index_id(i32* %127)
  %129 = call i64 @git_oid_streq(i32 %128, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %130 = icmp eq i64 %129, 0
  %131 = zext i1 %130 to i32
  %132 = call i32 @cl_assert(i32 %131)
  %133 = load i32*, i32** %1, align 8
  %134 = call i32 @git_submodule_free(i32* %133)
  %135 = load i32*, i32** %6, align 8
  %136 = call i32 @git_object_free(i32* %135)
  %137 = load i32*, i32** %5, align 8
  %138 = call i32 @git_reference_free(i32* %137)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

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

declare dso_local i32 @git_object_free(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
