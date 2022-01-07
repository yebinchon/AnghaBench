; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__donot_update_deleted_file_by_default.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__donot_update_deleted_file_by_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@GIT_CHECKOUT_SAFE = common dso_local global i32 0, align 4
@GIT_CHECKOUT_NOTIFY_ALL = common dso_local global i32 0, align 4
@checkout_count_callback = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"be3563ae3f795b2b4353bcce3a527ad0a4f7f644\00", align 1
@GIT_RESET_HARD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"testrepo/branch_file.txt\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"branch_file.txt\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"099fabac3a9ea935598528c27f866e34089c2eff\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_tree__donot_update_deleted_file_by_default() #0 {
  %1 = alloca %struct.TYPE_6__, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = bitcast %struct.TYPE_6__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.TYPE_6__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 24, i1 false)
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %9 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 3
  store i32 %9, i32* %10, align 8
  %11 = call i32 @memset(%struct.TYPE_7__* %7, i32 0, i32 8)
  %12 = load i32, i32* @GIT_CHECKOUT_NOTIFY_ALL, align 4
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @checkout_count_callback, align 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %16, align 8
  %17 = load i32, i32* @g_repo, align 4
  %18 = call i32 @git_repository_index(i32** %6, i32 %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = call i32 @git_oid_fromstr(i32* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32, i32* @g_repo, align 4
  %23 = call i32 @git_commit_lookup(i32** %4, i32 %22, i32* %2)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32, i32* @g_repo, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @GIT_RESET_HARD, align 4
  %28 = call i32 @git_reset(i32 %25, i32* %26, i32 %27, i32* null)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = call i32 @p_unlink(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @git_index_remove_bypath(i32* %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @git_index_write(i32* %35)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = call i32 @git_path_exists(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @cl_assert(i32 %41)
  %43 = call i32 @git_oid_fromstr(i32* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = load i32, i32* @g_repo, align 4
  %46 = call i32 @git_commit_lookup(i32** %5, i32 %45, i32* %3)
  %47 = call i32 @cl_git_pass(i32 %46)
  %48 = load i32, i32* @g_repo, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @git_checkout_tree(i32 %48, i32* %49, %struct.TYPE_6__* %1)
  %51 = call i32 @cl_git_fail(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @cl_assert_equal_i(i32 1, i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @cl_assert_equal_i(i32 1, i32 %56)
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @git_commit_free(i32* %58)
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @git_commit_free(i32* %60)
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @git_index_free(i32* %62)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_reset(i32, i32*, i32, i32*) #2

declare dso_local i32 @p_unlink(i8*) #2

declare dso_local i32 @git_index_remove_bypath(i32*, i8*) #2

declare dso_local i32 @git_index_write(i32*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_path_exists(i8*) #2

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @git_checkout_tree(i32, i32*, %struct.TYPE_6__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_commit_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
