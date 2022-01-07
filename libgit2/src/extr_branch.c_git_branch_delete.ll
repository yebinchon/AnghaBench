; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_branch.c_git_branch_delete.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_branch.c_git_branch_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"reference '%s' is not a valid branch.\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_ERROR_REFERENCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"cannot delete branch '%s' as it is the current HEAD of the repository.\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"Cannot delete branch '%s' as it is the current HEAD of a linked repository.\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"branch\00", align 1
@GIT_REFS_HEADS_DIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_branch_delete(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %7, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @assert(i32* %8)
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @git_reference_is_branch(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @git_reference_is_remote(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = call i64 @git_reference_name(i32* %19)
  %21 = call i32 @git_error_set(i32 %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %22, i32* %2, align 4
  br label %72

23:                                               ; preds = %13, %1
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @git_branch_is_head(i32* %24)
  store i32 %25, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %72

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* @GIT_ERROR_REFERENCE, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = call i64 @git_reference_name(i32* %34)
  %36 = call i32 @git_error_set(i32 %33, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  store i32 -1, i32* %2, align 4
  br label %72

37:                                               ; preds = %29
  %38 = load i32*, i32** %3, align 8
  %39 = call i64 @git_reference_is_branch(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i32*, i32** %3, align 8
  %43 = call i64 @git_branch_is_checked_out(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32, i32* @GIT_ERROR_REFERENCE, align 4
  %47 = load i32*, i32** %3, align 8
  %48 = call i64 @git_reference_name(i32* %47)
  %49 = call i32 @git_error_set(i32 %46, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  store i32 -1, i32* %2, align 4
  br label %72

50:                                               ; preds = %41, %37
  %51 = load i32*, i32** %3, align 8
  %52 = call i64 @git_reference_name(i32* %51)
  %53 = load i32, i32* @GIT_REFS_HEADS_DIR, align 4
  %54 = call i64 @strlen(i32 %53)
  %55 = add nsw i64 %52, %54
  %56 = call i64 @git_buf_join(i32* %5, i8 signext 46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %69

59:                                               ; preds = %50
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @git_reference_owner(i32* %60)
  %62 = call i32 @git_buf_cstr(i32* %5)
  %63 = call i64 @git_config_rename_section(i32 %61, i32 %62, i32* null)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %69

66:                                               ; preds = %59
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @git_reference_delete(i32* %67)
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %66, %65, %58
  %70 = call i32 @git_buf_dispose(i32* %5)
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %69, %45, %32, %27, %17
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i64 @git_reference_is_branch(i32*) #1

declare dso_local i32 @git_reference_is_remote(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*, i64) #1

declare dso_local i64 @git_reference_name(i32*) #1

declare dso_local i32 @git_branch_is_head(i32*) #1

declare dso_local i64 @git_branch_is_checked_out(i32*) #1

declare dso_local i64 @git_buf_join(i32*, i8 signext, i8*, i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @git_config_rename_section(i32, i32, i32*) #1

declare dso_local i32 @git_reference_owner(i32*) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_reference_delete(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
