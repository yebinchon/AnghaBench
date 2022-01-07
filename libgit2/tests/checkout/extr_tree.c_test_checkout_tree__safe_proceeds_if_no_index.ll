; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__safe_proceeds_if_no_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__safe_proceeds_if_no_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"testrepo/.git/index\00", align 1
@GIT_CHECKOUT_SAFE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"refs/heads/subtrees\00", align 1
@GIT_OBJECT_ANY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"testrepo/README\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"testrepo/branch_file.txt\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"testrepo/new.txt\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"testrepo/ab/4.txt\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"testrepo/ab/c/3.txt\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"testrepo/ab/de/2.txt\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"testrepo/ab/de/fgh/1.txt\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"testrepo/a\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"subtrees\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_tree__safe_proceeds_if_no_index() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  store i32* null, i32** %3, align 8
  %5 = load i32, i32* @g_repo, align 4
  %6 = call i32 @assert_on_branch(i32 %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @p_unlink(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @cl_must_pass(i32 %7)
  %9 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @g_repo, align 4
  %12 = call i32 @git_reference_name_to_id(i32* %2, i32 %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* @g_repo, align 4
  %15 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %16 = call i32 @git_object_lookup(i32** %3, i32 %14, i32* %2, i32 %15)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @g_repo, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @git_checkout_tree(i32 %18, i32* %19, %struct.TYPE_4__* %1)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32, i32* @g_repo, align 4
  %23 = call i32 @git_repository_set_head(i32 %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = call i32 @git_path_isfile(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %26 = call i32 @cl_assert(i32 %25)
  %27 = call i32 @git_path_isfile(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %28 = call i32 @cl_assert(i32 %27)
  %29 = call i32 @git_path_isfile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %30 = call i32 @cl_assert(i32 %29)
  %31 = call i32 @git_path_isfile(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %32 = call i32 @cl_assert(i32 %31)
  %33 = call i32 @git_path_isfile(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %34 = call i32 @cl_assert(i32 %33)
  %35 = call i32 @git_path_isfile(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %36 = call i32 @cl_assert(i32 %35)
  %37 = call i32 @git_path_isfile(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %38 = call i32 @cl_assert(i32 %37)
  %39 = call i32 @git_path_isdir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @cl_assert(i32 %42)
  %44 = load i32, i32* @g_repo, align 4
  %45 = call i32 @assert_on_branch(i32 %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @git_object_free(i32* %46)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert_on_branch(i32, i8*) #2

declare dso_local i32 @cl_must_pass(i32) #2

declare dso_local i32 @p_unlink(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_name_to_id(i32*, i32, i8*) #2

declare dso_local i32 @git_object_lookup(i32**, i32, i32*, i32) #2

declare dso_local i32 @git_checkout_tree(i32, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @git_repository_set_head(i32, i8*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_path_isfile(i8*) #2

declare dso_local i32 @git_path_isdir(i8*) #2

declare dso_local i32 @git_object_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
