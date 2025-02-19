; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_notes.c_manipulate_note_in_tree_r.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_notes.c_manipulate_note_in_tree_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_EEXISTS = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_FILEMODE_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32*, i32*, i8*, i32, i32 (i32**, i32*, i32*, i32*, i8*, i32, i32)*, i32 (i32**, i32*, i32*, i32*, i8*, i32, i32)*)* @manipulate_note_in_tree_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manipulate_note_in_tree_r(i32** %0, i32* %1, i32* %2, i32* %3, i8* %4, i32 %5, i32 (i32**, i32*, i32*, i32*, i8*, i32, i32)* %6, i32 (i32**, i32*, i32*, i32*, i8*, i32, i32)* %7) #0 {
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32 (i32**, i32*, i32*, i32*, i8*, i32, i32)*, align 8
  %16 = alloca i32 (i32**, i32*, i32*, i32*, i8*, i32, i32)*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca [3 x i8], align 1
  store i32** %0, i32*** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 (i32**, i32*, i32*, i32*, i8*, i32, i32)* %6, i32 (i32**, i32*, i32*, i32*, i8*, i32, i32)** %15, align 8
  store i32 (i32**, i32*, i32*, i32*, i8*, i32, i32)* %7, i32 (i32**, i32*, i32*, i32*, i8*, i32, i32)** %16, align 8
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = load i32, i32* %14, align 4
  %25 = call i32 @find_subtree_in_current_level(i32** %18, i32* %21, i32* %22, i8* %23, i32 %24)
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  %27 = load i32, i32* @GIT_EEXISTS, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %8
  %30 = load i32 (i32**, i32*, i32*, i32*, i8*, i32, i32)*, i32 (i32**, i32*, i32*, i32*, i8*, i32, i32)** %15, align 8
  %31 = load i32**, i32*** %9, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %17, align 4
  %38 = call i32 %30(i32** %31, i32* %32, i32* %33, i32* %34, i8* %35, i32 %36, i32 %37)
  store i32 %38, i32* %17, align 4
  br label %86

39:                                               ; preds = %8
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* @GIT_ENOTFOUND, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load i32 (i32**, i32*, i32*, i32*, i8*, i32, i32)*, i32 (i32**, i32*, i32*, i32*, i8*, i32, i32)** %16, align 8
  %45 = load i32**, i32*** %9, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %17, align 4
  %52 = call i32 %44(i32** %45, i32* %46, i32* %47, i32* %48, i8* %49, i32 %50, i32 %51)
  store i32 %52, i32* %17, align 4
  br label %86

53:                                               ; preds = %39
  %54 = load i32, i32* %17, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %86

57:                                               ; preds = %53
  %58 = load i32*, i32** %10, align 8
  %59 = load i32*, i32** %18, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 2
  %64 = load i32 (i32**, i32*, i32*, i32*, i8*, i32, i32)*, i32 (i32**, i32*, i32*, i32*, i8*, i32, i32)** %15, align 8
  %65 = load i32 (i32**, i32*, i32*, i32*, i8*, i32, i32)*, i32 (i32**, i32*, i32*, i32*, i8*, i32, i32)** %16, align 8
  %66 = call i32 @manipulate_note_in_tree_r(i32** %19, i32* %58, i32* %59, i32* %60, i8* %61, i32 %63, i32 (i32**, i32*, i32*, i32*, i8*, i32, i32)* %64, i32 (i32**, i32*, i32*, i32*, i8*, i32, i32)* %65)
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %86

70:                                               ; preds = %57
  %71 = getelementptr inbounds [3 x i8], [3 x i8]* %20, i64 0, i64 0
  %72 = load i8*, i8** %13, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = call i32 @strncpy(i8* %71, i8* %75, i32 2)
  %77 = getelementptr inbounds [3 x i8], [3 x i8]* %20, i64 0, i64 2
  store i8 0, i8* %77, align 1
  %78 = load i32**, i32*** %9, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = load i32*, i32** %19, align 8
  %82 = call i32 @git_tree_id(i32* %81)
  %83 = getelementptr inbounds [3 x i8], [3 x i8]* %20, i64 0, i64 0
  %84 = load i32, i32* @GIT_FILEMODE_TREE, align 4
  %85 = call i32 @tree_write(i32** %78, i32* %79, i32* %80, i32 %82, i8* %83, i32 %84)
  store i32 %85, i32* %17, align 4
  br label %86

86:                                               ; preds = %70, %69, %56, %43, %29
  %87 = load i32*, i32** %19, align 8
  %88 = call i32 @git_tree_free(i32* %87)
  %89 = load i32*, i32** %18, align 8
  %90 = call i32 @git_tree_free(i32* %89)
  %91 = load i32, i32* %17, align 4
  ret i32 %91
}

declare dso_local i32 @find_subtree_in_current_level(i32**, i32*, i32*, i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @tree_write(i32**, i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @git_tree_id(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
