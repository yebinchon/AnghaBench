; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_branch.c_create_branch.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_branch.c_create_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@GIT_ERROR_REFERENCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"'HEAD' is not a valid branch name\00", align 1
@GIT_BRANCH_LOCAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [77 x i8] c"cannot force update branch '%s' as it is the current HEAD of the repository.\00", align 1
@GIT_REFS_HEADS_DIR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"branch: Created from %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i8*, i32*, i8*, i32)* @create_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_branch(i32** %0, i32* %1, i8* %2, i32* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32* null, i32** %14, align 8
  %19 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %20, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @git_repository_is_bare(i32* %21)
  store i32 %22, i32* %18, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %6
  %26 = load i32*, i32** %10, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32**, i32*** %7, align 8
  %30 = icmp ne i32** %29, null
  br label %31

31:                                               ; preds = %28, %25, %6
  %32 = phi i1 [ false, %25 ], [ false, %6 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32*, i32** %10, align 8
  %36 = call i32* @git_object_owner(i32* %35)
  %37 = load i32*, i32** %8, align 8
  %38 = icmp eq i32* %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @git__strcmp(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %31
  %45 = load i32, i32* @GIT_ERROR_REFERENCE, align 4
  %46 = call i32 (i32, i8*, ...) @git_error_set(i32 %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %17, align 4
  br label %104

47:                                               ; preds = %31
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %47
  %51 = load i32, i32* %18, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %69, label %53

53:                                               ; preds = %50
  %54 = load i32*, i32** %8, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i32, i32* @GIT_BRANCH_LOCAL, align 4
  %57 = call i64 @git_branch_lookup(i32** %14, i32* %54, i8* %55, i32 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = load i32*, i32** %14, align 8
  %61 = call i32 @git_branch_is_head(i32* %60)
  store i32 %61, i32* %17, align 4
  %62 = load i32*, i32** %14, align 8
  %63 = call i32 @git_reference_free(i32* %62)
  store i32* null, i32** %14, align 8
  %64 = load i32, i32* %17, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %104

67:                                               ; preds = %59
  %68 = load i32, i32* %17, align 4
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %67, %53, %50, %47
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32, i32* @GIT_ERROR_REFERENCE, align 4
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 (i32, i8*, ...) @git_error_set(i32 %76, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i8* %77)
  store i32 -1, i32* %17, align 4
  br label %104

79:                                               ; preds = %72, %69
  %80 = load i32, i32* @GIT_REFS_HEADS_DIR, align 4
  %81 = load i8*, i8** %9, align 8
  %82 = call i64 @git_buf_joinpath(i32* %15, i32 %80, i8* %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %104

85:                                               ; preds = %79
  %86 = load i8*, i8** %11, align 8
  %87 = call i64 @git_buf_printf(i32* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %86)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %104

90:                                               ; preds = %85
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @git_buf_cstr(i32* %15)
  %93 = load i32*, i32** %10, align 8
  %94 = call i32 @git_commit_id(i32* %93)
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @git_buf_cstr(i32* %16)
  %97 = call i32 @git_reference_create(i32** %14, i32* %91, i32 %92, i32 %94, i32 %95, i32 %96)
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* %17, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %90
  %101 = load i32*, i32** %14, align 8
  %102 = load i32**, i32*** %7, align 8
  store i32* %101, i32** %102, align 8
  br label %103

103:                                              ; preds = %100, %90
  br label %104

104:                                              ; preds = %103, %89, %84, %75, %66, %44
  %105 = call i32 @git_buf_dispose(i32* %15)
  %106 = call i32 @git_buf_dispose(i32* %16)
  %107 = load i32, i32* %17, align 4
  ret i32 %107
}

declare dso_local i32 @git_repository_is_bare(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @git_object_owner(i32*) #1

declare dso_local i32 @git__strcmp(i8*, i8*) #1

declare dso_local i32 @git_error_set(i32, i8*, ...) #1

declare dso_local i64 @git_branch_lookup(i32**, i32*, i8*, i32) #1

declare dso_local i32 @git_branch_is_head(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i64 @git_buf_joinpath(i32*, i32, i8*) #1

declare dso_local i64 @git_buf_printf(i32*, i8*, i8*) #1

declare dso_local i32 @git_reference_create(i32**, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_commit_id(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
