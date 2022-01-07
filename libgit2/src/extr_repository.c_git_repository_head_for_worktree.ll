; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_repository.c_git_repository_head_for_worktree.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_repository.c_git_repository_head_for_worktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@GIT_HEAD_FILE = common dso_local global i32 0, align 4
@GIT_REFERENCE_DIRECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_repository_head_for_worktree(i32** %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = bitcast %struct.TYPE_5__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i32* null, i32** %8, align 8
  %12 = load i32**, i32*** %4, align 8
  %13 = icmp ne i32** %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br label %20

20:                                               ; preds = %17, %14, %3
  %21 = phi i1 [ false, %14 ], [ false, %3 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32**, i32*** %4, align 8
  store i32* null, i32** %24, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @GIT_HEAD_FILE, align 4
  %28 = call i32 @get_worktree_file_path(%struct.TYPE_5__* %7, i32* %25, i8* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %20
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @git_reference__read_head(i32** %8, i32* %31, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30, %20
  br label %53

37:                                               ; preds = %30
  %38 = load i32*, i32** %8, align 8
  %39 = call i64 @git_reference_type(i32* %38)
  %40 = load i64, i64* @GIT_REFERENCE_DIRECT, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @git_reference_symbolic_target(i32* %44)
  %46 = call i32 @git_reference_lookup_resolved(i32** %10, i32* %43, i32 %45, i32 -1)
  store i32 %46, i32* %9, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @git_reference_free(i32* %47)
  %49 = load i32*, i32** %10, align 8
  store i32* %49, i32** %8, align 8
  br label %50

50:                                               ; preds = %42, %37
  %51 = load i32*, i32** %8, align 8
  %52 = load i32**, i32*** %4, align 8
  store i32* %51, i32** %52, align 8
  br label %53

53:                                               ; preds = %50, %36
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @git_reference_free(i32* %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = call i32 @git_buf_dispose(%struct.TYPE_5__* %7)
  %61 = load i32, i32* %9, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @get_worktree_file_path(%struct.TYPE_5__*, i32*, i8*, i32) #2

declare dso_local i32 @git_reference__read_head(i32**, i32*, i32) #2

declare dso_local i64 @git_reference_type(i32*) #2

declare dso_local i32 @git_reference_lookup_resolved(i32**, i32*, i32, i32) #2

declare dso_local i32 @git_reference_symbolic_target(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
