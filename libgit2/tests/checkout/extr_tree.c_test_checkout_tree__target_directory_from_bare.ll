; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__target_directory_from_bare.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__target_directory_from_bare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_CHECKOUT_SAFE = common dso_local global i32 0, align 4
@GIT_CHECKOUT_RECREATE_MISSING = common dso_local global i32 0, align 4
@GIT_CHECKOUT_NOTIFY_ALL = common dso_local global i32 0, align 4
@checkout_count_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@g_object = common dso_local global i32 0, align 4
@GIT_OBJECT_ANY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"alternative\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"./alternative/README\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"hey there\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"./alternative/branch_file.txt\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"hi\0Abye!\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"./alternative/new.txt\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"my new file\0A\00", align 1
@GIT_RMDIR_REMOVE_FILES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_tree__target_directory_from_bare() #0 {
  %1 = alloca %struct.TYPE_6__, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__, align 4
  %4 = bitcast %struct.TYPE_6__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast (%struct.TYPE_6__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 32, i1 false)
  %5 = call i32 @memset(%struct.TYPE_7__* %3, i32 0, i32 12)
  %6 = call i32 (...) @test_checkout_tree__cleanup()
  %7 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %7, i32* @g_repo, align 4
  %8 = load i32, i32* @g_repo, align 4
  %9 = call i32 @git_repository_is_bare(i32 %8)
  %10 = call i32 @cl_assert(i32 %9)
  %11 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  %12 = load i32, i32* @GIT_CHECKOUT_RECREATE_MISSING, align 4
  %13 = or i32 %11, %12
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* @GIT_CHECKOUT_NOTIFY_ALL, align 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 4
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @checkout_count_callback, align 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 3
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %19, align 8
  %20 = load i32, i32* @g_repo, align 4
  %21 = call i32 @git_reference_name_to_id(i32* %2, i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32, i32* @g_repo, align 4
  %24 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %25 = call i32 @git_object_lookup(i32* @g_object, i32 %23, i32* %2, i32 %24)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32, i32* @g_repo, align 4
  %28 = load i32, i32* @g_object, align 4
  %29 = call i32 @git_checkout_tree(i32 %27, i32 %28, %struct.TYPE_6__* %1)
  %30 = call i32 @cl_git_fail(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %31, align 8
  %32 = call i32 @git_path_isdir(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @cl_assert(i32 %35)
  %37 = load i32, i32* @g_repo, align 4
  %38 = load i32, i32* @g_object, align 4
  %39 = call i32 @git_checkout_tree(i32 %37, i32 %38, %struct.TYPE_6__* %1)
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cl_assert_equal_i(i32 0, i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cl_assert_equal_i(i32 0, i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cl_assert_equal_i(i32 3, i32 %48)
  %50 = call i32 @check_file_contents_nocr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %51 = call i32 @check_file_contents_nocr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %52 = call i32 @check_file_contents_nocr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %53 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %54 = call i32 @git_futils_rmdir_r(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %53)
  %55 = call i32 @cl_git_pass(i32 %54)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @test_checkout_tree__cleanup(...) #2

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_repository_is_bare(i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_name_to_id(i32*, i32, i8*) #2

declare dso_local i32 @git_object_lookup(i32*, i32, i32*, i32) #2

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @git_checkout_tree(i32, i32, %struct.TYPE_6__*) #2

declare dso_local i32 @git_path_isdir(i8*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @check_file_contents_nocr(i8*, i8*) #2

declare dso_local i32 @git_futils_rmdir_r(i8*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
