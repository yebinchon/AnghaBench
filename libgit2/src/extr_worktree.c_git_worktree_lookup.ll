; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_worktree.c_git_worktree_lookup.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_worktree.c_git_worktree_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s/worktrees/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_worktree_lookup(i32** %0, %struct.TYPE_8__* %1, i8* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_9__, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = bitcast %struct.TYPE_9__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_9__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i32* null, i32** %8, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br label %16

16:                                               ; preds = %13, %3
  %17 = phi i1 [ false, %3 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32**, i32*** %4, align 8
  store i32* null, i32** %20, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @git_buf_printf(%struct.TYPE_9__* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %24)
  store i32 %25, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %39

28:                                               ; preds = %16
  %29 = load i32**, i32*** %4, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = call i32 @git_repository_workdir(%struct.TYPE_8__* %30)
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @open_worktree_dir(i32** %29, i32 %31, i32 %33, i8* %34)
  store i32 %35, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %39

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %37, %27
  %40 = call i32 @git_buf_dispose(%struct.TYPE_9__* %7)
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @git_worktree_free(i32* %44)
  br label %46

46:                                               ; preds = %43, %39
  %47 = load i32, i32* %9, align 4
  ret i32 %47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @git_buf_printf(%struct.TYPE_9__*, i8*, i32, i8*) #2

declare dso_local i32 @open_worktree_dir(i32**, i32, i32, i8*) #2

declare dso_local i32 @git_repository_workdir(%struct.TYPE_8__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_9__*) #2

declare dso_local i32 @git_worktree_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
