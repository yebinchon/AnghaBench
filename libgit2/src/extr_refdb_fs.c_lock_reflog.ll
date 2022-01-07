; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_lock_reflog.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_lock_reflog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_PATH_REJECT_FILESYSTEM_DEFAULTS = common dso_local global i32 0, align 4
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"invalid reference name '%s'\00", align 1
@GIT_EINVALIDSPEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"log file for reference '%s' doesn't exist\00", align 1
@GIT_REFLOG_FILE_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i8*)* @lock_reflog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock_reflog(i32* %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %8, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* @GIT_PATH_REJECT_FILESYSTEM_DEFAULTS, align 4
  %20 = call i32 @git_path_isvalid(i32* %17, i8* %18, i32 0, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @git_error_set(i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  store i32 %26, i32* %4, align 4
  br label %49

27:                                               ; preds = %3
  %28 = load i32*, i32** %8, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @retrieve_reflog_path(i32* %9, i32* %28, i8* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 -1, i32* %4, align 4
  br label %49

33:                                               ; preds = %27
  %34 = call i32 @git_buf_cstr(i32* %9)
  %35 = call i32 @git_path_isfile(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @git_error_set(i32 %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  store i32 -1, i32* %10, align 4
  br label %46

41:                                               ; preds = %33
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @git_buf_cstr(i32* %9)
  %44 = load i32, i32* @GIT_REFLOG_FILE_MODE, align 4
  %45 = call i32 @git_filebuf_open(i32* %42, i32 %43, i32 0, i32 %44)
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %41, %37
  %47 = call i32 @git_buf_dispose(i32* %9)
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %46, %32, %22
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @git_path_isvalid(i32*, i8*, i32, i32) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*) #1

declare dso_local i64 @retrieve_reflog_path(i32*, i32*, i8*) #1

declare dso_local i32 @git_path_isfile(i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_filebuf_open(i32*, i32, i32, i32) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
