; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_branch.c_git_branch_upstream_remote.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_branch.c_git_branch_upstream_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"branch.%s.remote\00", align 1
@GIT_ERROR_REFERENCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"branch '%s' does not have an upstream remote\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_branch_upstream_remote(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i32 @git_reference__is_branch(i8* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @not_a_local_branch(i8* %14)
  store i32 %15, i32* %4, align 4
  br label %45

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @git_repository_config__weakptr(i32** %9, i32* %17)
  store i32 %18, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %45

22:                                               ; preds = %16
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @git_buf_sanitize(i32* %23)
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @retrieve_upstream_configuration(i32* %25, i32* %26, i8* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %45

32:                                               ; preds = %22
  %33 = load i32*, i32** %5, align 8
  %34 = call i64 @git_buf_len(i32* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i32, i32* @GIT_ERROR_REFERENCE, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @git_error_set(i32 %37, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %40, i32* %8, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @git_buf_clear(i32* %41)
  br label %43

43:                                               ; preds = %36, %32
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %30, %20, %13
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @git_reference__is_branch(i8*) #1

declare dso_local i32 @not_a_local_branch(i8*) #1

declare dso_local i32 @git_repository_config__weakptr(i32**, i32*) #1

declare dso_local i32 @git_buf_sanitize(i32*) #1

declare dso_local i32 @retrieve_upstream_configuration(i32*, i32*, i8*, i8*) #1

declare dso_local i64 @git_buf_len(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*) #1

declare dso_local i32 @git_buf_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
