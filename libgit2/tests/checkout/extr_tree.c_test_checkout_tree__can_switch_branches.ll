; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__can_switch_branches.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__can_switch_branches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"master\00", align 1
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"refs/heads/dir\00", align 1
@GIT_OBJECT_ANY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"testrepo/README\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"testrepo/branch_file.txt\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"testrepo/new.txt\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"testrepo/a/b.txt\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"testrepo/ab\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@GIT_CHECKOUT_SAFE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"refs/heads/subtrees\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"testrepo/ab/4.txt\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"testrepo/ab/c/3.txt\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"testrepo/ab/de/2.txt\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"testrepo/ab/de/fgh/1.txt\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"testrepo/a\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"subtrees\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_tree__can_switch_branches() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  store i32* null, i32** %3, align 8
  %5 = load i32, i32* @g_repo, align 4
  %6 = call i32 @assert_on_branch(i32 %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @g_repo, align 4
  %10 = call i32 @git_reference_name_to_id(i32* %2, i32 %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* @g_repo, align 4
  %13 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %14 = call i32 @git_object_lookup(i32** %3, i32 %12, i32* %2, i32 %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* @g_repo, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @git_checkout_tree(i32 %16, i32* %17, %struct.TYPE_4__* %1)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32, i32* @g_repo, align 4
  %21 = call i32 @git_repository_set_head(i32 %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = call i32 @git_path_isfile(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 @cl_assert(i32 %23)
  %25 = call i32 @git_path_isfile(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %26 = call i32 @cl_assert(i32 %25)
  %27 = call i32 @git_path_isfile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %28 = call i32 @cl_assert(i32 %27)
  %29 = call i32 @git_path_isfile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %30 = call i32 @cl_assert(i32 %29)
  %31 = call i32 @git_path_isdir(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @cl_assert(i32 %34)
  %36 = load i32, i32* @g_repo, align 4
  %37 = call i32 @assert_on_branch(i32 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @git_object_free(i32* %38)
  %40 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @g_repo, align 4
  %43 = call i32 @git_reference_name_to_id(i32* %2, i32 %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = load i32, i32* @g_repo, align 4
  %46 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %47 = call i32 @git_object_lookup(i32** %3, i32 %45, i32* %2, i32 %46)
  %48 = call i32 @cl_git_pass(i32 %47)
  %49 = load i32, i32* @g_repo, align 4
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @git_checkout_tree(i32 %49, i32* %50, %struct.TYPE_4__* %1)
  %52 = call i32 @cl_git_pass(i32 %51)
  %53 = load i32, i32* @g_repo, align 4
  %54 = call i32 @git_repository_set_head(i32 %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %55 = call i32 @cl_git_pass(i32 %54)
  %56 = call i32 @git_path_isfile(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %57 = call i32 @cl_assert(i32 %56)
  %58 = call i32 @git_path_isfile(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %59 = call i32 @cl_assert(i32 %58)
  %60 = call i32 @git_path_isfile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %61 = call i32 @cl_assert(i32 %60)
  %62 = call i32 @git_path_isfile(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %63 = call i32 @cl_assert(i32 %62)
  %64 = call i32 @git_path_isfile(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %65 = call i32 @cl_assert(i32 %64)
  %66 = call i32 @git_path_isfile(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %67 = call i32 @cl_assert(i32 %66)
  %68 = call i32 @git_path_isfile(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  %69 = call i32 @cl_assert(i32 %68)
  %70 = call i32 @git_path_isdir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @cl_assert(i32 %73)
  %75 = load i32, i32* @g_repo, align 4
  %76 = call i32 @assert_on_branch(i32 %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @git_object_free(i32* %77)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert_on_branch(i32, i8*) #2

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
