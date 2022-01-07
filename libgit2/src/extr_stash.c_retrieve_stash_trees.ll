; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_stash.c_retrieve_stash_trees.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_stash.c_retrieve_stash_trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32**, i32**, i32**, i32**, i32*)* @retrieve_stash_trees to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @retrieve_stash_trees(i32** %0, i32** %1, i32** %2, i32** %3, i32** %4, i32* %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i32** %4, i32*** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = call i32 @git_commit_tree(i32** %13, i32* %23)
  store i32 %24, i32* %22, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  br label %83

27:                                               ; preds = %6
  %28 = load i32*, i32** %12, align 8
  %29 = call i32 @git_commit_parent(i32** %14, i32* %28, i32 0)
  store i32 %29, i32* %22, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %83

32:                                               ; preds = %27
  %33 = load i32*, i32** %14, align 8
  %34 = call i32 @git_commit_tree(i32** %15, i32* %33)
  store i32 %34, i32* %22, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %83

37:                                               ; preds = %32
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @git_commit_parent(i32** %16, i32* %38, i32 1)
  store i32 %39, i32* %22, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %83

42:                                               ; preds = %37
  %43 = load i32*, i32** %16, align 8
  %44 = call i32 @git_commit_tree(i32** %17, i32* %43)
  store i32 %44, i32* %22, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %83

47:                                               ; preds = %42
  %48 = load i32*, i32** %16, align 8
  %49 = call i32 @git_commit_parent(i32** %18, i32* %48, i32 0)
  store i32 %49, i32* %22, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %83

52:                                               ; preds = %47
  %53 = load i32*, i32** %18, align 8
  %54 = call i32 @git_commit_tree(i32** %19, i32* %53)
  store i32 %54, i32* %22, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %83

57:                                               ; preds = %52
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @git_commit_parentcount(i32* %58)
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load i32*, i32** %12, align 8
  %63 = call i32 @git_commit_parent(i32** %20, i32* %62, i32 2)
  store i32 %63, i32* %22, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %83

66:                                               ; preds = %61
  %67 = load i32*, i32** %20, align 8
  %68 = call i32 @git_commit_tree(i32** %21, i32* %67)
  store i32 %68, i32* %22, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %83

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71, %57
  %73 = load i32*, i32** %13, align 8
  %74 = load i32**, i32*** %7, align 8
  store i32* %73, i32** %74, align 8
  %75 = load i32*, i32** %15, align 8
  %76 = load i32**, i32*** %8, align 8
  store i32* %75, i32** %76, align 8
  %77 = load i32*, i32** %17, align 8
  %78 = load i32**, i32*** %9, align 8
  store i32* %77, i32** %78, align 8
  %79 = load i32*, i32** %19, align 8
  %80 = load i32**, i32*** %10, align 8
  store i32* %79, i32** %80, align 8
  %81 = load i32*, i32** %21, align 8
  %82 = load i32**, i32*** %11, align 8
  store i32* %81, i32** %82, align 8
  br label %83

83:                                               ; preds = %72, %70, %65, %56, %51, %46, %41, %36, %31, %26
  %84 = load i32*, i32** %20, align 8
  %85 = call i32 @git_commit_free(i32* %84)
  %86 = load i32*, i32** %18, align 8
  %87 = call i32 @git_commit_free(i32* %86)
  %88 = load i32*, i32** %16, align 8
  %89 = call i32 @git_commit_free(i32* %88)
  %90 = load i32*, i32** %14, align 8
  %91 = call i32 @git_commit_free(i32* %90)
  %92 = load i32, i32* %22, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %83
  %95 = load i32*, i32** %13, align 8
  %96 = call i32 @git_tree_free(i32* %95)
  %97 = load i32*, i32** %15, align 8
  %98 = call i32 @git_tree_free(i32* %97)
  %99 = load i32*, i32** %17, align 8
  %100 = call i32 @git_tree_free(i32* %99)
  %101 = load i32*, i32** %19, align 8
  %102 = call i32 @git_tree_free(i32* %101)
  %103 = load i32*, i32** %21, align 8
  %104 = call i32 @git_tree_free(i32* %103)
  br label %105

105:                                              ; preds = %94, %83
  %106 = load i32, i32* %22, align 4
  ret i32 %106
}

declare dso_local i32 @git_commit_tree(i32**, i32*) #1

declare dso_local i32 @git_commit_parent(i32**, i32*, i32) #1

declare dso_local i32 @git_commit_parentcount(i32*) #1

declare dso_local i32 @git_commit_free(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
