; ModuleID = '/home/carl/AnghaBench/libgit2/tests/worktree/extr_merge.c_test_worktree_merge__merge_setup.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/worktree/extr_merge.c_test_worktree_merge__merge_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@fixture = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@MASTER_BRANCH = common dso_local global i32 0, align 4
@CONFLICT_BRANCH = common dso_local global i32 0, align 4
@merge_files = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_worktree_merge__merge_setup() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__, align 4
  %6 = alloca i32, align 4
  %7 = bitcast %struct.TYPE_10__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fixture, i32 0, i32 0), align 8
  %9 = load i32, i32* @MASTER_BRANCH, align 4
  %10 = call i32 @git_reference_lookup(i32** %1, %struct.TYPE_11__* %8, i32 %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fixture, i32 0, i32 0), align 8
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @git_annotated_commit_from_ref(i32** %3, %struct.TYPE_11__* %12, i32* %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fixture, i32 0, i32 0), align 8
  %17 = load i32, i32* @CONFLICT_BRANCH, align 4
  %18 = call i32 @git_reference_lookup(i32** %2, %struct.TYPE_11__* %16, i32 %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fixture, i32 0, i32 0), align 8
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @git_annotated_commit_from_ref(i32** %4, %struct.TYPE_11__* %20, i32* %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fixture, i32 0, i32 0), align 8
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @git_merge__setup(%struct.TYPE_11__* %24, i32* %25, i32** %4, i32 1)
  %27 = call i32 @cl_git_pass(i32 %26)
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %49, %0
  %29 = load i32, i32* %6, align 4
  %30 = load i32*, i32** @merge_files, align 8
  %31 = call i32 @ARRAY_SIZE(i32* %30)
  %32 = icmp ult i32 %29, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %28
  %34 = call i32 @git_buf_clear(%struct.TYPE_10__* %5)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fixture, i32 0, i32 0), align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** @merge_files, align 8
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @git_buf_printf(%struct.TYPE_10__* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %42)
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @git_path_exists(i32 %46)
  %48 = call i32 @cl_assert(i32 %47)
  br label %49

49:                                               ; preds = %33
  %50 = load i32, i32* %6, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %28

52:                                               ; preds = %28
  %53 = call i32 @git_buf_dispose(%struct.TYPE_10__* %5)
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @git_reference_free(i32* %54)
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @git_reference_free(i32* %56)
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @git_annotated_commit_free(i32* %58)
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @git_annotated_commit_free(i32* %60)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_lookup(i32**, %struct.TYPE_11__*, i32) #2

declare dso_local i32 @git_annotated_commit_from_ref(i32**, %struct.TYPE_11__*, i32*) #2

declare dso_local i32 @git_merge__setup(%struct.TYPE_11__*, i32*, i32**, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @git_buf_clear(%struct.TYPE_10__*) #2

declare dso_local i32 @git_buf_printf(%struct.TYPE_10__*, i8*, i32, i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_path_exists(i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_10__*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_annotated_commit_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
