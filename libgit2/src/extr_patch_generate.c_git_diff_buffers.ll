; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_patch_generate.c_git_diff_buffers.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_patch_generate.c_git_diff_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_diff_buffers(i8* %0, i64 %1, i8* %2, i8* %3, i64 %4, i8* %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i8* %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i8* %0, i8** %13, align 8
  store i64 %1, i64* %14, align 8
  store i8* %2, i8** %15, align 8
  store i8* %3, i8** %16, align 8
  store i64 %4, i64* %17, align 8
  store i8* %5, i8** %18, align 8
  store i32* %6, i32** %19, align 8
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i8* %11, i8** %24, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = load i64, i64* %14, align 8
  %29 = load i8*, i8** %15, align 8
  %30 = call i32 @GIT_DIFF_FILE_CONTENT_SRC__BUF(i8* %27, i64 %28, i8* %29)
  store i32 %30, i32* %25, align 4
  %31 = load i8*, i8** %16, align 8
  %32 = load i64, i64* %17, align 8
  %33 = load i8*, i8** %18, align 8
  %34 = call i32 @GIT_DIFF_FILE_CONTENT_SRC__BUF(i8* %31, i64 %32, i8* %33)
  store i32 %34, i32* %26, align 4
  %35 = load i32*, i32** %19, align 8
  %36 = load i32, i32* %20, align 4
  %37 = load i32, i32* %21, align 4
  %38 = load i32, i32* %22, align 4
  %39 = load i32, i32* %23, align 4
  %40 = load i8*, i8** %24, align 8
  %41 = call i32 @diff_from_sources(i32* %25, i32* %26, i32* %35, i32 %36, i32 %37, i32 %38, i32 %39, i8* %40)
  ret i32 %41
}

declare dso_local i32 @GIT_DIFF_FILE_CONTENT_SRC__BUF(i8*, i64, i8*) #1

declare dso_local i32 @diff_from_sources(i32*, i32*, i32*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
