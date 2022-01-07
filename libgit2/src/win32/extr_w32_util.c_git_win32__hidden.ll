; ModuleID = '/home/carl/AnghaBench/libgit2/src/win32/extr_w32_util.c_git_win32__hidden.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/win32/extr_w32_util.c_git_win32__hidden.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INVALID_FILE_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_HIDDEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_win32__hidden(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @git_win32_path_from_utf8(i32 %8, i8* %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %28

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @GetFileAttributesW(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @INVALID_FILE_ATTRIBUTES, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %28

20:                                               ; preds = %13
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @FILE_ATTRIBUTE_HIDDEN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  %27 = load i32*, i32** %4, align 8
  store i32 %26, i32* %27, align 4
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %20, %19, %12
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @git_win32_path_from_utf8(i32, i8*) #1

declare dso_local i32 @GetFileAttributesW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
