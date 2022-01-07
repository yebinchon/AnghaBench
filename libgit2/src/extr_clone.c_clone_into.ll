; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_clone.c_clone_into.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_clone.c_clone_into.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"the repository is not empty\00", align 1
@GIT_REMOTE_DOWNLOAD_TAGS_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"clone: from %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_6__*, i32*, i8*)* @clone_into to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clone_into(i32* %0, i32* %1, %struct.TYPE_6__* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %16, i32* %13, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br label %22

22:                                               ; preds = %19, %5
  %23 = phi i1 [ false, %5 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @git_repository_is_empty(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %31 = call i32 @git_error_set(i32 %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %64

32:                                               ; preds = %22
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @git_remote_dup(i32** %15, i32* %33)
  store i32 %34, i32* %12, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %6, align 4
  br label %64

38:                                               ; preds = %32
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %40 = call i32 @memcpy(%struct.TYPE_6__* %14, %struct.TYPE_6__* %39, i32 16)
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* @GIT_REMOTE_DOWNLOAD_TAGS_ALL, align 4
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = load i32*, i32** %15, align 8
  %45 = call i32 @git_remote_url(i32* %44)
  %46 = call i32 @git_buf_printf(i32* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %15, align 8
  %48 = call i32 @git_buf_cstr(i32* %13)
  %49 = call i32 @git_remote_fetch(i32* %47, i32* null, %struct.TYPE_6__* %14, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %38
  br label %59

52:                                               ; preds = %38
  %53 = load i32*, i32** %7, align 8
  %54 = load i32*, i32** %15, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 @git_buf_cstr(i32* %13)
  %58 = call i32 @checkout_branch(i32* %53, i32* %54, i32* %55, i8* %56, i32 %57)
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %52, %51
  %60 = load i32*, i32** %15, align 8
  %61 = call i32 @git_remote_free(i32* %60)
  %62 = call i32 @git_buf_dispose(i32* %13)
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %59, %36, %29
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_repository_is_empty(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git_remote_dup(i32**, i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @git_buf_printf(i32*, i8*, i32) #1

declare dso_local i32 @git_remote_url(i32*) #1

declare dso_local i32 @git_remote_fetch(i32*, i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @checkout_branch(i32*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @git_remote_free(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
