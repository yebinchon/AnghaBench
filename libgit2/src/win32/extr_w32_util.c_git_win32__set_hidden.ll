; ModuleID = '/home/carl/AnghaBench/libgit2/src/win32/extr_w32_util.c_git_win32__set_hidden.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/win32/extr_w32_util.c_git_win32__set_hidden.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INVALID_FILE_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_HIDDEN = common dso_local global i32 0, align 4
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to %s hidden bit for '%s'\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"unset\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_win32__set_hidden(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @git_win32_path_from_utf8(i32 %9, i8* %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %51

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @GetFileAttributesW(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @INVALID_FILE_ATTRIBUTES, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %51

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @FILE_ATTRIBUTE_HIDDEN, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %8, align 4
  br label %33

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @FILE_ATTRIBUTE_HIDDEN, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %28, %24
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @SetFileAttributesW(i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @GIT_ERROR_OS, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @git_error_set(i32 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %47, i8* %48)
  store i32 -1, i32* %3, align 4
  br label %51

50:                                               ; preds = %37, %33
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %42, %20, %13
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @git_win32_path_from_utf8(i32, i8*) #1

declare dso_local i32 @GetFileAttributesW(i32) #1

declare dso_local i32 @SetFileAttributesW(i32, i32) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
