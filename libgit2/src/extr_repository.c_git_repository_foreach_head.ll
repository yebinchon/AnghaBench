; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_repository.c_git_repository_foreach_head.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_repository.c_git_repository_foreach_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@GIT_VECTOR_INIT = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@GIT_BUF_INIT = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@GIT_REPOSITORY_FOREACH_HEAD_SKIP_REPO = common dso_local global i32 0, align 4
@GIT_HEAD_FILE = common dso_local global i32 0, align 4
@GIT_REPOSITORY_FOREACH_HEAD_SKIP_WORKTREES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_repository_foreach_head(%struct.TYPE_17__* %0, i32 (%struct.TYPE_17__*, i32, i8*)* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32 (%struct.TYPE_17__*, i32, i8*)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_16__, align 8
  %10 = alloca %struct.TYPE_18__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32 (%struct.TYPE_17__*, i32, i8*)* %1, i32 (%struct.TYPE_17__*, i32, i8*)** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = bitcast %struct.TYPE_16__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.TYPE_16__* @GIT_VECTOR_INIT to i8*), i64 16, i1 false)
  %14 = bitcast %struct.TYPE_18__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.TYPE_18__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @GIT_REPOSITORY_FOREACH_HEAD_SKIP_REPO, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %4
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @GIT_HEAD_FILE, align 4
  %24 = call i32 @git_buf_joinpath(%struct.TYPE_18__* %10, i32 %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %19
  %27 = load i32 (%struct.TYPE_17__*, i32, i8*)*, i32 (%struct.TYPE_17__*, i32, i8*)** %6, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 %27(%struct.TYPE_17__* %28, i32 %30, i8* %31)
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %11, align 4
  br i1 %33, label %35, label %36

35:                                               ; preds = %26, %19
  br label %79

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @GIT_REPOSITORY_FOREACH_HEAD_SKIP_WORKTREES, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %78, label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %44 = call i32 @git_worktree_list(%struct.TYPE_16__* %9, %struct.TYPE_17__* %43)
  store i32 %44, i32* %11, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %11, align 4
  br label %79

47:                                               ; preds = %42
  store i64 0, i64* %12, align 8
  br label %48

48:                                               ; preds = %74, %47
  %49 = load i64, i64* %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %49, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %48
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %12, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @GIT_HEAD_FILE, align 4
  %61 = call i64 @get_worktree_file_path(%struct.TYPE_18__* %10, %struct.TYPE_17__* %54, i32 %59, i32 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %74

64:                                               ; preds = %53
  %65 = load i32 (%struct.TYPE_17__*, i32, i8*)*, i32 (%struct.TYPE_17__*, i32, i8*)** %6, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 %65(%struct.TYPE_17__* %66, i32 %68, i8* %69)
  store i32 %70, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %79

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %63
  %75 = load i64, i64* %12, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %12, align 8
  br label %48

77:                                               ; preds = %48
  br label %78

78:                                               ; preds = %77, %37
  br label %79

79:                                               ; preds = %78, %72, %46, %35
  %80 = call i32 @git_buf_dispose(%struct.TYPE_18__* %10)
  %81 = call i32 @git_strarray_free(%struct.TYPE_16__* %9)
  %82 = load i32, i32* %11, align 4
  ret i32 %82
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_18__*, i32, i32) #2

declare dso_local i32 @git_worktree_list(%struct.TYPE_16__*, %struct.TYPE_17__*) #2

declare dso_local i64 @get_worktree_file_path(%struct.TYPE_18__*, %struct.TYPE_17__*, i32, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_18__*) #2

declare dso_local i32 @git_strarray_free(%struct.TYPE_16__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
