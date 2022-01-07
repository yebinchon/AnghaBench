; ModuleID = '/home/carl/AnghaBench/libgit2/tests/stash/extr_apply.c_test_stash_apply__with_default.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/stash/extr_apply.c_test_stash_apply__with_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@repo = common dso_local global i32 0, align 4
@repo_index = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"what\00", align 1
@GIT_STATUS_WT_MODIFIED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"how\00", align 1
@GIT_STATUS_CURRENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"who\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"when\00", align 1
@GIT_STATUS_WT_NEW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"why\00", align 1
@GIT_STATUS_INDEX_NEW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"where\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"stash/where\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"....\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_stash_apply__with_default() #0 {
  %1 = alloca %struct.TYPE_5__, align 4
  %2 = bitcast %struct.TYPE_5__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %3 = load i32, i32* @repo, align 4
  %4 = call i32 @git_stash_apply(i32 %3, i32 0, i32* null)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32, i32* @repo_index, align 4
  %7 = call i32 @git_index_has_conflicts(i32 %6)
  %8 = call i32 @cl_assert_equal_i(i32 %7, i32 0)
  %9 = load i32, i32* @repo, align 4
  %10 = load i32, i32* @GIT_STATUS_WT_MODIFIED, align 4
  %11 = call i32 @assert_status(i32 %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @repo, align 4
  %13 = load i32, i32* @GIT_STATUS_CURRENT, align 4
  %14 = call i32 @assert_status(i32 %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @repo, align 4
  %16 = load i32, i32* @GIT_STATUS_WT_MODIFIED, align 4
  %17 = call i32 @assert_status(i32 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @repo, align 4
  %19 = load i32, i32* @GIT_STATUS_WT_NEW, align 4
  %20 = call i32 @assert_status(i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @repo, align 4
  %22 = load i32, i32* @GIT_STATUS_INDEX_NEW, align 4
  %23 = call i32 @assert_status(i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @repo, align 4
  %25 = load i32, i32* @GIT_STATUS_INDEX_NEW, align 4
  %26 = call i32 @assert_status(i32 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %25)
  %27 = call i32 @git_futils_readbuffer(%struct.TYPE_5__* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %30)
  %32 = call i32 @git_buf_dispose(%struct.TYPE_5__* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_stash_apply(i32, i32, i32*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_index_has_conflicts(i32) #2

declare dso_local i32 @assert_status(i32, i8*, i32) #2

declare dso_local i32 @git_futils_readbuffer(%struct.TYPE_5__*, i8*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
