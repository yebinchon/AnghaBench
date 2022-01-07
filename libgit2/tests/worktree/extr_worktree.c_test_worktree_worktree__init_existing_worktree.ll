; ModuleID = '/home/carl/AnghaBench/libgit2/tests/worktree/extr_worktree.c_test_worktree_worktree__init_existing_worktree.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/worktree/extr_worktree.c_test_worktree_worktree__init_existing_worktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__*, %struct.TYPE_17__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@fixture = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@.str = private unnamed_addr constant [16 x i8] c"../worktree-new\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"testrepo-worktree\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_worktree_worktree__init_existing_worktree() #0 {
  %1 = alloca %struct.TYPE_15__*, align 8
  %2 = alloca %struct.TYPE_16__, align 4
  %3 = bitcast %struct.TYPE_16__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.TYPE_16__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %4 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @fixture, i32 0, i32 1), align 8
  %5 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @git_buf_joinpath(%struct.TYPE_16__* %2, i32 %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @fixture, i32 0, i32 1), align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @git_worktree_add(%struct.TYPE_15__** %1, %struct.TYPE_17__* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32* null)
  %13 = call i32 @cl_git_fail(i32 %12)
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @fixture, i32 0, i32 1), align 8
  %15 = call i32 @git_worktree_lookup(%struct.TYPE_15__** %1, %struct.TYPE_17__* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @fixture, i32 0, i32 0), align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @cl_assert_equal_s(i32 %19, i32 %22)
  %24 = call i32 @git_buf_dispose(%struct.TYPE_16__* %2)
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %26 = call i32 @git_worktree_free(%struct.TYPE_15__* %25)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_16__*, i32, i8*) #2

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @git_worktree_add(%struct.TYPE_15__**, %struct.TYPE_17__*, i8*, i32, i32*) #2

declare dso_local i32 @git_worktree_lookup(%struct.TYPE_15__**, %struct.TYPE_17__*, i8*) #2

declare dso_local i32 @cl_assert_equal_s(i32, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_16__*) #2

declare dso_local i32 @git_worktree_free(%struct.TYPE_15__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
