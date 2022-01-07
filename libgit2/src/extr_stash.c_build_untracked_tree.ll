; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_stash.c_build_untracked_tree.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_stash.c_build_untracked_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.stash_update_rules = type { i32, i32, i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GIT_STASH_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_DIFF_RECURSE_UNTRACKED_DIRS = common dso_local global i32 0, align 4
@GIT_STASH_INCLUDE_IGNORED = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_IGNORED = common dso_local global i32 0, align 4
@GIT_DIFF_RECURSE_IGNORED_DIRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32*, i32)* @build_untracked_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_untracked_tree(i32** %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_4__, align 4
  %13 = alloca %struct.stash_update_rules, align 4
  %14 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %15 = bitcast %struct.TYPE_4__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 4, i1 false)
  %16 = bitcast %struct.stash_update_rules* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 12, i1 false)
  %17 = call i32 @git_index_new(i32** %9)
  store i32 %17, i32* %14, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %69

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @GIT_STASH_INCLUDE_UNTRACKED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %27 = load i32, i32* @GIT_DIFF_RECURSE_UNTRACKED_DIRS, align 4
  %28 = or i32 %26, %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 4
  %32 = getelementptr inbounds %struct.stash_update_rules, %struct.stash_update_rules* %13, i32 0, i32 0
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %25, %20
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @GIT_STASH_INCLUDE_IGNORED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i32, i32* @GIT_DIFF_INCLUDE_IGNORED, align 4
  %40 = load i32, i32* @GIT_DIFF_RECURSE_IGNORED_DIRS, align 4
  %41 = or i32 %39, %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  %45 = getelementptr inbounds %struct.stash_update_rules, %struct.stash_update_rules* %13, i32 0, i32 1
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %38, %33
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @git_commit_tree(i32** %10, i32* %47)
  store i32 %48, i32* %14, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %69

51:                                               ; preds = %46
  %52 = load i32*, i32** %6, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @git_diff_tree_to_workdir(i32** %11, i32* %52, i32* %53, %struct.TYPE_4__* %12)
  store i32 %54, i32* %14, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %69

57:                                               ; preds = %51
  %58 = load i32*, i32** %6, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @stash_update_index_from_diff(i32* %58, i32* %59, i32* %60, %struct.stash_update_rules* %13)
  store i32 %61, i32* %14, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %69

64:                                               ; preds = %57
  %65 = load i32**, i32*** %5, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 @build_tree_from_index(i32** %65, i32* %66, i32* %67)
  store i32 %68, i32* %14, align 4
  br label %69

69:                                               ; preds = %64, %63, %56, %50, %19
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 @git_diff_free(i32* %70)
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @git_tree_free(i32* %72)
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @git_index_free(i32* %74)
  %76 = load i32, i32* %14, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @git_index_new(i32**) #2

declare dso_local i32 @git_commit_tree(i32**, i32*) #2

declare dso_local i32 @git_diff_tree_to_workdir(i32**, i32*, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @stash_update_index_from_diff(i32*, i32*, i32*, %struct.stash_update_rules*) #2

declare dso_local i32 @build_tree_from_index(i32**, i32*, i32*) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
