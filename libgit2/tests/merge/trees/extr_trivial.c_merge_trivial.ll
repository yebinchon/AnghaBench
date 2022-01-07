; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/trees/extr_trivial.c_merge_trivial.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/trees/extr_trivial.c_merge_trivial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@GIT_MERGE_OPTIONS_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@GIT_REFS_HEADS_DIR = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8*, i8*)* @merge_trivial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_trivial(i32** %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_6__, align 4
  %17 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %18 = bitcast %struct.TYPE_6__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.TYPE_6__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %19 = load i32, i32* @GIT_MERGE_OPTIONS_INIT, align 4
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* @GIT_REFS_HEADS_DIR, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @git_buf_printf(%struct.TYPE_6__* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %20, i8* %21)
  %23 = load i32, i32* @repo, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @git_reference_name_to_id(i32* %13, i32 %23, i32 %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32, i32* @repo, align 4
  %29 = call i32 @git_commit_lookup(i32** %7, i32 %28, i32* %13)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = call i32 @git_buf_clear(%struct.TYPE_6__* %16)
  %32 = load i32, i32* @GIT_REFS_HEADS_DIR, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @git_buf_printf(%struct.TYPE_6__* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %32, i8* %33)
  %35 = load i32, i32* @repo, align 4
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @git_reference_name_to_id(i32* %14, i32 %35, i32 %37)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load i32, i32* @repo, align 4
  %41 = call i32 @git_commit_lookup(i32** %8, i32 %40, i32* %14)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i32, i32* @repo, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @git_commit_id(i32* %44)
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @git_commit_id(i32* %46)
  %48 = call i32 @git_merge_base(i32* %15, i32 %43, i32 %45, i32 %47)
  %49 = call i32 @cl_git_pass(i32 %48)
  %50 = load i32, i32* @repo, align 4
  %51 = call i32 @git_commit_lookup(i32** %9, i32 %50, i32* %15)
  %52 = call i32 @cl_git_pass(i32 %51)
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @git_commit_tree(i32** %12, i32* %53)
  %55 = call i32 @cl_git_pass(i32 %54)
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @git_commit_tree(i32** %10, i32* %56)
  %58 = call i32 @cl_git_pass(i32 %57)
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @git_commit_tree(i32** %11, i32* %59)
  %61 = call i32 @cl_git_pass(i32 %60)
  %62 = load i32**, i32*** %4, align 8
  %63 = load i32, i32* @repo, align 4
  %64 = load i32*, i32** %12, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @git_merge_trees(i32** %62, i32 %63, i32* %64, i32* %65, i32* %66, i32* %17)
  %68 = call i32 @cl_git_pass(i32 %67)
  %69 = call i32 @git_buf_dispose(%struct.TYPE_6__* %16)
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @git_tree_free(i32* %70)
  %72 = load i32*, i32** %11, align 8
  %73 = call i32 @git_tree_free(i32* %72)
  %74 = load i32*, i32** %12, align 8
  %75 = call i32 @git_tree_free(i32* %74)
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @git_commit_free(i32* %76)
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @git_commit_free(i32* %78)
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @git_commit_free(i32* %80)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_buf_printf(%struct.TYPE_6__*, i8*, i32, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_name_to_id(i32*, i32, i32) #2

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_buf_clear(%struct.TYPE_6__*) #2

declare dso_local i32 @git_merge_base(i32*, i32, i32, i32) #2

declare dso_local i32 @git_commit_id(i32*) #2

declare dso_local i32 @git_commit_tree(i32**, i32*) #2

declare dso_local i32 @git_merge_trees(i32**, i32, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_6__*) #2

declare dso_local i32 @git_tree_free(i32*) #2

declare dso_local i32 @git_commit_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
