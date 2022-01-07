; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/workdir/extr_setup.c_create_remote_tracking_branch.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/workdir/extr_setup.c_create_remote_tracking_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@GIT_REFS_REMOTES_DIR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @create_remote_tracking_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_remote_tracking_branch(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @repo, align 4
  %15 = call i8* @git_repository_path(i32 %14)
  %16 = call i32 @git_buf_puts(i32* %6, i8* %15)
  store i32 %16, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i8*, i8** @GIT_REFS_REMOTES_DIR, align 8
  %20 = call i32 @git_buf_puts(i32* %6, i8* %19)
  store i32 %20, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %2
  br label %72

23:                                               ; preds = %18
  %24 = call i8* @git_buf_cstr(i32* %6)
  %25 = call i32 @git_path_exists(i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = call i8* @git_buf_cstr(i32* %6)
  %29 = call i32 @p_mkdir(i8* %28, i32 511)
  store i32 %29, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %72

32:                                               ; preds = %27, %23
  %33 = call i8* @git_buf_cstr(i32* %6)
  %34 = call i32 @git_buf_puts(i32* %7, i8* %33)
  store i32 %34, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = call i32 @git_buf_puts(i32* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %37, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %32
  br label %72

40:                                               ; preds = %36
  %41 = call i8* @git_buf_cstr(i32* %7)
  %42 = call i32 @git_path_exists(i8* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = call i8* @git_buf_cstr(i32* %7)
  %46 = call i32 @p_mkdir(i8* %45, i32 511)
  store i32 %46, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %72

49:                                               ; preds = %44, %40
  %50 = call i8* @git_buf_cstr(i32* %7)
  %51 = call i32 @git_buf_puts(i32* %8, i8* %50)
  store i32 %51, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %67, label %53

53:                                               ; preds = %49
  %54 = call i32 @git_buf_puts(i32* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %54, i32* %5, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %53
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 @git_buf_puts(i32* %8, i8* %57)
  store i32 %58, i32* %5, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %56
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 @git_buf_puts(i32* %9, i8* %61)
  store i32 %62, i32* %5, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = call i32 @git_buf_puts(i32* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %65, i32* %5, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64, %60, %56, %53, %49
  br label %72

68:                                               ; preds = %64
  %69 = call i8* @git_buf_cstr(i32* %8)
  %70 = call i8* @git_buf_cstr(i32* %9)
  %71 = call i32 @cl_git_rewritefile(i8* %69, i8* %70)
  br label %72

72:                                               ; preds = %68, %67, %48, %39, %31, %22
  %73 = call i32 @git_buf_dispose(i32* %6)
  %74 = call i32 @git_buf_dispose(i32* %7)
  %75 = call i32 @git_buf_dispose(i32* %8)
  %76 = call i32 @git_buf_dispose(i32* %9)
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @git_buf_puts(i32*, i8*) #1

declare dso_local i8* @git_repository_path(i32) #1

declare dso_local i32 @git_path_exists(i8*) #1

declare dso_local i8* @git_buf_cstr(i32*) #1

declare dso_local i32 @p_mkdir(i8*, i32) #1

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
