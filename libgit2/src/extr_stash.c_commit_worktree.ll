; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_stash.c_commit_worktree.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_stash.c_commit_worktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@GIT_CONFIGMAP_IGNORECASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i8*, i32*, i32*, i32*)* @commit_worktree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @commit_worktree(i32* %0, i32* %1, i32* %2, i8* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [3 x i32*], align 16
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %21 = bitcast [3 x i32*]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 24, i1 false)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %16, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %17, align 8
  store i32* null, i32** %18, align 8
  store i32 0, i32* %19, align 4
  %22 = load i32*, i32** %13, align 8
  %23 = getelementptr inbounds [3 x i32*], [3 x i32*]* %15, i64 0, i64 0
  store i32* %22, i32** %23, align 16
  %24 = load i32*, i32** %12, align 8
  %25 = getelementptr inbounds [3 x i32*], [3 x i32*]* %15, i64 0, i64 1
  store i32* %24, i32** %25, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = getelementptr inbounds [3 x i32*], [3 x i32*]* %15, i64 0, i64 2
  store i32* %26, i32** %27, align 16
  %28 = load i32*, i32** %9, align 8
  %29 = call i64 @git_repository_index(%struct.TYPE_8__** %17, i32* %28)
  %30 = icmp slt i64 %29, 0
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %19, align 4
  br i1 %30, label %47, label %32

32:                                               ; preds = %7
  %33 = call i32 @git_index_new(%struct.TYPE_8__** %16)
  store i32 %33, i32* %19, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %32
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = call i64 @git_index__fill(%struct.TYPE_8__* %36, i32* %38)
  %40 = icmp slt i64 %39, 0
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %19, align 4
  br i1 %40, label %47, label %42

42:                                               ; preds = %35
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* @GIT_CONFIGMAP_IGNORECASE, align 4
  %45 = call i32 @git_repository__configmap_lookup(i32* %20, i32* %43, i32 %44)
  store i32 %45, i32* %19, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %35, %32, %7
  br label %71

48:                                               ; preds = %42
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %50 = load i32, i32* %20, align 4
  %51 = call i32 @git_index__set_ignore_case(%struct.TYPE_8__* %49, i32 %50)
  %52 = load i32*, i32** %9, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = call i32 @build_workdir_tree(i32** %18, i32* %52, %struct.TYPE_8__* %53, i32* %54)
  store i32 %55, i32* %19, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %71

58:                                               ; preds = %48
  %59 = load i32*, i32** %8, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load i32*, i32** %18, align 8
  %65 = load i32*, i32** %14, align 8
  %66 = icmp ne i32* %65, null
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 3, i32 2
  %69 = getelementptr inbounds [3 x i32*], [3 x i32*]* %15, i64 0, i64 0
  %70 = call i32 @git_commit_create(i32* %59, i32* %60, i32* null, i32* %61, i32* %62, i32* null, i8* %63, i32* %64, i32 %68, i32** %69)
  store i32 %70, i32* %19, align 4
  br label %71

71:                                               ; preds = %58, %57, %47
  %72 = load i32*, i32** %18, align 8
  %73 = call i32 @git_tree_free(i32* %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %75 = call i32 @git_index_free(%struct.TYPE_8__* %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %77 = call i32 @git_index_free(%struct.TYPE_8__* %76)
  %78 = load i32, i32* %19, align 4
  ret i32 %78
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @git_repository_index(%struct.TYPE_8__**, i32*) #2

declare dso_local i32 @git_index_new(%struct.TYPE_8__**) #2

declare dso_local i64 @git_index__fill(%struct.TYPE_8__*, i32*) #2

declare dso_local i32 @git_repository__configmap_lookup(i32*, i32*, i32) #2

declare dso_local i32 @git_index__set_ignore_case(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @build_workdir_tree(i32**, i32*, %struct.TYPE_8__*, i32*) #2

declare dso_local i32 @git_commit_create(i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32, i32**) #2

declare dso_local i32 @git_tree_free(i32*) #2

declare dso_local i32 @git_index_free(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
