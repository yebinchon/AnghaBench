; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__baseline_is_empty_when_no_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__baseline_is_empty_when_no_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64*, i32, i32, i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"master\00", align 1
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@GIT_RESET_HARD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"testrepo/.git/index\00", align 1
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@GIT_CHECKOUT_NOTIFY_CONFLICT = common dso_local global i32 0, align 4
@checkout_conflict_count_cb = common dso_local global i32 0, align 4
@GIT_ECONFLICT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_tree__baseline_is_empty_when_no_index() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.TYPE_4__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 24, i1 false)
  store i64 0, i64* %4, align 8
  %6 = load i32, i32* @g_repo, align 4
  %7 = call i32 @assert_on_branch(i32 %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @g_repo, align 4
  %9 = call i32 @git_repository_head(i32** %2, i32 %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %13 = call i32 @git_reference_peel(i32** %3, i32* %11, i32 %12)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32, i32* @g_repo, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @GIT_RESET_HARD, align 4
  %18 = call i32 @git_reset(i32 %15, i32* %16, i32 %17, i32* null)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = call i32 @p_unlink(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @cl_must_pass(i32 %20)
  %22 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %23 = xor i32 %22, -1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %23
  store i32 %26, i32* %24, align 8
  %27 = load i32, i32* @GIT_CHECKOUT_NOTIFY_CONFLICT, align 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* @checkout_conflict_count_cb, align 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i64* %4, i64** %31, align 8
  %32 = load i32, i32* @GIT_ECONFLICT, align 4
  %33 = load i32, i32* @g_repo, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @git_checkout_tree(i32 %33, i32* %34, %struct.TYPE_4__* %1)
  %36 = call i32 @cl_git_fail_with(i32 %32, i32 %35)
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @cl_assert_equal_i(i32 4, i64 %37)
  %39 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %39
  store i32 %42, i32* %40, align 8
  %43 = load i32, i32* @g_repo, align 4
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @git_checkout_tree(i32 %43, i32* %44, %struct.TYPE_4__* %1)
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = load i32, i32* @g_repo, align 4
  %48 = call i32 @assert_status_entrycount(i32 %47, i32 0)
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @git_object_free(i32* %49)
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @git_reference_free(i32* %51)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert_on_branch(i32, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_head(i32**, i32) #2

declare dso_local i32 @git_reference_peel(i32**, i32*, i32) #2

declare dso_local i32 @git_reset(i32, i32*, i32, i32*) #2

declare dso_local i32 @cl_must_pass(i32) #2

declare dso_local i32 @p_unlink(i8*) #2

declare dso_local i32 @cl_git_fail_with(i32, i32) #2

declare dso_local i32 @git_checkout_tree(i32, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i64) #2

declare dso_local i32 @assert_status_entrycount(i32, i32) #2

declare dso_local i32 @git_object_free(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
