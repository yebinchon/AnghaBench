; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_path.c_git_path_set_error.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_path.c_git_path_set_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"could not find '%s' to %s\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"invalid path for filesystem '%s'\00", align 1
@GIT_EINVALIDSPEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"failed %s - '%s' already exists\00", align 1
@GIT_EEXISTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"failed %s - '%s' is locked\00", align 1
@GIT_ELOCKED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"could not %s '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_path_set_error(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %32 [
    i32 129, label %9
    i32 128, label %9
    i32 131, label %15
    i32 130, label %15
    i32 132, label %20
    i32 133, label %26
  ]

9:                                                ; preds = %3, %3
  %10 = load i32, i32* @GIT_ERROR_OS, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 (i32, i8*, i8*, ...) @git_error_set(i32 %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %11, i8* %12)
  %14 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %14, i32* %4, align 4
  br label %37

15:                                               ; preds = %3, %3
  %16 = load i32, i32* @GIT_ERROR_OS, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 (i32, i8*, i8*, ...) @git_error_set(i32 %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  store i32 %19, i32* %4, align 4
  br label %37

20:                                               ; preds = %3
  %21 = load i32, i32* @GIT_ERROR_OS, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 (i32, i8*, i8*, ...) @git_error_set(i32 %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %22, i8* %23)
  %25 = load i32, i32* @GIT_EEXISTS, align 4
  store i32 %25, i32* %4, align 4
  br label %37

26:                                               ; preds = %3
  %27 = load i32, i32* @GIT_ERROR_OS, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 (i32, i8*, i8*, ...) @git_error_set(i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %28, i8* %29)
  %31 = load i32, i32* @GIT_ELOCKED, align 4
  store i32 %31, i32* %4, align 4
  br label %37

32:                                               ; preds = %3
  %33 = load i32, i32* @GIT_ERROR_OS, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 (i32, i8*, i8*, ...) @git_error_set(i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %34, i8* %35)
  store i32 -1, i32* %4, align 4
  br label %37

37:                                               ; preds = %32, %26, %20, %15, %9
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @git_error_set(i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
