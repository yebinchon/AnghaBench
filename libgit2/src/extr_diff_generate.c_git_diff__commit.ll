; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_git_diff__commit.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_git_diff__commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"commit %s is a merge commit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_diff__commit(i32** %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32 0, i32* %14, align 4
  %18 = load i32**, i32*** %5, align 8
  store i32* null, i32** %18, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i64 @git_commit_parentcount(i32* %19)
  store i64 %20, i64* %13, align 8
  %21 = icmp ugt i64 %20, 1
  br i1 %21, label %22, label %37

22:                                               ; preds = %4
  %23 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %15, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %16, align 8
  store i32 -1, i32* %14, align 4
  %28 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %29 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %30 = add nsw i32 %29, 1
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @git_commit_id(i32* %31)
  %33 = call i32 @git_oid_tostr(i8* %27, i32 %30, i32 %32)
  %34 = call i32 @git_error_set(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 2, i32* %17, align 4
  %35 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %35)
  %36 = load i32, i32* %17, align 4
  switch i32 %36, label %73 [
    i32 2, label %65
  ]

37:                                               ; preds = %4
  %38 = load i64, i64* %13, align 8
  %39 = icmp ugt i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @git_commit_parent(i32** %9, i32* %41, i32 0)
  store i32 %42, i32* %14, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @git_commit_tree(i32** %11, i32* %45)
  store i32 %46, i32* %14, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %40
  br label %65

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49, %37
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @git_commit_tree(i32** %12, i32* %51)
  store i32 %52, i32* %14, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %50
  %55 = load i32*, i32** %6, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @git_diff_tree_to_tree(i32** %10, i32* %55, i32* %56, i32* %57, i32* %58)
  store i32 %59, i32* %14, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54, %50
  br label %65

62:                                               ; preds = %54
  %63 = load i32*, i32** %10, align 8
  %64 = load i32**, i32*** %5, align 8
  store i32* %63, i32** %64, align 8
  br label %65

65:                                               ; preds = %62, %61, %48, %22
  %66 = load i32*, i32** %12, align 8
  %67 = call i32 @git_tree_free(i32* %66)
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @git_tree_free(i32* %68)
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @git_commit_free(i32* %70)
  %72 = load i32, i32* %14, align 4
  ret i32 %72

73:                                               ; preds = %22
  unreachable
}

declare dso_local i64 @git_commit_parentcount(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @git_error_set(i32, i8*, i32) #1

declare dso_local i32 @git_oid_tostr(i8*, i32, i32) #1

declare dso_local i32 @git_commit_id(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @git_commit_parent(i32**, i32*, i32) #1

declare dso_local i32 @git_commit_tree(i32**, i32*) #1

declare dso_local i32 @git_diff_tree_to_tree(i32**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @git_commit_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
