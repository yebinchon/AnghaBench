; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_repository.c_git_repository_message.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_repository.c_git_repository_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.stat = type { i32 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_MERGE_MSG_FILE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not access message file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_repository_message(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %9 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @git_buf_sanitize(i32* %10)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @GIT_MERGE_MSG_FILE, align 4
  %16 = call i64 @git_buf_joinpath(i32* %6, i32 %14, i32 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %39

19:                                               ; preds = %2
  %20 = call i32 @git_buf_cstr(i32* %6)
  %21 = call i32 @p_stat(i32 %20, %struct.stat* %7)
  store i32 %21, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @ENOENT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %27, %23
  %30 = load i32, i32* @GIT_ERROR_OS, align 4
  %31 = call i32 @git_error_set(i32 %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %36

32:                                               ; preds = %19
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @git_buf_cstr(i32* %6)
  %35 = call i32 @git_futils_readbuffer(i32* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %32, %29
  %37 = call i32 @git_buf_dispose(i32* %6)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %18
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @git_buf_sanitize(i32*) #1

declare dso_local i64 @git_buf_joinpath(i32*, i32, i32) #1

declare dso_local i32 @p_stat(i32, %struct.stat*) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git_futils_readbuffer(i32*, i32) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
