; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_sysdir.c_get_passwd_home.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_sysdir.c_get_passwd_home.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }

@_SC_GETPW_R_SIZE_MAX = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to get passwd entry\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"no passwd entry found for user\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @get_passwd_home to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_passwd_home(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.passwd, align 4
  %6 = alloca %struct.passwd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* null, i8** %7, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @assert(i32* %10)
  %12 = load i32, i32* @_SC_GETPW_R_SIZE_MAX, align 4
  %13 = call i64 @sysconf(i32 %12)
  store i64 %13, i64* %8, align 8
  %14 = icmp eq i64 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i64 1024, i64* %8, align 8
  br label %16

16:                                               ; preds = %15, %2
  br label %17

17:                                               ; preds = %34, %16
  %18 = load i8*, i8** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i8* @git__realloc(i8* %18, i64 %19)
  store i8* %20, i8** %7, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @getpwuid_r(i32 %21, %struct.passwd* %5, i8* %22, i64 %23, %struct.passwd** %6)
  store i32 %24, i32* %9, align 4
  %25 = load i64, i64* %8, align 8
  %26 = mul nsw i64 %25, 2
  store i64 %26, i64* %8, align 8
  br label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @ERANGE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i64, i64* %8, align 8
  %33 = icmp sle i64 %32, 8192
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i1 [ false, %27 ], [ %33, %31 ]
  br i1 %35, label %17, label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @GIT_ERROR_OS, align 4
  %41 = call i32 @git_error_set(i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %57

42:                                               ; preds = %36
  %43 = load %struct.passwd*, %struct.passwd** %6, align 8
  %44 = icmp ne %struct.passwd* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @GIT_ERROR_OS, align 4
  %47 = call i32 @git_error_set(i32 %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %57

48:                                               ; preds = %42
  %49 = load i32*, i32** %3, align 8
  %50 = load %struct.passwd*, %struct.passwd** %6, align 8
  %51 = getelementptr inbounds %struct.passwd, %struct.passwd* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @git_buf_puts(i32* %49, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %57

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %55, %45, %39
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @git__free(i8* %58)
  %60 = load i32, i32* %9, align 4
  ret i32 %60
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i64 @sysconf(i32) #1

declare dso_local i8* @git__realloc(i8*, i64) #1

declare dso_local i32 @getpwuid_r(i32, %struct.passwd*, i8*, i64, %struct.passwd**) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git_buf_puts(i32*, i32) #1

declare dso_local i32 @git__free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
