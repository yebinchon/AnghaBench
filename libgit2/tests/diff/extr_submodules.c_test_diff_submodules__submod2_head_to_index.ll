; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_submodules.c_test_diff_submodules__submod2_head_to_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_submodules.c_test_diff_submodules__submod2_head_to_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@test_diff_submodules__submod2_head_to_index.expected = internal global [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([226 x i8], [226 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [7 x i8] c"<SKIP>\00", align 1
@.str.1 = private unnamed_addr constant [226 x i8] c"diff --git a/sm_added_and_uncommited b/sm_added_and_uncommited\0Anew file mode 160000\0Aindex 0000000..4800958\0A--- /dev/null\0A+++ b/sm_added_and_uncommited\0A@@ -0,0 +1 @@\0A+Subproject commit 480095882d281ed676fe5b863569520e54a7d5c0\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"<END>\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"b\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_submodules__submod2_head_to_index() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast (%struct.TYPE_4__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 24, i1 false)
  store i32* null, i32** %3, align 8
  %5 = call i32 (...) @setup_fixture_submod2()
  store i32 %5, i32* @g_repo, align 4
  %6 = load i32, i32* @g_repo, align 4
  %7 = call i32 @git_repository_head_tree(i32** %2, i32 %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i32 %9, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  %13 = load i32, i32* @g_repo, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @git_diff_tree_to_index(i32** %3, i32 %13, i32* %14, i32* null, %struct.TYPE_4__* %1)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @check_diff_patches(i32* %17, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @test_diff_submodules__submod2_head_to_index.expected, i64 0, i64 0))
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @git_diff_free(i32* %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @git_tree_free(i32* %21)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @setup_fixture_submod2(...) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_head_tree(i32**, i32) #2

declare dso_local i32 @git_diff_tree_to_index(i32**, i32, i32*, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @check_diff_patches(i32*, i8**) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
