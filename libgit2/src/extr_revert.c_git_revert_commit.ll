; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_revert.c_git_revert_commit.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_revert.c_git_revert_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [58 x i8] c"mainline branch is not specified but %s is a merge commit\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"mainline branch specified but %s is not a merge commit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_revert_commit(i32** %0, i32* %1, i32* %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32** %0, i32*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %20 = load i32**, i32*** %8, align 8
  %21 = icmp ne i32** %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %6
  %23 = load i32*, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32*, i32** %10, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32*, i32** %11, align 8
  %30 = icmp ne i32* %29, null
  br label %31

31:                                               ; preds = %28, %25, %22, %6
  %32 = phi i1 [ false, %25 ], [ false, %22 ], [ false, %6 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @git_commit_parentcount(i32* %35)
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @revert_seterr(i32* %42, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  store i32 %43, i32* %7, align 4
  br label %96

44:                                               ; preds = %38
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %18, align 4
  br label %55

46:                                               ; preds = %31
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @revert_seterr(i32* %50, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  store i32 %51, i32* %7, align 4
  br label %96

52:                                               ; preds = %46
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @git_commit_parentcount(i32* %53)
  store i32 %54, i32* %18, align 4
  br label %55

55:                                               ; preds = %52, %44
  %56 = load i32, i32* %18, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %18, align 4
  %61 = sub nsw i32 %60, 1
  %62 = call i32 @git_commit_parent(i32** %14, i32* %59, i32 %61)
  store i32 %62, i32* %19, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %58
  %65 = load i32*, i32** %14, align 8
  %66 = call i32 @git_commit_tree(i32** %15, i32* %65)
  store i32 %66, i32* %19, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64, %58
  br label %86

69:                                               ; preds = %64, %55
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @git_commit_tree(i32** %17, i32* %70)
  store i32 %71, i32* %19, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @git_commit_tree(i32** %16, i32* %74)
  store i32 %75, i32* %19, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73, %69
  br label %86

78:                                               ; preds = %73
  %79 = load i32**, i32*** %8, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = load i32*, i32** %17, align 8
  %82 = load i32*, i32** %16, align 8
  %83 = load i32*, i32** %15, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = call i32 @git_merge_trees(i32** %79, i32* %80, i32* %81, i32* %82, i32* %83, i32* %84)
  store i32 %85, i32* %19, align 4
  br label %86

86:                                               ; preds = %78, %77, %68
  %87 = load i32*, i32** %15, align 8
  %88 = call i32 @git_tree_free(i32* %87)
  %89 = load i32*, i32** %16, align 8
  %90 = call i32 @git_tree_free(i32* %89)
  %91 = load i32*, i32** %17, align 8
  %92 = call i32 @git_tree_free(i32* %91)
  %93 = load i32*, i32** %14, align 8
  %94 = call i32 @git_commit_free(i32* %93)
  %95 = load i32, i32* %19, align 4
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %86, %49, %41
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_commit_parentcount(i32*) #1

declare dso_local i32 @revert_seterr(i32*, i8*) #1

declare dso_local i32 @git_commit_parent(i32**, i32*, i32) #1

declare dso_local i32 @git_commit_tree(i32**, i32*) #1

declare dso_local i32 @git_merge_trees(i32**, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @git_commit_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
