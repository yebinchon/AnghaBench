; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_stash.c_build_workdir_tree.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_stash.c_build_workdir_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.stash_update_rules = type { i32, i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@GIT_DIFF_IGNORE_SUBMODULES = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@stash_delta_merge = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32*, i32*)* @build_workdir_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_workdir_tree(i32** %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__, align 4
  %13 = alloca %struct.stash_update_rules, align 4
  %14 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %15 = bitcast %struct.TYPE_5__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 4, i1 false)
  %16 = bitcast %struct.stash_update_rules* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 8, i1 false)
  %17 = load i32, i32* @GIT_DIFF_IGNORE_SUBMODULES, align 4
  %18 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %19 = or i32 %17, %18
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @git_commit_tree(i32** %9, i32* %21)
  store i32 %22, i32* %14, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %56

25:                                               ; preds = %4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @git_diff_tree_to_index(i32** %10, i32* %26, i32* %27, i32* %28, %struct.TYPE_5__* %12)
  store i32 %29, i32* %14, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %25
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @git_diff_index_to_workdir(i32** %11, i32* %32, i32* %33, %struct.TYPE_5__* %12)
  store i32 %34, i32* %14, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load i32*, i32** %10, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* @stash_delta_merge, align 4
  %40 = call i32 @git_diff__merge(i32* %37, i32* %38, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %31, %25
  br label %56

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.stash_update_rules, %struct.stash_update_rules* %13, i32 0, i32 0
  store i32 1, i32* %44, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @stash_update_index_from_diff(i32* %45, i32* %46, i32* %47, %struct.stash_update_rules* %13)
  store i32 %48, i32* %14, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %56

51:                                               ; preds = %43
  %52 = load i32**, i32*** %5, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @build_tree_from_index(i32** %52, i32* %53, i32* %54)
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %51, %50, %42, %24
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @git_diff_free(i32* %57)
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @git_diff_free(i32* %59)
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @git_tree_free(i32* %61)
  %63 = load i32, i32* %14, align 4
  ret i32 %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @git_commit_tree(i32**, i32*) #2

declare dso_local i32 @git_diff_tree_to_index(i32**, i32*, i32*, i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32*, i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @git_diff__merge(i32*, i32*, i32) #2

declare dso_local i32 @stash_update_index_from_diff(i32*, i32*, i32*, %struct.stash_update_rules*) #2

declare dso_local i32 @build_tree_from_index(i32**, i32*, i32*) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
