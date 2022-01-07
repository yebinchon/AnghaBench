; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_rebase.c_rebase_ensure_not_dirty.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_rebase.c_rebase_ensure_not_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_ERROR_REBASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"uncommitted changes exist in index\00", align 1
@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GIT_SUBMODULE_IGNORE_UNTRACKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"unstaged changes exist in workdir\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @rebase_ensure_not_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rebase_ensure_not_dirty(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %4
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @git_repository_head_tree(i32** %9, i32* %17)
  store i32 %18, i32* %12, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %16
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @git_repository_index(i32** %10, i32* %21)
  store i32 %22, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @git_diff_tree_to_index(i32** %11, i32* %25, i32* %26, i32* %27, i32* null)
  store i32 %28, i32* %12, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %20, %16
  br label %64

31:                                               ; preds = %24
  %32 = load i32*, i32** %11, align 8
  %33 = call i64 @git_diff_num_deltas(i32* %32)
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* @GIT_ERROR_REBASE, align 4
  %37 = call i32 @git_error_set(i32 %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %12, align 4
  br label %64

39:                                               ; preds = %31
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @git_diff_free(i32* %40)
  store i32* null, i32** %11, align 8
  br label %42

42:                                               ; preds = %39, %4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %42
  %46 = bitcast %struct.TYPE_4__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 4, i1 false)
  %47 = load i32, i32* @GIT_SUBMODULE_IGNORE_UNTRACKED, align 4
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @git_diff_index_to_workdir(i32** %11, i32* %49, i32* %50, %struct.TYPE_4__* %13)
  store i32 %51, i32* %12, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %64

54:                                               ; preds = %45
  %55 = load i32*, i32** %11, align 8
  %56 = call i64 @git_diff_num_deltas(i32* %55)
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32, i32* @GIT_ERROR_REBASE, align 4
  %60 = call i32 @git_error_set(i32 %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %12, align 4
  br label %64

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %42
  br label %64

64:                                               ; preds = %63, %58, %53, %35, %30
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @git_diff_free(i32* %65)
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @git_index_free(i32* %67)
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @git_tree_free(i32* %69)
  %71 = load i32, i32* %12, align 4
  ret i32 %71
}

declare dso_local i32 @git_repository_head_tree(i32**, i32*) #1

declare dso_local i32 @git_repository_index(i32**, i32*) #1

declare dso_local i32 @git_diff_tree_to_index(i32**, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @git_diff_num_deltas(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git_diff_free(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32*, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
