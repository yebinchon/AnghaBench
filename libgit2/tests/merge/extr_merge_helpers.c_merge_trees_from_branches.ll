; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/extr_merge_helpers.c_merge_trees_from_branches.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/extr_merge_helpers.c_merge_trees_from_branches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@GIT_REFS_HEADS_DIR = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @merge_trees_from_branches(i32** %0, i32* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_6__, align 4
  %21 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %16, align 8
  %22 = bitcast %struct.TYPE_6__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 bitcast (%struct.TYPE_6__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %23 = load i32, i32* @GIT_REFS_HEADS_DIR, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @git_buf_printf(%struct.TYPE_6__* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %24)
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @git_reference_name_to_id(i32* %17, i32* %26, i32 %28)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @git_commit_lookup(i32** %11, i32* %31, i32* %17)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = call i32 @git_buf_clear(%struct.TYPE_6__* %20)
  %35 = load i32, i32* @GIT_REFS_HEADS_DIR, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @git_buf_printf(%struct.TYPE_6__* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %35, i8* %36)
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @git_reference_name_to_id(i32* %18, i32* %38, i32 %40)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @git_commit_lookup(i32** %12, i32* %43, i32* %18)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @git_commit_id(i32* %47)
  %49 = load i32*, i32** %12, align 8
  %50 = call i32 @git_commit_id(i32* %49)
  %51 = call i32 @git_merge_base(i32* %19, i32* %46, i32 %48, i32 %50)
  store i32 %51, i32* %21, align 4
  %52 = load i32, i32* %21, align 4
  %53 = load i32, i32* @GIT_ENOTFOUND, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %5
  %56 = load i32, i32* %21, align 4
  %57 = call i32 @cl_git_pass(i32 %56)
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @git_commit_lookup(i32** %13, i32* %58, i32* %19)
  %60 = call i32 @cl_git_pass(i32 %59)
  %61 = load i32*, i32** %13, align 8
  %62 = call i32 @git_commit_tree(i32** %16, i32* %61)
  %63 = call i32 @cl_git_pass(i32 %62)
  br label %64

64:                                               ; preds = %55, %5
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @git_commit_tree(i32** %14, i32* %65)
  %67 = call i32 @cl_git_pass(i32 %66)
  %68 = load i32*, i32** %12, align 8
  %69 = call i32 @git_commit_tree(i32** %15, i32* %68)
  %70 = call i32 @cl_git_pass(i32 %69)
  %71 = load i32**, i32*** %6, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load i32*, i32** %16, align 8
  %74 = load i32*, i32** %14, align 8
  %75 = load i32*, i32** %15, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 @git_merge_trees(i32** %71, i32* %72, i32* %73, i32* %74, i32* %75, i32* %76)
  store i32 %77, i32* %21, align 4
  %78 = call i32 @git_buf_dispose(%struct.TYPE_6__* %20)
  %79 = load i32*, i32** %14, align 8
  %80 = call i32 @git_tree_free(i32* %79)
  %81 = load i32*, i32** %15, align 8
  %82 = call i32 @git_tree_free(i32* %81)
  %83 = load i32*, i32** %16, align 8
  %84 = call i32 @git_tree_free(i32* %83)
  %85 = load i32*, i32** %11, align 8
  %86 = call i32 @git_commit_free(i32* %85)
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 @git_commit_free(i32* %87)
  %89 = load i32*, i32** %13, align 8
  %90 = call i32 @git_commit_free(i32* %89)
  %91 = load i32, i32* %21, align 4
  ret i32 %91
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_buf_printf(%struct.TYPE_6__*, i8*, i32, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_name_to_id(i32*, i32*, i32) #2

declare dso_local i32 @git_commit_lookup(i32**, i32*, i32*) #2

declare dso_local i32 @git_buf_clear(%struct.TYPE_6__*) #2

declare dso_local i32 @git_merge_base(i32*, i32*, i32, i32) #2

declare dso_local i32 @git_commit_id(i32*) #2

declare dso_local i32 @git_commit_tree(i32**, i32*) #2

declare dso_local i32 @git_merge_trees(i32**, i32*, i32*, i32*, i32*, i32*) #2

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
