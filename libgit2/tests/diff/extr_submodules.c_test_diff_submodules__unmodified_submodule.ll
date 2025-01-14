; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_submodules.c_test_diff_submodules__unmodified_submodule.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_submodules.c_test_diff_submodules__unmodified_submodule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8* }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@test_diff_submodules__unmodified_submodule.expected = internal global [8 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [7 x i8] c"<SKIP>\00", align 1
@.str.1 = private unnamed_addr constant [123 x i8] c"diff --git a/modified b/modified\0Aindex 092bfb9..452216e 100644\0A--- a/modified\0A+++ b/modified\0A@@ -1 +1,2 @@\0A-yo\0A+changed\0A+\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"<END>\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_IGNORED = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_UNMODIFIED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"b\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_submodules__unmodified_submodule() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = alloca i32*, align 8
  %3 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 bitcast (%struct.TYPE_4__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 24, i1 false)
  store i32* null, i32** %2, align 8
  %4 = call i32 (...) @setup_fixture_submodules()
  store i32 %4, i32* @g_repo, align 4
  %5 = load i32, i32* @GIT_DIFF_INCLUDE_IGNORED, align 4
  %6 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @GIT_DIFF_INCLUDE_UNMODIFIED, align 4
  %9 = or i32 %7, %8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %9, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  %13 = load i32, i32* @g_repo, align 4
  %14 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %13, i32* null, %struct.TYPE_4__* %1)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @check_diff_patches(i32* %16, i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @test_diff_submodules__unmodified_submodule.expected, i64 0, i64 0))
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @git_diff_free(i32* %18)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @setup_fixture_submodules(...) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @check_diff_patches(i32*, i8**) #2

declare dso_local i32 @git_diff_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
