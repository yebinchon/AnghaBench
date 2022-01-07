; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__can_checkout_with_pattern.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__can_checkout_with_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8**, i32 }

@.str = private unnamed_addr constant [11 x i8] c"[l-z]*.txt\00", align 1
@__const.test_checkout_tree__can_checkout_with_pattern.entries = private unnamed_addr constant [1 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0)], align 8
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@GIT_CHECKOUT_REMOVE_UNTRACKED = common dso_local global i32 0, align 4
@g_opts = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@g_object = common dso_local global i32* null, align 8
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"8496071c1b46c854b31185ea97743be6a8774479\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"testrepo/README\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"testrepo/branch_file.txt\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"testrepo/link_to_new.txt\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"testrepo/new.txt\00", align 1
@GIT_CHECKOUT_SAFE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_tree__can_checkout_with_pattern() #0 {
  %1 = alloca [1 x i8*], align 8
  %2 = bitcast [1 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 bitcast ([1 x i8*]* @__const.test_checkout_tree__can_checkout_with_pattern.entries to i8*), i64 8, i1 false)
  %3 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %4 = load i32, i32* @GIT_CHECKOUT_REMOVE_UNTRACKED, align 4
  %5 = or i32 %3, %4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_opts, i32 0, i32 0), align 8
  %6 = load i32, i32* @g_repo, align 4
  %7 = call i32 @git_revparse_single(i32** @g_object, i32 %6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @g_repo, align 4
  %10 = load i32*, i32** @g_object, align 8
  %11 = call i32 @git_checkout_tree(i32 %9, i32* %10, %struct.TYPE_5__* @g_opts)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* @g_repo, align 4
  %14 = load i32*, i32** @g_object, align 8
  %15 = call i32 @git_object_id(i32* %14)
  %16 = call i32 @git_repository_set_head_detached(i32 %13, i32 %15)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32*, i32** @g_object, align 8
  %19 = call i32 @git_object_free(i32* %18)
  store i32* null, i32** @g_object, align 8
  %20 = call i32 @git_path_exists(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %21 = call i32 @cl_assert(i32 %20)
  %22 = call i32 @git_path_exists(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @cl_assert(i32 %25)
  %27 = call i32 @git_path_exists(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @cl_assert(i32 %30)
  %32 = call i32 @git_path_exists(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @cl_assert(i32 %35)
  %37 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_opts, i32 0, i32 0), align 8
  %38 = getelementptr inbounds [1 x i8*], [1 x i8*]* %1, i64 0, i64 0
  store i8** %38, i8*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_opts, i32 0, i32 1, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_opts, i32 0, i32 1, i32 1), align 8
  %39 = load i32, i32* @g_repo, align 4
  %40 = call i32 @git_revparse_single(i32** @g_object, i32 %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %41 = call i32 @cl_git_pass(i32 %40)
  %42 = load i32, i32* @g_repo, align 4
  %43 = load i32*, i32** @g_object, align 8
  %44 = call i32 @git_checkout_tree(i32 %42, i32* %43, %struct.TYPE_5__* @g_opts)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = call i32 @git_path_exists(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %47 = call i32 @cl_assert(i32 %46)
  %48 = call i32 @git_path_exists(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @cl_assert(i32 %51)
  %53 = call i32 @git_path_exists(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %54 = call i32 @cl_assert(i32 %53)
  %55 = call i32 @git_path_exists(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %56 = call i32 @cl_assert(i32 %55)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_revparse_single(i32**, i32, i8*) #2

declare dso_local i32 @git_checkout_tree(i32, i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @git_repository_set_head_detached(i32, i32) #2

declare dso_local i32 @git_object_id(i32*) #2

declare dso_local i32 @git_object_free(i32*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_path_exists(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
