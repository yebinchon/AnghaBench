; ModuleID = '/home/carl/AnghaBench/libgit2/tests/worktree/extr_worktree.c_test_worktree_worktree__init_existing_path.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/worktree/extr_worktree.c_test_worktree_worktree__init_existing_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__*, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"commondir\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"gitdir\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@__const.test_worktree_worktree__init_existing_path.wtfiles = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)], align 16
@GIT_BUF_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@fixture = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"../testrepo-worktree\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"worktree-new\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_worktree_worktree__init_existing_path() #0 {
  %1 = alloca [4 x i8*], align 16
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_9__, align 4
  %4 = alloca i32, align 4
  %5 = bitcast [4 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([4 x i8*]* @__const.test_worktree_worktree__init_existing_path.wtfiles to i8*), i64 32, i1 false)
  %6 = bitcast %struct.TYPE_9__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_9__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %26, %0
  %8 = load i32, i32* %4, align 4
  %9 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 0
  %10 = call i32 @ARRAY_SIZE(i8** %9)
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %7
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fixture, i32 0, i32 0), align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @git_buf_joinpath(%struct.TYPE_9__* %3, i32 %15, i8* %19)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @p_unlink(i32 %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  br label %26

26:                                               ; preds = %12
  %27 = load i32, i32* %4, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %7

29:                                               ; preds = %7
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fixture, i32 0, i32 1), align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @git_buf_joinpath(%struct.TYPE_9__* %3, i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fixture, i32 0, i32 1), align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @git_worktree_add(i32** %2, %struct.TYPE_10__* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %37, i32* null)
  %39 = call i32 @cl_git_fail(i32 %38)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %62, %29
  %41 = load i32, i32* %4, align 4
  %42 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 0
  %43 = call i32 @ARRAY_SIZE(i8** %42)
  %44 = icmp ult i32 %41, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %40
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fixture, i32 0, i32 0), align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %4, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @git_buf_joinpath(%struct.TYPE_9__* %3, i32 %48, i8* %52)
  %54 = call i32 @cl_git_pass(i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @git_path_exists(i32 %56)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i32 @cl_assert(i32 %60)
  br label %62

62:                                               ; preds = %45
  %63 = load i32, i32* %4, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %40

65:                                               ; preds = %40
  %66 = call i32 @git_buf_dispose(%struct.TYPE_9__* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_9__*, i32, i8*) #2

declare dso_local i32 @p_unlink(i32) #2

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @git_worktree_add(i32**, %struct.TYPE_10__*, i8*, i32, i32*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_path_exists(i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_9__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
