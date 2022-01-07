; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__can_update_but_not_write_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__can_update_but_not_write_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@GIT_CHECKOUT_DONT_WRITE_INDEX = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@GIT_OBJECT_ANY = common dso_local global i32 0, align 4
@GIT_RESET_HARD = common dso_local global i32 0, align 4
@g_opts = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"./testrepo/ab/\00", align 1
@g_object = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"subtrees\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"./testrepo/ab/de/2.txt\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"ab/de/2.txt\00", align 1
@GIT_STATUS_INDEX_NEW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"testrepo\00", align 1
@GIT_STATUS_WT_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_tree__can_update_but_not_write_index() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = bitcast %struct.TYPE_4__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %8 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %9 = load i32, i32* @GIT_CHECKOUT_DONT_WRITE_INDEX, align 4
  %10 = or i32 %8, %9
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %10
  store i32 %13, i32* %11, align 4
  %14 = load i32*, i32** @g_repo, align 8
  %15 = call i32 @git_reference_name_to_id(i32* %1, i32* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32*, i32** @g_repo, align 8
  %18 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %19 = call i32 @git_object_lookup(i32** %2, i32* %17, i32* %1, i32 %18)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32*, i32** @g_repo, align 8
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* @GIT_RESET_HARD, align 4
  %24 = call i32 @git_reset(i32* %21, i32* %22, i32 %23, i32* @g_opts)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = call i32 @git_path_isdir(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @cl_assert_equal_i(i32 0, i32 %26)
  %28 = load i32*, i32** @g_repo, align 8
  %29 = call i32 @git_revparse_single(i32* @g_object, i32* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32*, i32** @g_repo, align 8
  %32 = load i32, i32* @g_object, align 4
  %33 = call i32 @git_checkout_tree(i32* %31, i32 %32, %struct.TYPE_4__* %4)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = call i32 @git_path_isfile(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %36 = call i32 @cl_assert_equal_i(i32 1, i32 %35)
  %37 = load i32*, i32** @g_repo, align 8
  %38 = call i32 @git_status_file(i32* %3, i32* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load i32, i32* @GIT_STATUS_INDEX_NEW, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @cl_assert_equal_i(i32 %40, i32 %41)
  %43 = call i32 @git_repository_open(i32** %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @git_status_file(i32* %3, i32* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %47 = call i32 @cl_git_pass(i32 %46)
  %48 = load i32, i32* @GIT_STATUS_WT_NEW, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @cl_assert_equal_i(i32 %48, i32 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @git_repository_free(i32* %51)
  %53 = load i32*, i32** @g_repo, align 8
  %54 = call i32 @git_repository_index(i32** %5, i32* %53)
  %55 = call i32 @cl_git_pass(i32 %54)
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @git_index_write(i32* %56)
  %58 = call i32 @cl_git_pass(i32 %57)
  %59 = call i32 @git_repository_open(i32** %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %60 = call i32 @cl_git_pass(i32 %59)
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @git_status_file(i32* %3, i32* %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %63 = call i32 @cl_git_pass(i32 %62)
  %64 = load i32, i32* @GIT_STATUS_INDEX_NEW, align 4
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @cl_assert_equal_i(i32 %64, i32 %65)
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @git_repository_free(i32* %67)
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @git_object_free(i32* %69)
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @git_index_free(i32* %71)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_name_to_id(i32*, i32*, i8*) #2

declare dso_local i32 @git_object_lookup(i32**, i32*, i32*, i32) #2

declare dso_local i32 @git_reset(i32*, i32*, i32, i32*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_path_isdir(i8*) #2

declare dso_local i32 @git_revparse_single(i32*, i32*, i8*) #2

declare dso_local i32 @git_checkout_tree(i32*, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @git_path_isfile(i8*) #2

declare dso_local i32 @git_status_file(i32*, i32*, i8*) #2

declare dso_local i32 @git_repository_open(i32**, i8*) #2

declare dso_local i32 @git_repository_free(i32*) #2

declare dso_local i32 @git_repository_index(i32**, i32*) #2

declare dso_local i32 @git_index_write(i32*) #2

declare dso_local i32 @git_object_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
