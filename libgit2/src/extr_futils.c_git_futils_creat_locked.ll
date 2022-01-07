; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_futils.c_git_futils_creat_locked.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_futils.c_git_futils_creat_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to create locked file '%s'\00", align 1
@GIT_ELOCKED = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_futils_creat_locked(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* @O_WRONLY, align 4
  %10 = load i32, i32* @O_CREAT, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @O_EXCL, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @O_BINARY, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @O_CLOEXEC, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @p_open(i8* %8, i32 %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %2
  %23 = load i32, i32* @errno, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @GIT_ERROR_OS, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @git_error_set(i32 %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %32 [
    i32 129, label %28
    i32 128, label %30
  ]

28:                                               ; preds = %22
  %29 = load i32, i32* @GIT_ELOCKED, align 4
  store i32 %29, i32* %3, align 4
  br label %35

30:                                               ; preds = %22
  %31 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %31, i32* %3, align 4
  br label %35

32:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %35

33:                                               ; preds = %2
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %32, %30, %28
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @p_open(i8*, i32, i32) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
